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
#===============================================================================
# # compare to string (diff)
#===============================================================================
def diffError(argX, argY):
    sameRate = 0 #문자열이 얼마나 같은지를 카운팅 한다.
    compareRange =0 # out of string을 예방하기 위해서, 길이가 작은 스트링이 무엇인지 판별 한다.
    dvidedNum = 0 # 두개의 스트링중 길이가 더 큰 쪽을 저장 한다.
    if len(argX) >= len(argY):
        compareRange = len(argY)
        dividedNum = len(argX) * 1.0
    else:
        compareRange = len(argX)
        dividedNum = len(argY) * 1.0
    for i in range(compareRange):
        if argX[i] == argY[i]:
            sameRate += 1
            
    result = sameRate / dividedNum *100
    return result

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
