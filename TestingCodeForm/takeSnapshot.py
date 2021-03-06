#!/usr/bin/env python
#coding: euc-kr

import os
from subprocess import check_output, Popen, STDOUT

run_wait = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash').wait()

class takeSnapshot:
    header = ''
    deviceConnection = ''
    
    def __init__(self,testingProjectName, deviceName, apk, filename):
        self.testingProjectName = testingProjectName
        self.deviceName = deviceName
        self.apk = apk
        self.filename = filename
   
        self.header = '''import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage'''
        
        self.deviceConnection = '''
# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        '''
                
    def header(self):
        return self.header
    
    def deviceConnection(self):
        return self.deviceConnection
    
    def DeviceTakeSnapshot(self):
        try:
            self.takeSnapshot = '''
result = device.takeSnapshot()
result.writeToFile('/root/python_source/AutoTestingModule/ImageStore/%s/%s/%s','png')''' % (self.testingProjectName, self.apk, self.filename)
        
            f = open('./SnapshotScript.py', 'w+')     
            print >> f, self.header
            print >> f, self.deviceConnection
            print >> f, self.takeSnapshot
            f.close()
            run_wait('monkeyrunner SnapshotScript.py')
            print 'Success Snapshot %s/%s'%(self.apk, self.filename)
            
        except (IOError):
            print 'ERROR: Failed open file:' + self.apk
            exit(-1)
        except (RuntimeError, TypeError, NameError):
            print 'ERROR: Failed get apk info:' + self.apk
            exit(-1)

if __name__ == '__main__':
    takeSnapshot2 = takeSnapshot('bb','testActivity')
    takeSnapshot2.DeviceTakeSnapshot('onCreate')
    
