#! python2.7
## -*- coding: utf-8 -*-

## kun for Apk View Tracing
## Utility.py
import os
import signal

def str2int(s):
    return int(s,10)

## "0x20" --> 32 (dec)
def hexstr2int(s):
    return int(s,16)

## "020"  --> 16 (dec)
def octstr2int(s):
    return int(s,8)


#===============================================================================
# # get parent directory
#===============================================================================
def getParDir():
    return os.path.abspath(os.path.join(os.getcwd(), os.path.pardir))

def getToolsDir():
    return os.getcwd() + os.path.sep + "tools"

def getPlatformToolsDir():
    return os.getcwd() + os.path.sep + "platform-tools"

#===================================================
# Timeout Signal과 관련된 코드이다.
#===================================================
class TimeoutFunctionException(Exception):
    """Exception to raise on a timeout"""
    pass 

class TimeoutFunction: 
    def __init__(self, timeout):
        self.timeout = timeout

    def handle_timeout(self, signum, frame):
        raise TimeoutFunctionException()

    def timeStart(self):
        signal.signal(signal.SIGALRM, self.handle_timeout)
        signal.alarm(self.timeout)
 
    def timeEnd(self):
        signal.alarm(0)
