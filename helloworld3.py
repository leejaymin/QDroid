#!/usr/bin/env python
#coding: euc-kr

import signal
import os
from subprocess import check_output, Popen, PIPE
import logging, time
import TestingLogger
import threading, time
from SoloInterface import SoloInterface
from TestingToolkit import PerformanceCounter
from TestingCodeForm import takeSnapshot
from Utility import TimeoutFunctionException, TimeoutFunction

run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
run_wait = lambda cmd: Popen(cmd, executable='/bin/bash').wait()
run_pipe = lambda cmd: Popen(cmd, shell=True, stdout=PIPE, executable='/bin/bash' )
run_pid = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash' )
dmsgThreadCondition = 0

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

def dmsgThread():
    mTotalCurrent = 0
    mTotalPower = 0
    sensingCount = 0
    mAvePower = 0.0
    ListOfCurrent = []
    ListOfVoltage = []
    data = run('adb shell dmesg').splitlines()
    
    for i in data:
        if(i.find('batt:') != -1 and i.find('(') != -1):
            current = i.split('(')[1].split(' ')[0]
            voltage = i.split('mV')[0].split(' ')[4]
            power = int(current) * int(voltage) / 1000

            mTotalPower += power
            sensingCount +=1
            
            mTotalCurrent += int(current)
            ListOfCurrent.append(int(current))
            ListOfVoltage.append(int(voltage))
    
    #calculate average power consumption
    mAvePower = (mTotalPower * 1.0) / sensingCount
    print mAvePower
           
def AdbOverNetwork(command):
    try:
        timemer = TimeoutFunction(2)
        out = run(command)
#        os.kill(out.pid, signal.SIGINT) 
        #timeout을 정지 시킨다. 
        timemer.timeEnd()
    except TimeoutFunctionException:
        os.kill(out.pid, signal.SIGINT)
        print 'ADB connect command Failed.. killed process pid:%s'%(out.pid)
        return 
    else: 
        #정상적으로 adb가 connection 되었는지를 확인 한다.
        print 'ADB Over Network Success !'

def AdbReboot():
    out=run_pid("adb shell reboot")
    time.sleep(1)
    os.kill(out.pid, signal.SIGINT)
            
def AdbOverNetwork_Disconnect():
    out = run_pipe('adb disconnect 192.168.0.3')
         
def InitPerformnaceCounter():
        perforCounter = PerformanceCounter.PerformanceCounter('', '', '', 'Digger')
        #self.perforCounter.startPerforCounter()
        #self.perforCounter.stopPerforCounter()
        performanceData = perforCounter.loadPerforResult()
        perforResult = {'cpu':0.0,'packet':0,'Networks':0.0}
        
        #extract performance info from Data
        if(performanceData.find('CPU') != -1) :
            perforResult['cpu'] = float(performanceData.split(' ')[3].split('\n')[0])
        if(performanceData.find('packet') != -1) :
            perforResult['packet'] = float(performanceData.split(' ')[6].split('\n')[0])
        if(performanceData.find('Networks') != -1) :
            perforResult['Networks'] = float(performanceData.split(' ')[8].split('\n')[0])
                
        print perforResult
               
if __name__ == '__main__':
#   th = threading.Thread(target = dmsgThread)
#   th.start()
#   th.join()
#   dmsgThread()
#   time.sleep(1)
    InitPerformnaceCounter()

'''    
    for x in range(3):
        AdbOverNetwork('adb disconnect 192.168.0.3')
        time.sleep(1)
        AdbOverNetwork('adb connect 192.168.0.3')
        time.sleep(5)
        solo = SoloInterface(device_name='192.168.0.3:5555')
        solo.event_controller.drag_start(50, 600)
        solo.event_controller.drag_end(380, 600)
        solo.close()
        AdbReboot()
        time.sleep(60)
''' 
    

    
    
    
