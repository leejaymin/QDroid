#!/usr/bin/env python
#coding: euc-kr

import signal
import os, sys
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
        #timeout�� ���� ��Ų��. 
        timemer.timeEnd()
    except TimeoutFunctionException:
        os.kill(out.pid, signal.SIGINT)
        print 'ADB connect command Failed.. killed process pid:%s'%(out.pid)
        return 
    else: 
        #���������� adb�� connection �Ǿ������� Ȯ�� �Ѵ�.
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

def check_string(arString):
    output = run("adb -s 0149A97F16021014 shell logcat -d; adb -s 0149A97F16021014 shell logcat -c")
    print output
    cond = output.find(arString)
    cond2 = output.find("WWW Failed")
    
    if cond == -1 :
        return False
    else :
        return True
    
def check_string2(arString,arString2):
    output = run("adb -s 0149A97F16021014 shell logcat -d; adb -s 0149A97F16021014 shell logcat -c")
    print output
    cond = output.find(arString)
    cond2 = output.find(arString2)
    
    if cond == -1 and cond2 == -1:
        return False
    else :
        return True
    
def check_string_backPress(arString,arString2):
    output = run("adb -s 0149A97F16021014 shell logcat -d; adb -s 0149A97F16021014 shell logcat -c")
    print output
    cond = output.find(arString) # UI
    cond2 = output.find(arString2) # Failed
    
    if cond != -1 and cond2 == -1 : # UI =0, www =x
        return 0
    elif cond != -1 and cond2 != -1 : # UI, www = o
        return 1
    else : # UI = x ,WWW = o // UI == x WWW = x
        return 2
    
def WWW_Failed(arSolo):
    arSolo.event_controller.touch(772,515)
    time.sleep(2)
    
def Power(arSolo):
    print 'press key: Power'
    arSolo.event_controller.press("power")
    time.sleep(2)
    
def safety_touch(phase,arSolo,arX,arY,arSTime,phase_check_cond):

    print phase
    arSolo.event_controller.touch(arX, arY)
    time.sleep(arSTime)
    count = 0
    while (True):
        if check_string(phase_check_cond):
            break
        else:
            print 'WWW Failed: '+phase
            WWW_Failed(arSolo)   
            count += 1
        
        if count == 30:
            sys.exit(0) #log�� ���ؼ� ��������
        
def safety_touch2(phase,arSolo,arX,arY,arSTime,phase_check_cond,phase_check_cond2):

    print phase
    arSolo.event_controller.touch(arX, arY)
    time.sleep(arSTime)
    while (True):
        if check_string2(phase_check_cond,phase_check_cond2):
            break
        else:
            print 'WWW Failed: '+phase
            WWW_Failed(arSolo)   

#���� ���� ���� safety touch
def safety_touch_bomul(phase,arSolo,arX,arY,arSTime,phase_check_cond):

    print phase
    arSolo.event_controller.touch(arX, arY)
    time.sleep(arSTime)
    while (True):
        if check_string(phase_check_cond):
            break
        else:
            print 'WWW Failed: '+phase
            arSolo.event_controller.touch(arX, arY)      

#���� ��ũ�� �� 
def mongil_job(arSolo,arInteration):
    run("adb -s 0149A97F16021014 shell logcat -c") # logcat clean
     
    for x in range(arInteration):    
        #print '��ų ����'
        #arSolo.event_controller.touch(995, 226)
        #time.sleep(2)
            
        #�������: // �� ��� ���� log message�� �߻����� �ʴ´�. 
        while (True):
            print '�������'
            arSolo.event_controller.touch(1013, 627)
            time.sleep(5)
            if check_string('WWW Failed') :
                print 'WWW Failed: ������� '
                WWW_Failed(arSolo)
            else:
                break
            
        #�Բ��ϱ�: 
        print '�Բ��ϱ� ' 
        arSolo.event_controller.touch(840, 480)
        time.sleep(2)
        
        #����:
        safety_touch('����',arSolo,850,640,2,'event_coin')
        
        #action                  
        count = 0
        while (True):
            if check_string("expget"):
                break               
            elif count == 90: #����� ���� �� �ִ� �ð��̴�.
                print 'WWW Failed: �������� ǥ�� �ܰ�'
                WWW_Failed(arSolo)  
                time.sleep(1)
            else:
                count += 10
                if count % 10 == 0:
                    print 'running: '+str(count)
                time.sleep(10) 
                
        #�������� 1��:
        safety_touch('�������� 1��',arSolo,290,440,3,'mission_list')          
        #���ÿϷ�:
        safety_touch('���ÿϷ�',arSolo,816,655,4,'myrecord')
        #�ٽ��ϱ�: 
        safety_touch2('�ٽ��ϱ�',arSolo,257,649,2,'friends_count','kakao-android-sdk')
            
        count = 0
        while (True):
            #if check_string("Event UI_SELECT_CHARACTER_SLOT"):
            #    break
            if count < 20:
                count += 5
                print 'retry loading time: '+str(count)
                time.sleep(5)
            else:
                break

def key_check(arSolo):

    #���Ἲ �˻�
    while (True):
        print 'key check: front-end-connection'
        time.sleep(3)
        if check_string('WWW Failed') :
            print 'WWW Failed: key check: connection'
            WWW_Failed(arSolo)
        else:
            break
        
    #���� ����
    while (True):
        print 'key check: ���� ����'
        arSolo.event_controller.touch(1013, 627)
        time.sleep(5) 
        if check_string('WWW Failed') :
            print 'key check- �������: WWW Failed '
        else:
            break
        
    #UI OPEN SHOP �Ǵ� �Բ��ϱ�
    print 'key check: UI_OPEN_SHOP or �Բ��ϱ�'
    arSolo.event_controller.touch(772,515) 
    time.sleep(15)
    
    # 0 - UI = 0, WWW = X --> True
    # 1 - UI = 0, WWW = 0 --> True
    # 2 - UI = X, WWW = don't care --> False
    returnValue = check_string_backPress('Event UI_OPEN_SHOP','WWW Failed')
    if returnValue == 0:
        print '0 - UI = 0, WWW = X --> True'
        print 'press back-key: True case-Event UI_OPEN_SHOP'
        arSolo.event_controller.touch(42, 15)
        time.sleep(5)
        return  True
    elif returnValue == 1:
        print '1 - UI = 0, WWW = 0 --> True'
        while(True):
            WWW_Failed(arSolo)
            time.sleep(7)
            if(check_string('WWW Failed')):
                print "UI_OPEN_SHOP: WWW Failed"
            else:
                #���������� back ��ư�� ���� �� �ִ�.
                break    
        #��Ʈ���� ���� �����̹Ƿ� ���ư ��ġ
        print 'press back-key: sloving WWW Failed'
        arSolo.event_controller.touch(42, 15)
        return True
    elif returnValue == 2:
        print '2 - UI = X, WWW = do not care --> False'
        print '�Բ� �ϱ⸦ �����Ѵ�. key�� �����Ƿ�, ���̻� key check�� ���� �ʴ´�.'
        arSolo.event_controller.touch(772,515) #�Բ� �ϱ� ������ ���� 
        time.sleep(2)
            
                    
    #���Ἲ �˻�
    while (True):
        print 'key check: back-end-connection'
        time.sleep(3)
        if check_string('WWW Failed') :
            print 'WWW Failed: key check: connection'
            WWW_Failed(arSolo)
        else:
            break
    
    return False
           
if __name__ == '__main__':
#   th = threading.Thread(target = dmsgThread)
#   th.start()
#   th.join()
#   dmsgThread()
#   time.sleep(1)
#    InitPerformnaceCounter()
#lab1 = 0149A97F16021014
#lab2 = 0149B33A0300A015
#my = 0149C7A518014011

    mode = raw_input("plz choose the mode: 1)infinite 2)limited " )    
    iteration = raw_input("plz input the interation: " )    
        
    if mode == '1':
        while(True):
            
            solo = SoloInterface(device_name='0149A97F16021014')
            while(key_check(solo)):
                print 'do not going on paly'
                time.sleep(300)
    
            # main macro, 6 interation
            mongil_job(solo,int(iteration))
 
            solo.close()
                                
    elif mode == '2':
        solo = SoloInterface(device_name='0149A97F16021014')
        # main macro, 6 interation
        mongil_job(solo,int(iteration))
        
        #power off
        Power(solo)
                                    
    elif mode == '3':
        solo = SoloInterface(device_name='0149A97F16021014')
        # main macro, 6 interation
        #solo.event_controller.touch(589,504) #Ȯ��
        #solo.event_controller.touch(589,587) #���� 10�� Ȯ��
        solo.event_controller.touch(917,127) #���� 10�� Ȯ��
        #solo.event_controller.touch(772,515)
        #solo.event_controller.touch(574,590) # ���� Ȯ��
        #solo.event_controller.touch(42, 15)
        solo.close()
        
    #test rootine
    elif mode == '4':
        output = '''aaa
        bb''' 
        print output.count('a')
        output2 = '''aaa
        bbb
        cccd
        e'''
        print len(output2)
        
        
