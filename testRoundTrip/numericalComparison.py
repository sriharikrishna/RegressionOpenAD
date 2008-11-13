#!/usr/bin/env python

import os
import sys

def showGraphs(errDict,errLimDict,withAD,name,n,m,impulse):
    import tempfile
    plotFileName=tempfile.mktemp()
    plotFile=open(plotFileName,"w")
    plotFile.write('set terminal x11\n')
    if withAD: 
        plotFile.write('set multiplot layout 2, 3 title \"'+str(name)+' n='+str(n)+',m='+str(m)+'\"\n')
    else:     
        plotFile.write('set multiplot layout 2, 1 title \"'+str(name)+' n='+str(n)+',m='+str(m)+'\"\n')
    plotFile.write('set noxlabel\n')
    plotFile.write('set noxtics\n')
    plotFile.write('set noylabel\n')
    plotFile.write('set logscale y\n')
    plotFile.write('set nokey\n')
    datFileNames=[]
    for errName in sorted(errDict.keys()):
	errValList=errDict[errName]
        # write data to temp files
        datOverFileName=tempfile.mktemp()
        datFileNames.append(datOverFileName)
        datOverFile=open(datOverFileName,"w")
        datUnderFileName=tempfile.mktemp()
        datFileNames.append(datUnderFileName)
        datUnderFile=open(datUnderFileName,"w")
	errMin=errLimDict[errName]
        foundOverLimit = False
        for (x,y) in enumerate(errValList):
            if (y>errLimDict[errName] ) :
                foundOverLimit = True
                datOverFile.write(str(x)+' '+str(y)+'\n')
            else :     
                datUnderFile.write(str(x)+' '+str(y)+'\n')
            if (y>0 and y<errMin) :
                errMin=y
        datOverFile.close()
        datUnderFile.close()
        # set title
        titleColor = foundOverLimit and 'red' \
                                     or 'green'
        plotFile.write('set title \"'+errName+'\" tc rgb \"'+titleColor+'\"\n')
        # set ranges
        plotFile.write('set xrange [-'+str(1 + n*m/20)+':'+str(n*m + n*m/20)+']\n')
        if (errMin==errLimDict[errName]) :
            plotFile.write('set yrange ['+str(errMin/10)+':] \n')
        errMax=max(max(errDict[errName]),errLimDict[errName])
        if (errMax==errLimDict[errName]) :
            plotFile.write('set yrange [:'+str(errMax*10)+'] \n')
        # execute plot command
        plotFile.write('plot\\\n')
        if impulse:
            plotFile.write('\"'+datOverFileName+'\" with impulses pt 3 lc 1 lw 2,\\\n')
            plotFile.write('\"'+datUnderFileName+'\" with impulses pt 3 lc 2 lw 2,\\\n')
        else:
            plotFile.write('\"'+datOverFileName+'\" with points pt 3 lc 1, \\\n')
            plotFile.write('\"'+datUnderFileName+'\" with points pt 3 lc 2, \\\n')
        plotFile.write(str(errLimDict[errName])+' with lines lt 3 lc 3\n')
        # reset y range
        plotFile.write('set yrange [*:*] \n')
    plotFile.close()
    rc=os.system("gnuplot -persist "+plotFileName+" 2>/dev/null")
    if (rc) :
        sys.stderr.write("gnuplot failed\n")
        sys.stderr.write("file "+plotFileName+"\n")
    else :     
        os.remove(plotFileName)
        map(os.remove,datFileNames)

def compareFiles (fileDict,withAD,doBatch,graphs,name,impulse,verbose):
    paramsFile=open("params.conf","r")
    n=int(paramsFile.readline())
    m=int(paramsFile.readline())
    h=float(paramsFile.readline())
    relErrorMax=float(paramsFile.readline())
    paramsFile.close()
    numbers={}
    # order is given in usage
    for fileKey, fileName in fileDict.items() :
        numbers[fileKey]=[]
        numberFile=open(fileName,"r")
        for theLine in numberFile:
            if (theLine[0] == "F"):
                fElementString,fValueString = theLine.split('=')
                numbers[fileKey].append(float(fValueString))
    errDict={}
    if (withAD): 
        for key in ['absErrADDD','relErrADDD','absErrCvR_AD','relErrCvR_AD'] :
            errDict[key]=[]
    for key in ['absErrCvR_DD','relErrCvR_DD'] :
      errDict[key]=[]
    for i in range(0,n*m):
        if (withAD): 
            # current AD vs DD
            errDict['absErrADDD'].append(abs(numbers['curDD'][i]-numbers['curAD'][i]))
            if (numbers['curAD'][i]!=0) :
                errDict['relErrADDD'].append(abs((numbers['curDD'][i]-numbers['curAD'][i])/numbers['curAD'][i]))
            else:
                errDict['relErrADDD'].append(errDict['absErrADDD'][-1])
            # AD current vs. ref
            errDict['absErrCvR_AD'].append(abs(numbers['curAD'][i]-numbers['refAD'][i]))
            if (numbers['refAD'][i]!=0) :
                errDict['relErrCvR_AD'].append(abs((numbers['curAD'][i]-numbers['refAD'][i])/numbers['refAD'][i]))
            else:
                errDict['relErrCvR_AD'].append(errDict['absErrCvR_AD'][-1])
        # DD current vs. ref
        errDict['absErrCvR_DD'].append(abs(numbers['curDD'][i]-numbers['refDD'][i]))
        if (numbers['refDD'][i]!=0) :
            errDict['relErrCvR_DD'].append(abs((numbers['curDD'][i]-numbers['refDD'][i])/numbers['refDD'][i]))
        else:
            errDict['relErrCvR_DD'].append(errDict['absErrCvR_DD'][-1])
    errLimDict={}
    compEps=1.E-16
    errLimDict['absErrCvR_DD']=compEps
    errLimDict['relErrCvR_DD']=compEps
    maxAbsDiscrCurRef=max(errDict['absErrCvR_DD'])
    maxRelDiscrCurRef=max(errDict['relErrCvR_DD'])
    returnValue=0
    if (withAD): 
        maxRelErrADDD=max(errDict['relErrADDD'])
        maxAbsErrADDD=max(errDict['absErrADDD'])
        errLimDict['relErrADDD']=relErrorMax
        errLimDict['absErrADDD']=relErrorMax
        if (maxRelErrADDD>relErrorMax and maxAbsErrADDD>relErrorMax):
            returnValue=1
            if not doBatch : 
                sys.stderr.write(" max discrepancy current AD vs. DD abs: %s rel %s\n" % (maxAbsErrADDD,maxAbsErrADDD))
        maxAbsDiscrCurRef=max([max(errDict['absErrCvR_AD']),maxAbsDiscrCurRef])
        maxRelDiscrCurRef=max([max(errDict['relErrCvR_AD']),maxRelDiscrCurRef])
        errLimDict['absErrCvR_AD']=compEps
        errLimDict['relErrCvR_AD']=compEps
    if (maxRelDiscrCurRef>compEps and maxAbsDiscrCurRef>compEps):
        returnValue=1
        if not doBatch : 
            sys.stderr.write(" max discrepancy cur. vs. ref. abs: %s rel %s\n" % (maxRelDiscrCurRef,maxAbsDiscrCurRef))
    if (returnValue and verbose) :
        for errKey, errList in errDict.items():
           if (max(errDict[errKey]) > errLimDict[errKey]) :
             sys.stderr.write(" "+errKey+" > "+str(errLimDict[errKey])+" for:\n")     
             for index,val in enumerate(errDict[errKey]) :
                if (val > errLimDict[errKey]) :
                  sys.stderr.write("  F["+str(index/m+1)+"]["+str(index%m)+"]: %r\n" % (val))
    if (returnValue and graphs) :
        showGraphs(errDict,errLimDict,withAD,name,n,m,impulse)
    return returnValue
          
def main():
    from optparse import OptionParser
    opt = OptionParser(usage='%prog [options] <curDD_file> <refDD_file [ <curAD_file> <refAD_file ]')
    opt.add_option('-b','--batchMode',dest='batchMode',
                   help="run in batchMode suppressing output",
                   action='store_true',default=False)
    opt.add_option('-g','--graphs',dest='graphs',
                   help="if limits are exceeded display the discrepancies with gnuplot",
                   action='store_true',default=False)
    opt.add_option('-n','--name',dest='name', type="string",
                   help="the name of the test",
                   action='store',default="")
    opt.add_option('-i','--impulse',dest='impulse',
                   help="draw errors with impulses (bars)",
                   action='store_true',default=False)
    opt.add_option('-v','--verbose',dest='verbose',
                   help="if limits are exceeded show verbose output",
                   action='store_true',default=False)
    (options, args) = opt.parse_args()
    returnValue=0
    keyList=["curDD","refDD"]
    withAD=False
    try:
        if len(args)!=2  and len(args)!=4:
            opt.error("expect 2 or 4 input file arguments, found " + str(len(args))+" : " + str(args))
        if len(args)==4 :
            keyList.extend(["curAD","refAD"])
            withAD=True
        if options.batchMode and (options.graphs or options.verbose) :
            opt.error("options for batchMode and graphs/verbose are mutually exclusive")
        fileDict={}    
        for i in range(0,len(keyList)):
            fileDict[keyList[i]]=args[i]
        returnValue=compareFiles(fileDict,withAD,options.batchMode,options.graphs,options.name,options.impulse,options.verbose)
    except RuntimeError, e:
        print 'caught exception: ',e
        return -1
    return returnValue

if __name__ == "__main__":
    sys.exit(main())
