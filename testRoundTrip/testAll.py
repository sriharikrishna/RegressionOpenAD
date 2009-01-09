#!/usr/bin/env python

import os
import sys
import shutil
import re

sepLength=80
makeCmd="make"
globalBatchMode=False
globalIgnoreFailingCases=False
globalOfferAcceptAsDefault=False
globalAcceptAll=False
globalMakeSVG=False
globalVerbose=False

class MultiColumnOutput:

    ourColumnSeparator=2
    
    @staticmethod
    def __getTermWidth():
        import termios, fcntl, struct, sys
        s = struct.pack("HHHH", 0, 0, 0, 0)
        fd_stdout = sys.stdout.fileno()
        cols=80
	try:
          x = fcntl.ioctl(fd_stdout, termios.TIOCGWINSZ, s)
          (rows,cols,xPix,yPix)=struct.unpack("HHHH", x)
	except IOError:
	  if globalVerbose:
	    sys.stderr.write("Error: cannot detect terminal width\n")
	    sys.stderr.flush()
        return cols

    class ColumnInfo:

        ourMinimalWidth=2
        
        def __init__(self):
            self.width=self.ourMinimalWidth # minimal width

    def __init__(self,stringList) :
        self.stringList=stringList
        self.totalWidth=self.__getTermWidth()

    def __computeColumnInfos(self):
        goodColumnInfos=[]
        maxCols=self.totalWidth/self.ColumnInfo.ourMinimalWidth
        listLen=len(self.stringList)
        if listLen==0:
            return goodColumnInfos
        numCols=1 # 1 column to start with
        while (True) :
            if numCols>listLen:
                break
            columnInfos=[]
            colLength=listLen/numCols
            if (listLen%numCols>0):
                colLength+=1
            for i in xrange(0,numCols):
                columnInfos.append(self.ColumnInfo())
            for i in xrange(0,listLen):
                # determine the column:
                colForThis=i/colLength
                if columnInfos[colForThis].width<len(self.stringList[i])+self.ourColumnSeparator :
                    columnInfos[colForThis].width=len(self.stringList[i])+self.ourColumnSeparator
            totalColumnWidth=sum([ c.width for c in columnInfos ])
            if totalColumnWidth>self.totalWidth and numCols>1: 
              break
            goodColumnInfos=columnInfos[:]
            numCols+=1
        return goodColumnInfos
    
    def printIt(self):
        columnInfos=self.__computeColumnInfos()
        listLen=len(self.stringList)
        numCols=len(columnInfos)
        numRows=listLen/numCols
        if (listLen%numCols>0) :
            numRows+=1
        thisRow=0
        while thisRow<numRows:
            listPos=thisRow
            for columnInfo in columnInfos:
                if listPos>=listLen:
                    break
                outString=self.stringList[listPos]
                outString+=(' ' * (columnInfo.width - len(self.stringList[listPos])))
                sys.stdout.write(outString)
                listPos+=numRows
            sys.stdout.write('\n')
            thisRow+=1
        sys.stdout.flush()

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
	if not (globalBatchMode):
            answer=""
            if globalAcceptAll:
                answer="y"
            else:    
                if (globalOfferAcceptAsDefault) :
                    answer=raw_input(", copy and hg add it? (y)/n: ")
                    if (answer != "n"):
                        answer="y"
                else:
                    answer=raw_input(", copy and hg add it? y/(n): ")
                    if (answer != "y"):
                        answer="n"
            if (answer == "n"):
		sys.stdout.write("cannot verify %s\n" % fcfileName)
                sys.stdout.flush()
                return 0
	    else:
		shutil.copy(fcfileName,"%s/refOutput/%s" % (fcexampleDir,referenceFile))
		if (os.system("hg add %s/refOutput/%s" % (fcexampleDir,referenceFile))):
		    raise RuntimeError, "\"hg add %s/refOutput/%s\" not successful" % (fcexampleDir,referenceFile)
	else: # BATCHMODE
	    sys.stdout.write("\n")
            sys.stdout.flush()
            return 0
    hasDiff = os.system("diff -I '%s' %s %s/refOutput/%s" % (ignoreString,fcfileName,fcexampleDir,referenceFile))
    if (hasDiff == 512):
	raise RuntimeError, "command \"diff -I \"%s\" %s %s/refOutput/%s\" not successful" % (ignoreString,fcfileName,fcexampleDir,referenceFile)
    elif (hasDiff == 256):
	sys.stdout.write("Transformation -- diff %s %s/refOutput/%s\n" % (fcfileName,fcexampleDir,referenceFile))
	if not (globalBatchMode):
            answer=""
            if globalAcceptAll:
                answer="y"
            else:    
                if (globalOfferAcceptAsDefault) :
                    answer=raw_input("accept/copy new %s to %s/refOutput/%s? (y)/n: " % (fcfileName,fcexampleDir,referenceFile))
                    if (answer != "n"):
                        answer="y"
                else:
                    answer=raw_input("accept/copy new %s to %s/refOutput/%s? y/(n): " % (fcfileName,fcexampleDir,referenceFile))
                    if (answer != "y"):
                        answer="n"
            if (answer == "n"):
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

def numberedList(list):
    numberedList=[]
    digits=len(str(len(list)+1))
    format='%'+str(digits)+'d:%s'
    for (c,e) in enumerate(list):
        numberedName=format%(c+1,e)
        numberedList.append(numberedName)
    return numberedList

def populateExamplesList(args):
    allExamples = os.listdir("examples")
    allExamples.sort(key=str.lower) # default sort is case sensitive, this one isn't
    rangeStart = 1
    rangeEnd = len(allExamples)
    examples = []
    exampleRegexs = []
    if (len(args) == 0): # no arguments
	if (globalBatchMode):
	    examples = allExamples
	else:
	    done = False
	    while not (done):
		done = True
		sys.stdout.write("pick from the following examples:\n")
		sys.stdout.flush()
                examples = allExamples
                MultiColumnOutput(numberedList(examples)).printIt()    
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
        MultiColumnOutput(numberedList(examples)).printIt()    
	printSep("=","",sepLength)
    else:
	printSep("=","",sepLength)
	sys.stdout.write("Running all examples with a range of (%i-%i):\n" % (rangeStart,rangeEnd))
        MultiColumnOutput(numberedList(examples)[rangeStart-1:rangeEnd]).printIt()    
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
	if not (globalBatchMode):
	    if (raw_input("reuse last settings (%s %s %s)? (y)/n: " % (scalarOrVectorMode,majorMode,ctrMode)) == "n"):
		sys.stdout.flush()
		os.system(makeCmd + " clean")
	    else:
		askAll = False
    if (askAll and not (globalBatchMode)):
	scalarOrVectorMode = "scalar"
	majorMode = "tlm"
	ctrMode = "none"
	# determine scalar or vector mode
	if (raw_input("use scalar mode or vector mode? (s)/v: ") == "v"):
	    scalarOrVectorMode = "vector"
	# determine major mode
	majorModeInput = raw_input("use forward/reverse/trace/divDiff major mode? (f)/r/t/d: ")
	if (majorModeInput == "t"):	# tracing mode
	    majorMode = "trace"
	elif (majorModeInput == "d"):	# divided difference on original mode
	    majorMode = "dd"
	elif (majorModeInput == "r"):	# reverse mode
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
    if (majorMode=='dd'):
        return
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
            if not (globalBatchMode):
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
	if (globalBatchMode or globalIgnoreFailingCases):
            printSep("*","** skipping %i of %i (%s) -- fails for %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
	    return 0
	else:
	    printSep("*","** example %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
	    os.system("cat " + failReasonFile)
	    printSep("*","",sepLength)
	    if (raw_input("run it anyway? y/(n): ") != "y"):
		return 0
    # clean up
    sys.stdout.flush()
    if (os.system(makeCmd + " minClean")):
	raise MakeError, "Error while executing \"" + makeCmd + " minClean\""
    printSep("*","** running %i of %i (%s) -- %s %s %s " % (exNum,totalNum,exName,scalarOrVector,majorMode,ctrMode),sepLength)
    # get head.f, params.conf, modules, templates, etc.
    if (os.system("ln -s %s/head.f ." % exDir) or not os.path.exists("head.f")):
	raise ConfigError, "\"ln -s %s/head.f .\" not successful" % exDir
    if (os.system("ln -s %s/params.conf ." % exDir) or not os.path.exists("params.conf")):
	raise ConfigError, "\"ln -s %s/params.conf .\" not successful" % exDir
    overridableLink(exDir + "/all_globals_mod.f","genericFiles/default/all_globals_mod.f","all_globals_mod.f")
    overridableLink(exDir + "/all_globals_cp_mod.f90","genericFiles/default/all_globals_cp_mod.f90","all_globals_cp_mod.f90")
    if (majorMode == "adm"):
	overridableLink(exDir + "/ad_template." + ctrMode + ".f",os.environ["OPENADROOT"] + "/runTimeSupport/simple/ad_template." + ctrMode + ".f","ad_template.f")
    elif (majorMode == "trace"):
	overridableLink(exDir + "/ad_template.trace.f",os.environ["OPENADROOT"] + "/runTimeSupport/simple/ad_template.trace.f","ad_template.f")
    # transform head_sf
    os.environ["SCALAR_OR_VECTOR"] = scalarOrVector
    os.environ["MAJOR_MODE"] = majorMode
    os.environ["MINOR_MODE"] = ctrMode
    if globalVerbose:
        os.environ["VERBOSE"]='true'
        sys.stdout.write("environment settings:\n")
        sys.stdout.write("  SCALAR_OR_VECTOR="+scalarOrVector+"\n")
        sys.stdout.write("  MAJOR_MODE="+majorMode+"\n")
        sys.stdout.write("  MINOR_MODE="+ctrMode+"\n")
    if (majorMode!='dd'): 
        if (os.system(makeCmd+" head.pre.xb.x2w.w2f.pp.f")):
            raise MakeError, makeCmd+" head.pre.xb.x2w.w2f.pp.f"
    # compile all the transformed bits
    driverMode = majorMode
    if (majorMode == "adm"):
	driverMode = driverMode + "_" + ctrMode
    overridableLink(exDir + "/driver_" + scalarOrVector + "_" + driverMode + ".f90","genericFiles/" + scalarOrVector + "/driver_" + driverMode + ".f90","driver.f90")
    if (os.system(makeCmd + " driver")):
	raise MakeError, makeCmd + " driver"
    if (majorMode!='dd'): 
        # compare all the transformation results
	for tfile in ['head_sf.pre.f','head_sf.pre.xaif']:
            fileCompare(exDir,tfile,majorMode,"file translated from")
        for tfile in ["head_sf.pre.xb.x2w.w2f.f","head_sf.pre.xb.x2w.w2f.pp.f","head.pre.xb.x2w.w2f.pp.f","head_sf.pre.xb.xaif"]:
            fileCompare(exDir,tfile,majorMode + ctrMode,"file translated from")
    # execute the driver
    sys.stdout.flush()
    if(os.system(makeCmd + " run")):
	raise MakeError, makeCmd + " run"
    if (majorMode != "trace"):
        # do numerical comparison
        numFiles="tmpOutput/dd.out " + exDir + "/refOutput/dd.out"
        if (majorMode == "adm" or majorMode == "tlm"):
            numFiles+=" tmpOutput/ad.out " + exDir + "/refOutput/ad.out"
        if not (globalBatchMode):
            testFlags = '-g -v -i'
        else:
            testFlags = '-b'
        if globalMakeSVG:
            testFlags += ' -s'
        sys.stdout.write("./numericalComparison.py %s -n %s %s\n" % (testFlags,exName,numFiles))
        if (os.system("./numericalComparison.py %s -n %s %s" % (testFlags,exName,numFiles))):
            raise NumericalError
    printSep("*","",sepLength)


def main():
    from optparse import OptionParser
    usage = '%prog [options] '
    compilers=['ifort','gfortran','g95','f95','openf95']
    compilerOpts='[ '
    for i in compilers :
        compilerOpts+=i
        if  i != compilers[-1]:
            compilerOpts+=" | "
    compilerOpts+=" ]"        
    opt = OptionParser(usage=usage)
    opt.add_option('-a','--offerAcceptAsDefault',dest='offerAcceptAsDefault',
                   help="offer accept as default for updating reference files",
                   action='store_true',default=False)
    opt.add_option('-A','--acceptAll',dest='acceptAll',
                   help="accept all changes without confirmation",
                   action='store_true',default=False)
    opt.add_option('-b','--batchMode',dest='batchMode',
                   help="run in batchMode suppressing output",
                   action='store_true',default=False)
    opt.add_option('-c','--compiler',dest='compiler',
                   type='choice', choices=compilers,
                   help="pick a compiler (defaults to ifort) from the following list: " +compilerOpts+" - the compiler should be in PATH",
                   default='ifort')
    opt.add_option('-i','--ignoreFailingCases',dest='ignoreFailingCases',
                   help="don't ask whether we should try to run the cases known to fail",
                   action='store_true',default=False)
    opt.add_option('-O','--optimize',dest='optimize',
                   help="turn compiler optimization on (default off)",
                   action='store_true',default=False)
    opt.add_option('-s','--svg',dest='makeSVG',
                   help="make svg output for numericalComparison and display with firefox",
                   action='store_true',default=False)
    opt.add_option('-v','--verbose',dest='verbose',
                   help="let the pipeline components produce some extra output",
                   action='store_true',default=False)
    (options, args) = opt.parse_args()
    try:
        if os.environ.has_key('BATCHMODE') or options.batchMode :
            global globalBatchMode
            globalBatchMode=True
        if options.ignoreFailingCases :
            global globalIgnoreFailingCases
            globalIgnoreFailingCases=True
        if options.offerAcceptAsDefault :
            global globalOfferAcceptAsDefault
            globalOfferAcceptAsDefault=True
        if options.acceptAll :
            global globalAcceptAll
            globalAcceptAll=True
        if options.makeSVG:
            global globalMakeSVG
            globalMakeSVG=True
        if options.verbose :
            global globalVerbose
            globalVerbose=True
        if options.compiler :
            os.environ['F90C']=options.compiler
        if options.optimize :
            os.environ['OPTIMIZE']='true'
	if not (os.environ.has_key('OPENADROOT')):
	    raise ConfigError, "environment variable OPENADROOT not defined"
	if not (os.environ.has_key('XAIFBOOSTER_BASE')):
            sys.stderr.write("environment variable XAIFBOOSTER_BASE not defined, setting it relative to OPENADROOT\n")
	    os.environ['XAIFBOOSTER_BASE']=os.path.join(os.environ['OPENADROOT'],'..')
	os.system(makeCmd + " groupClean")
	(examples,rangeStart,rangeEnd) = populateExamplesList(args[0:])
        (scalarOrVectorMode,majorMode,ctrMode) = determineModes()
        link_xaifBooster(majorMode)

	# Run the examples
	j = rangeStart-1
	while (j < rangeEnd):
	    try:
		runTest(scalarOrVectorMode,majorMode,ctrMode,examples[j],j+1,len(examples))
	    except ConfigError, errtxt:
		print "ERROR (environment configuration) in test %i of %i (%s): %s" % (j+1,len(examples),examples[j],errtxt)
		if not (globalBatchMode):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
		else:
		    return -1
	    except MakeError, errtxt:
		print "ERROR in test %i of %i (%s) while executing \"%s\"." % (j+1,len(examples),examples[j],errtxt)
		if not (globalBatchMode):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
		else:
		    return -1
	    except NumericalError:
		print "WARNING: numerical discrepancies in test %i of %i (%s)." % (j+1,len(examples),examples[j])
		if not (globalBatchMode):
		    if (raw_input("Do you want to continue? (y)/n: ") == "n"):
			return -1
	    except RuntimeError, errtxt:
		print "ERROR in test %i of %i (%s): %s." % (j+1,len(examples),examples[j],errtxt)
		if not (globalBatchMode):
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

