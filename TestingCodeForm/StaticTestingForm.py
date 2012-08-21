'''
Created on 2012. 8. 10.

@author: root
'''

class StaticTestingForm:
    header=''
    deviceConnection=''
    
    def __init__(self):
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
    