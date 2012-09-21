#!/usr/bin/env python
#coding: euc-kr

import os
from subprocess import check_output, Popen, STDOUT

run_wait = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash').wait()

class takeSnapshot:
    header = ''
    deviceConnection = ''
    
    def __init__(self,deviceName, apk, filename):
        self.apk = apk
        self.filename = filename
        self.deviceName = deviceName
        
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
    
    def DeviceTakeSnapshot(self, mode):
        try:
            self.takeSnapshot = '''
result = device.takeSnapshot()
result.writeToFile('/root/python_source/AutoTestingModule/TestingResult/%s/%s/%s_%s','png')''' % (self.deviceName, self.apk, self.filename, mode)
        
            f = open('./SnapshotScript.py', 'w+')     
            print >> f, self.header
            print >> f, self.deviceConnection
            print >> f, self.takeSnapshot
            f.close()
            run_wait('monkeyrunner SnapshotScript.py')
            print 'Success Snapshot %s/%s_%s'%(self.apk, self.filename, mode)
            
        except (IOError):
            print 'ERROR: Failed open file:' + self.apk
            exit(-1)
        except (RuntimeError, TypeError, NameError):
            print 'ERROR: Failed get apk info:' + self.apk
            exit(-1)

if __name__ == '__main__':
    takeSnapshot2 = takeSnapshot('bb','testActivity')
    takeSnapshot2.DeviceTakeSnapshot('onCreate')
    
