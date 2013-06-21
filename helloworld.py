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

if __name__ == '__main__':

#    startime = time.time()
#    m_logger = TestingLogger.InitLog("./TestingResult/PowerTutor.log", logging.getLogger("PowerTutor"))
#    msg = "hello log msg !!!"
#    m_logger.info(msg)
#    m_logger = TestingLogger.InitLog("./TestingResult/PowerTutor2.log", logging.getLogger("PowerTutor2"))
#    msg = "hello log msg !!!"
#    m_logger.info(msg)
#    endtime = time.time()
#    print 'time : %f'%(endtime - startime)
    
#    print run('adb logcat')
#    run('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10').lower()
#    print run('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10')
#    check_output('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10', shell=True, executable='/bin/bash')

    
#    solo.setUp()
#    solo.clickViewById("counter_start_btn")
#    solo.event_controller.press('dpad_down')
#    solo.event_controller.press('enter')     
#    perforCounter = PerformanceCounter.PerformanceCounter(solo, m_logger, apk)
#    perforCounter.startPerforCounter()
#    time.sleep(10)
    
    #takeSnapshot2 = takeSnapshot.takeSnapshot('cc','testActivity')
    #takeSnapshot2.DeviceTakeSnapshot('onCreate')
    
#    perforCounter.stopPerforCounter()
#    print perforCounter.loadPerforResult()
#    solo.close()
#    run('adb shell reboot')
 #   time.sleep(55)
    
#    solo = SoloInterface(device_name='192.168.0.3:5555')
#    solo.event_controller.drag_start(50, 600)
#    solo.event_controller.drag_end(380, 600)
#    solo.close()

    targetInfo = [{'deviceName':'HT0A1P800732','port':5554},{'deviceName':'HT08DP802665','port':5553}]
    print targetInfo[0]['deviceName']
    print targetInfo[0]['port']



    
    
    
