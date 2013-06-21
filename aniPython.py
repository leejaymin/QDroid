#!/usr/bin/env python
#coding: euc-kr

import signal
import os
from subprocess import check_output, Popen, PIPE
import logging, time
import TestingLogger
from SoloInterface import SoloInterface
from TestingToolkit import PerformanceCounter
from TestingCodeForm import takeSnapshot

run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
#run = lambda cmd: check_output(cmd, shell=True)


if __name__ == '__main__':
    f = open('./aniScript.txt', 'w+')
    for i in range(320, 920):      
        for j in range(50,650):
            if i % 100 == 20 and j % 100 == 50:
                
                print >>f, 'touch down %d %d'%(j,i)
                print >>f, 'touch move %d %d'%(j+100,i)
                print >>f, 'touch up %d %d'%(j+100,i)
                print >>f, 'touch down %d %d'%(j+100,i)
                print >>f, 'touch move %d %d'%(j,i)
                print >>f, 'touch up %d %d'%(j,i)
                print >>f, 'sleep(100)'
                             
                print >>f, 'touch down %d %d'%(j,i)
                print >>f, 'touch move %d %d'%(j,i+100)
                print >>f, 'touch up %d %d'%(j,i+100)
                print >>f, 'touch down %d %d'%(j,i+100)
                print >>f, 'touch move %d %d'%(j,i)
                print >>f, 'touch up %d %d'%(j,i)

                
    

            



    
    
    
