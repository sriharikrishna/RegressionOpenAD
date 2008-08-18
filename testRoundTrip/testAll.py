#!/usr/bin/env python

import os
import sys
import shutil
import re

sepLength=80
makeCmd="make"

class NumericalError(Exception):
    """Exception thrown when the numerical comparison discovers error that is beyond the given threshold"""

class MakeError(Exception):
    """Exception thrown when the a make command fails"""

class CommandLineError(Exception):
    """Exception thrown when the script is invoked with bad command line arguments"""

class ConfigError(Exception):
    """Exception thrown when there is a problem with the environment configuration"""

def overridableLink(exampleFile,defaultFile,targetFileName):
    if (os.path.exists(exampleFile)):
	sys.stdout.write("ln -sf %s %s\n" % (exampleFile,targetFileName))
	if (os.system("ln -sf %s %s" % (exampleFile,targetFileName))):
	    raise ConfigError, "\"ln -sf %s %s\" not successful" % (exampleFile,targetFileName)
    else:
	sys.stdout.write("ln -sf %s %s\n" % (defaultFile,targetFileName))
	if (os.system("ln -sf %s %s" % (defaultFile,targetFileName))):
	    raise ConfigError, "\"ln -sf %s %s\" not successful" % (defaultFile,targetFileName)
    if not (os.path.exists(targetFileName)):
	raise ConfigError, "could not create %s" % targetFileName


def fileCompare(fcexampleDir,fcfileName,fcmode,ignoreString):
    referenceFile = fcmode + fcfileName
    if not (os.path.exists("%s/refOutput/%s" % (fcexampleDir,referenceFile))):
	sys.stdout.write("%s/refOutput/%s not available" % (fcexampleDir,referenceFile))
	if not (os.environ.has_key('BATCHMODE')):
	    if (raw_input(", copy and hg add it? (y)/n: ") == "n"):
		sys.stdout.write("cannot verify %s\n" % fcfileName)
		return 0
	    else:
		shutil.copy(fcfileName,"%s/refOutput/%s" % (fcexampleDir,referenceFile))
		if (os.system("hg add %s/refOutput/%s" % (fcexampleDir,referenceFile))):
		    raise RuntimeError, "\"hg add %s/refOutput/%s\" not successful" % (fcexampleDir,referenceFile)
	else: # BATCHMODE
	    sys.stdout.write("\n")
    hasDiff = os.system("diff -I '%s' %s %s/refOutput/%s" % (ignoreString,fcfileName,fcexampleDir,referenceFile))
    if (hasDiff == 512):
	raise RuntimeError, "command \"diff -I \"%s\" %s %s/refOutput/%s\" not successful" % (ignoreString,fcfileName,fcexampleDir,referenceFile)
    elif (hasDiff == 256):
	sys.stdout.write("Transformation -- diff %s %s/refOutput/%s\n" % (fcfileName,fcexampleDir,referenceFile))
	if not (os.environ.has_key('BATCHMODE')):
	    if (raw_input("accept/copy new %s to %s/refOutput/%s? (y)/n: " % (fcfileName,fcexampleDir,referenceFile)) == "n"):
		sys.stdout.write("skipping change\n")
	    else:
		shutil.copy(fcfileName,fcexampleDir + "/refOutput/" + referenceFile)
    sys.stdout.flush()


def printSep(sepChar,msg,sepLength):
    sys.stdout.write(msg)
    i = 0
    while (i < sepLength - len(msg)):
	sys.stdout.write(sepChar)
	i = i + 1
    sys.stdout.write("\n")
    sys.stdout.flush()


def populateExamplesList(args):
    allExamples = os.listdir("examples")
    allExamples.sort(key=str.lower) # default sort is case insensitive, this one isn't
    if ("CVS" in allExamples):
	allExamples.remove("CVS")
    rangeStart = 1
    rangeEnd = len(allExamples)
    examples = []
    exampleRegexs = []
    if (len(args) == 0): # no arguments
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
			sys.stdout.write("\"all\" must be followed by zero, one, or two integers which specify the start and end range, e.g. 'all [%i | %i %i]'\n")
			sys.stdout.flush()
			done = False
			rangeStart = 1
			rangeEnd = len(allExamples)
		    if (rangeStart < 1 or rangeEnd > len(allExamples)):
			sys.stdout.write("invalid range (%i-%i)\n" % (rangeStart,rangeEnd))
			sys.stdout.flush()
			done = False
			rangeStart = 1
			rangeEnd = len(allExamples)
		    examples = allExamples
		else:						# one or more arguments, and the first one isn't "all"
		    exampleRegexs = examplesInput
    else: # at least one argument
	if (args[0] == "all"): # the first argument was all
	    examples = allExamples
	    try:
		if (len(args) >= 2): # A range START is given
		    rangeStart = int(args[1])
		if (len(args) >= 3): # A range END is also given
		    rangeEnd = int(args[2])
	    except ValueError:
		raise CommandLineError, "\"all\" must be followed by zero, one, or two integers which specify the start and end range, e.g. 'all [%i | %i %i]'"
	else: # each argument is treated as a regex
	    exampleRegexs = args

    # user running examples specified by one or more regular expressions
    if (len(examples) == 0):
	for regex in exampleRegexs:
	    for ex in allExamples:
		if (re.search(regex,ex,re.IGNORECASE)):
		    examples.append(ex)
	if (len(examples) == 0):
	    raise RuntimeError, "No examples match the given regular expressions"
	exampleSet = set(examples)
	examples = list(exampleSet)
	examples.sort(key=str.lower)
	rangeStart = 1

	rangeEnd = len(examples)
	printSep("=","",sepLength)
	sys.stdout.write("The following examples match the given regular expression(s):\n")
	i = 0
	for ex in examples:
	    i = i + 1
	    sys.stdout.write("[%i-%s]  " % (i,ex))
	sys.stdout.write("\n")
	printSep("=","",sepLength)
    else:
	printSep("=","",sepLength)
	sys.stdout.write("Running all examples with a range of (%i-%i):\n" % (rangeStart,rangeEnd))
	i = 0
        for ex in examples:
            i = i + 1
	    if (i >= rangeStart and i <= rangeEnd):
		sys.stdout.write("[%i-%s]  " % (i,ex))
	sys.stdout.write("\n")
	printSep("=","",sepLength)
    return (examples,rangeStart,rangeEnd)


def determineModes():
    askAll = True
    if(os.path.exists(".lastRun")):
	lastRunFile = open(".lastRun","r")
	(scalarOrVectorMode,majorMode,ctrMode) = str(lastRunFile.readline()).split(" ")
	ctrMode=ctrMode.strip()
	lastRunFile.close()
	# decide whether to use these settings from the last run
	if not (os.environ.has_key('BATCHMODE')):
	    if (raw_input("reuse last settings (%s %s %s)? (y)/n: " % (scalarOrVectorMode,majorMode,ctrMode)) == "n"):
		sys.stdout.flush()
		os.system(makeCmd + " clean")
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
	    sys.stdout.write("pick one of the following xaifBooster algorithms:\n")
	    xaifBoosterAlgs = os.listdir("%s/algorithms" % os.environ['XAIFBOOSTER_BASE'])
	    xaifBoosterAlgs.sort()
	    xaifBoosterAlgPaths = []
	    i = 0
	    defaultAlgNum = -1
	    for alg in xaifBoosterAlgs:
		algPath = "%s/algorithms/%s/test/t" % (os.environ['XAIFBOOSTER_BASE'],alg)
		if (os.path.exists(algPath)): # filter out those that have no t executable
		    sys.stdout.write("%i: %s\n" % (i,alg))
		    sys.stdout.flush()
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
	sys.stdout.write("xaifBoosterAlgPath is %s\n" % xaifBoosterAlgPath)
	sys.stdout.flush()


def runTest(scalarOrVector,majorMode,ctrMode,exName,exNum,totalNum):
    exDir = "examples/" + exName
    if not (os.path.exists(exDir)):
	raise ConfigError, "examples/%s does not exist" % exName
    failReasonFile = exDir + "/FAILREASON_" + majorMode + "_" + ctrMode
    if (os.path.exists(failReasonFile)):
	if (os.environ.has_key('BATCHMODE')):
	    return 0
	else:
	    printSep("*","** example %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
	    os.system("cat " + failReasonFile)
	    printSep("*","",sepLength)
	    if (raw_input("run it anyway? y/(n): ") != "y"):
		return 0
    # clean up
    sys.stdout.flush()
    os.environ["TARGET"] = "head"
    if (os.system(makeCmd + " testAllclean")):
	raise MakeError, "Error while executing \"" + makeCmd + " testAllclean\""
    printSep("*","** running %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
    # get head.f, params.conf, modules, templates, etc.
    if (os.system("ln -s %s/head.f ." % exDir) or not os.path.exists("head.f")):
	raise ConfigError, "\"ln -s %s/head.f .\" not successful" % exDir
    if (os.system("ln -s %s/params.conf ." % exDir) or not os.path.exists("params.conf")):
	raise ConfigError, "\"ln -s %s/params.conf .\" not successful" % exDir
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
    if (os.system(makeCmd)):
	raise MakeError, makeCmd
    # compile all the transformed bits
    driverMode = majorMode
    if (majorMode == "adm"):
	driverMode = driverMode + "_" + ctrMode
    overridableLink(exDir + "/driver_" + scalarOrVector + "_" + driverMode + ".f90",os.environ["OPENADROOT"] + "/runTimeSupport/" + scalarOrVector + "/driver_" + driverMode + ".f90","driver.f90")
    if (os.system(makeCmd + " driver")):
	raise MakeError, makeCmd + " driver"
    # compare all the transformation results
    fileCompare(exDir,"head_sf.xaif","","file translated from")
    for tfile in ["head_sf.xb.x2w.w2f.f","head_sf.xb.x2w.w2f.pp.f","head.xb.x2w.w2f.pp.f","head_sf.xb.xaif"]:
	fileCompare(exDir,tfile,majorMode + ctrMode,"file translated from")
    # execute the driver
    sys.stdout.flush()
    if(os.system(makeCmd + " run")):
	raise MakeError, makeCmd + " run"
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
    printSep("*","",sepLength)


def main():
    try:
	if not (os.environ.has_key('OPENADROOT')):
	    raise ConfigError, "environment variable OPENADROOT not defined"
	if not (os.environ.has_key('XAIFBOOSTER_BASE')):
	    raise ConfigError, "environment variable XAIFBOOSTER_BASE not defined"

	(examples,rangeStart,rangeEnd) = populateExamplesList(sys.argv[1:])
	(scalarOrVectorMode,majorMode,ctrMode) = determineModes()
	link_xaifBooster(majorMode)

	# Run the examples
	j = rangeStart-1
	while (j < rangeEnd):
	    try:
		runTest(scalarOrVectorMode,majorMode,ctrMode,examples[j],j+1,len(examples))
	    except ConfigError, errtxt:
		print "ERROR (environment configuration) in test %i of %i (%s): %s" % (j+1,len(examples),examples[j],errtxt)
		if not (os.environ.has_key('BATCHMODE')):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
		else:
		    return -1
	    except MakeError, errtxt:
		print "ERROR in test %i of %i (%s) while executing \"%s\"." % (j+1,len(examples),examples[j],errtxt)
		if not (os.environ.has_key('BATCHMODE')):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
		else:
		    return -1
	    except NumericalError:
		print "NUMERICAL ERROR in test %i of %i (%s)." % (j+1,len(examples),examples[j])
		if not (os.environ.has_key('BATCHMODE')):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
	    except RuntimeError, errtxt:
		print "ERROR in test %i of %i (%s): %s." % (j+1,len(examples),examples[j],errtxt)
		if not (os.environ.has_key('BATCHMODE')):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
		else:
			return -1
	    j = j + 1
    except ConfigError, errtxt:
	print "ERROR (environment configuration):",errtxt
	return -1
    except CommandLineError, errtxt:
	print "ERROR (command line arguments):",errtxt
	return -1
    except RuntimeError, errtxt:
	print 'caught exception: ',errtxt
	return -1
    print "ALL OK (or acknowledged)"
    return 0

if __name__ == "__main__":
    sys.exit(main())

