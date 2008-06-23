#!/usr/bin/env python

import os
import sys
import shutil
import re

class NumericalError(Exception):
    """Exception thrown when the numerical comparison discovers error that is beyond the given threshold"""

class MakeError(Exception):
    """Exception thrown when the a make command fails"""

def overridableLink(exampleFile,defaultFile,targetFileName):
    if (os.path.exists(exampleFile)):
	sys.stdout.write("ln -sf %s %s\n" % (exampleFile,targetFileName))
	if (os.system("ln -sf %s %s" % (exampleFile,targetFileName))):
	    sys.stderr.write("ERROR in: ln -sf %s %s\n" % (exampleFile,targetFileName))
	    return -1
    else:
	sys.stdout.write("ln -sf %s %s\n" % (defaultFile,targetFileName))
	if (os.system("ln -sf %s %s" % (defaultFile,targetFileName))):
	    sys.stderr.write("ERROR in : ln -sf %s %s\n" % (defaultFile,targetFileName))
	    return -1
    if not (os.path.exists(targetFileName)):
	sys.stderr.write("ERROR: could not create %s\n" % targetFileName)


def fileCompare(fcexampleDir,fcfileName,fcmode,ignoreString):
    referenceFile = fcmode + fcfileName
    if not (os.environ.has_key('BATCHMODE')):
	if not (os.path.exists("%s/refOutput/%s" % (fcexampleDir,referenceFile))):
	    answer = raw_input("%s/refOutput/%s not available, copy and hg add it? (y)/n: " % (fcexampleDir,referenceFile))
	    if (answer == "n"):
		sys.stdout.write("cannot verify %s\n" % fcfileName)
		return 0
	    else:
		shutil.copy(fcfileName,"%s/refOutput/%s" % (fcexampleDir,referenceFile))
		if (os.system("hg add %s/refOutput/%s" % (fcexampleDir,referenceFile))):
		    sys.stderr.write("ERROR in: hg add " + fcexampleDir + "/refOutput/" + referenceFile + "\n")
		    return -1
    hasDiff = os.system("diff -I '%s' %s %s/refOutput/%s" % (ignoreString,fcfileName,fcexampleDir,referenceFile))
    if (hasDiff == 512):
	sys.stderr.write("ERROR in: diff -I \"%s\" " + fcfileName + " " + fcexampleDir + "/refOutput/%s\n" % (ignoreString,referenceFile))
	return -1
    elif (hasDiff == 256):
	sys.stdout.write("Transformation -- diff " + fcfileName + " " + fcexampleDir + "/refOutput/%s\n" % referenceFile)
	if not (os.environ.has_key('BATCHMODE')):
	    answer = raw_input("accept/copy new " + fcfileName + " to " + fcexampleDir + "/refOutput/" + referenceFile + " ? (y)/n: ")
	    if (answer == "n"):
		sys.stdout.write("skipping change\n")
	    else:
		shutil.copy(fcfileName,fcexampleDir + "/refOutput/" + referenceFile)


def printSep(msg,sepLength):
    sys.stdout.write(msg)
    i = 0
    while (i < sepLength - len(msg)):
	sys.stdout.write("*")
	i = i + 1
    sys.stdout.write("\n")


def determineModes():
    askAll = True
    if(os.path.exists(".lastRun")):
	lastRunFile = open(".lastRun","r")
	(scalarOrVectorMode,majorMode,ctrMode) = str(lastRunFile.readline()).split(" ")
	lastRunFile.close()
	# decide whether to use these settings from the last run
	if not (os.environ.has_key('BATCHMODE')):
	    if (raw_input("reuse last settings (%s %s %s)? (y)/n: " % (scalarOrVectorMode,majorMode,ctrMode)) == "n"):
		os.system("gmake clean")
	    else:
		askAll = False
    if (askAll and not (os.environ.has_key('BATCHMODE'))):
	scalarOrVectorMode = "scalar"
	majorMode = "tlm"
	ctrMode = "none"
	# determine scalar or vector mode
	if (raw_input("use scalar mode or vector mode? (s)/v: ") == "v"):
	    scalarOrVectorMode = "vector"
	# determine major mode
	majorModeInput = raw_input("use forward/reverse/trace major mode? (f)/r/t: ")
	if (majorModeInput == "t"):	# TRACING MODE
	    majorMode = "trace"
	elif (majorModeInput == "r"):	# REVERSE MODE
	    majorMode = "adm"
	    ctrMode = "split"
	    # determine ctr mode
	    if (raw_input("use split or joint call tree reversal? (s)/j: ") == "j"):
		ctrMode = "joint"
	# save settings in .lastRun    
        lastRunFile = open(".lastRun","w")
	lastRunFile.write("%s %s %s" % (scalarOrVectorMode,majorMode,ctrMode))
	lastRunFile.close()
    return (scalarOrVectorMode,majorMode,ctrMode)


def link_xaifBooster(majorMode):
    # link an xaifBooster executable
    if not (os.path.exists("xaifBooster")):
	foundValidAlg = False
	while not (foundValidAlg):
	    print "pick one of the following xaifBooster algorithms:"
	    xaifBoosterAlgs = os.listdir("%s/algorithms" % os.environ['XAIFBOOSTER_BASE'])
	    xaifBoosterAlgs.sort()
	    xaifBoosterAlgPaths = []
	    i = 0
	    defaultAlgNum = -1
	    for alg in xaifBoosterAlgs:
		algPath = "%s/algorithms/%s/test/t" % (os.environ['XAIFBOOSTER_BASE'],alg)
		if (os.path.exists(algPath)): # filter out those that have no t executable
		    print "%i: %s" % (i,alg)
		    xaifBoosterAlgPaths.append(algPath)
		    if ((majorMode=="tlm" and alg=="BasicBlockPreaccumulation") or (majorMode=="adm" and alg=="BasicBlockPreaccumulationReverse") or (majorMode=="trace" and alg=="TraceDiff")):
			defaultAlgNum = i
		    i = i + 1
            if not (os.environ.has_key('BATCHMODE')):
                try:
                    algChoice = int(raw_input("pick a number (%s): " % defaultAlgNum))
                    if (algChoice < 0 or algChoice >= i):
                        print "Error: %i is not a valid selection.  Try, try, try again..." % algChoice
                    else:
                        foundValidAlg = True
                except ValueError:
                    algChoice = defaultAlgNum
                    foundValidAlg = True
            else:
                algChoice= defaultAlgNum 
                foundValidAlg = True
	xaifBoosterAlgPath = xaifBoosterAlgPaths[algChoice]
	os.system("ln -sf %s ./xaifBooster" % xaifBoosterAlgPath)
	print "xaifBoosterAlgPath is %s" % xaifBoosterAlgPath


def runTest(scalarOrVector,majorMode,ctrMode,exName,exNum,totalNum):
    sepLength = 200
    exDir = "examples/" + exName
    if not (os.path.exists(exDir)):
	sys.stderr.write("ERROR: examples/" + exName + "does not exist\n")
	return -1
    failReasonFile = exDir + "/FAILREASON_" + majorMode + "_" + ctrMode
    if (os.path.exists(failReasonFile)):
	if (os.environ.has_key('BATCHMODE')):
	    return 0
	else:
	    printSep("** example %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
	    os.system("cat " + failReasonFile)
	    printSep("",sepLength)
	    if (raw_input("run it anyway? y/(n): ") != "y"):
		return 0
    # clean up
    os.environ["TARGET"] = "head"
    if (os.system("gmake testAllclean")):
	raise MakeError, "Error while executing \"gmake testAllclean\""
    printSep("** running %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
    # get head.f, params.conf, modules, templates, etc.
    if (os.system("ln -s %s/head.f ." % exDir) or not os.path.exists("head.f")):
	sys.stderr.write("ERROR in: ln -s %s/head.f .\n" % exDir)
	return -1
    if (os.system("ln -s %s/params.conf ." % exDir) or not os.path.exists("params.conf")):
	sys.stderr.write("ERROR in: ln -s %s/params.conf .\n" % exDir)
	return -1
    overridableLink(exDir + "/all_globals_mod.f",os.environ["OPENADROOT"] + "/runTimeSupport/default/all_globals_mod.f","all_globals_mod.f")
    overridableLink(exDir + "/all_globals_cp_mod.f90",os.environ["OPENADROOT"] + "/runTimeSupport/default/all_globals_cp_mod.f90","all_globals_cp_mod.f90")
    if (majorMode == "adm"):
	overridableLink(exDir + "/ad_template." + ctrMode + ".f",os.environ["OPENADROOT"] + "/runTimeSupport/simple/ad_template." + ctrMode + ".f","ad_template.f")
    elif (majorMode == "trace"):
	overridableLink(exDir + "/ad_template_trace.f",os.environ["OPENADROOT"] + "/runTimeSupport/simple/ad_template_trace.f","ad_template.f")
    # transform head_sf
    os.environ["SCALAR_OR_VECTOR"] = scalarOrVector
    os.environ["MAJOR_MODE"] = majorMode
    os.environ["MINOR_MODE"] = ctrMode
    if (os.system("gmake")):
	sys.stderr.write("ERROR in: gmake\n")
	return -1
    # compile all the transformed bits
    driverMode = majorMode
    if (majorMode == "adm"):
	driverMode = driverMode + "_" + ctrMode
    overridableLink(exDir + "/driver_" + scalarOrVector + "_" + driverMode + ".f90",os.environ["OPENADROOT"] + "/runTimeSupport/" + scalarOrVector + "/driver_" + driverMode + ".f90","driver.f90")
    if (os.system("gmake driver")):
	raise MakeError, "Error while executing \"gmake driver\""
    # compare all the transformation results
    fileCompare(exDir,"head_sf.xaif","","file translated from")
    for tfile in ["head_sf.xb.x2w.w2f.f","head_sf.xb.x2w.w2f.pp.f","head.xb.x2w.w2f.pp.f","head_sf.xb.xaif"]:
	fileCompare(exDir,tfile,majorMode + ctrMode,"file translated from")
    # execute the driver
    if(os.system("gmake run")):
	sys.stderr.write("ERROR in: gmake run\n")
	return -1
    # do numerical comparison
    if (majorMode == "adm" or majorMode == "tlm"):
	numFiles="tmpOutput/dd.out " + exDir + "/refOutput/dd.out tmpOutput/ad.out " + exDir + "/refOutput/ad.out"
    if not (os.environ.has_key('BATCHMODE')):
	testFlags = '-g -v'
    else:
	testFlags = '-b'
    sys.stdout.write("./numericalComparison.py %s -n %s %s\n" % (testFlags,exName,numFiles))
    if (os.system("./numericalComparison.py %s -n %s %s" % (testFlags,exName,numFiles))):
	raise NumericalError


def main():
    if not (os.environ.has_key('OPENADROOT')):
	sys.stderr.write("ERROR: environment variable OPENADROOT not defined\n")
    if not (os.environ.has_key('XAIFBOOSTER_BASE')):
	sys.stderr.write("ERROR: environment variable XAIFBOOSTER_BASE not defined\n")

    (scalarOrVectorMode,majorMode,ctrMode) = determineModes()
    link_xaifBooster(majorMode)

    # populate list of examples to run
    allExamples = os.listdir("examples")
    allExamples.sort(key=str.lower) # default sort is case insensitive, this one isn't
    if ("CVS" in allExamples):
	allExamples.remove("CVS")
    rangeStart = 1
    rangeEnd = len(allExamples)
    examples = []
    exampleRegexs = []
    if (len(sys.argv) == 1): # no arguments
	if (os.environ.has_key('BATCHMODE')):
	    examples = allExamples
	else:
	    done = False
	    while not (done):
		done = True
		sys.stdout.write("pick from the following examples:\n")
		sys.stdout.flush()
		os.system("ls examples")
		examplesInput = raw_input("enter one or more regular expressions here or '(all [%i | %i %i])': ").split()
		if (len(examplesInput) == 0):			# no arguments
		    examples = allExamples
		elif (examplesInput[0] == "all"):		# the first argument is "all"
		    try:
			if (len(examplesInput) >= 2):
			    rangeStart = int(examplesInput[1])
			if (len(examplesInput) >= 3):
			    rangeEnd = int(examplesInput[2])
		    except ValueError:
			print "\"all\" must be followed by either one or two integers which specify the start and end range. e.g. 'all [%i | %i %i]'"
			done = False
			rangeStart = 1
			rangeEnd = len(allExamples)
		    if (rangeStart < 1 or rangeEnd > len(allExamples)):
			print "invalid range (%i-%i)" % (rangeStart,rangeEnd)
			done = False
			rangeStart = 1
			rangeEnd = len(allExamples)
		    examples = allExamples
		else:						# one or more arguments, and the first one isn't "all"
		    exampleRegexs = examplesInput
    else: # at least one argument
	if (sys.argv[1] == "all"): # the first argument was all
	    examples = allExamples
	    try:
		if (len(sys.argv) >= 3): # A range START is given
		    rangeStart = int(sys.argv[2])
		if (len(sys.argv) >= 4): # A range END is also given
		    rangeEnd = int(sys.argv[3])
	    except ValueError:
		print "\"all\" must be followed by either one or two integers which specify the start and end range. e.g. 'all [%i | %i %i]'"
		return -1
	else: # each argument is treated as a regex
	    exampleRegexs = sys.argv[1:]

    # user running examples specified by one or more regular expressions
    if (len(examples) == 0):
	for regex in exampleRegexs:
	    for ex in allExamples:
		if (re.search(regex,ex,re.IGNORECASE)):
		    examples.append(ex)
	if (len(examples) == 0):
	    print "No examples match the given regular expressions: ", exampleRegexs
	    return -1
	exampleSet = set(examples)
	examples = list(exampleSet)
	examples.sort(key=str.lower)
	rangeStart = 1

	rangeEnd = len(examples)
	print "================================================================================================================================================="
	print "The following examples match the given regular expression(s):"
	i = 0
	for ex in examples:
	    i = i + 1
	    sys.stdout.write("[%i-%s]  " % (i,ex))
	sys.stdout.write("\n")
	print "================================================================================================================================================="
    else:
	print "================================================================================================================================================="
	print "Running all examples with a range of (%i-%i):" % (rangeStart,rangeEnd)
	i = 0
        for ex in examples:
            i = i + 1
	    if (i >= rangeStart and i <= rangeEnd):
		sys.stdout.write("[%i-%s]  " % (i,ex))
	sys.stdout.write("\n")
	print "================================================================================================================================================="
	
    try:
	j = rangeStart-1
	while (j < rangeEnd):
	    try:
		runTest(scalarOrVectorMode,majorMode,ctrMode,examples[j],j+1,len(examples))
	    except NumericalError:
		if not (os.environ.has_key('BATCHMODE')):
		    if (raw_input("Test %i of %i (%s) failed with NUMERICAL ERROR.  Do you want to continue? (y)/n: " % (j+1,len(examples),examples[j])) == "n"):
			return 0
	    j = j + 1
    except MakeError, e:
	print e
	return -1
    except RuntimeError, e:
        print 'caught exception: ',e
        return -1
    return 0

if __name__ == "__main__":
    sys.exit(main())

