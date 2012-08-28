#!/usr/bin/env python
#coding: euc-kr

import signal
import os
from subprocess import check_output, Popen, PIPE
import logging, time
import TestingLogger
from SoloInterface import SoloInterface
from TestingToolkit import PerformanceCounter

run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')

def diffError(argX, argY):
    sameRate = 0 #���ڿ��� �󸶳� �������� ī���� �Ѵ�.
    compareRange =0 # out of string�� �����ϱ� ���ؼ�, ���̰� ���� ��Ʈ���� �������� �Ǻ� �Ѵ�.
    dvidedNum = 0 # �ΰ��� ��Ʈ���� ���̰� �� ū ���� ���� �Ѵ�.
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
  
    startime = time.time()
    m_logger = TestingLogger.InitLog("./TestingResult/PowerTutor.log", logging.getLogger("PowerTutor"))
    msg = "hello log msg !!!"
    m_logger.info(msg)
    m_logger = TestingLogger.InitLog("./TestingResult/PowerTutor2.log", logging.getLogger("PowerTutor2"))
    msg = "hello log msg !!!"
    m_logger.info(msg)
    endtime = time.time()
    print 'time : %f'%(endtime - startime)
    
#    print run('adb logcat')
#    run('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10').lower()
#    print run('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10')
#    check_output('adb shell monkey --kill-process-after-error  --throttle 500 -p edu.umich.PowerTutor -v -v 10', shell=True, executable='/bin/bash')


    solo = SoloInterface(device_name='12B9WE630015')
#    solo.setUp()
#   solo.clickViewById("counter_start_btn")
#    solo.event_controller.press('dpad_down')
#    solo.event_controller.press('enter')     
    apk='test'
    perforCounter = PerformanceCounter.PerformanceCounter(solo, m_logger, apk)
    perforCounter.startPerforCounter()
    time.sleep(2)
    perforCounter.stopPerforCounter()
    print perforCounter.loadPerforResult()
    solo.close()
    
    
    
    