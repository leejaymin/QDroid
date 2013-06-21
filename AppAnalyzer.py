#!/usr/bin/env python
#coding: euc-kr

################################################################
# Author:  Jemin Lee <leejaymin@cnu.ac.kr>
# Date:  2012-06-20 - 2013-06-13
# Version: 2.0
################################################################
import logging, time, threading, sys
import TestingLogger
import os
import signal
import MySQLdb
import defineStore
from Utility import diffError

from sys import exit
from os import path
from os import mkdir

from subprocess import check_output, Popen, STDOUT
from xml.sax import make_parser, handler
from ApkAnalyzer import ManifestHandler
from TestingCodeForm import StaticTestingForm
from TestingCodeForm import takeSnapshot
from SoloInterface import SoloInterface
from TestingToolkit import PerformanceCounter
from Utility import TimeoutFunctionException, TimeoutFunction


################################################################

isabs = path.isabs
isfile = path.isfile
isdir = path.isdir  

islink = path.islink
ismount = path.ismount
run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
run_wait = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash').wait()
run_pid = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash' )
#run = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash' )

#check_output은 출력 결과를 바로 String byte로 출력을 하는 함수이다.
#Popen은 출력 결과를 하위 프로세스를 나타내는 객체로 반환하게 된다. 
#################################################################


class ApkTest(threading.Thread):
    
    def __init__(self, apk, monkeyIteration,testMode,deviceName, port):
        #super class call construct
        super(ApkTest,self).__init__()
        
        self.apk = apk
        self.monkeyIteration = monkeyIteration
        self.StaticTestingForm = StaticTestingForm.StaticTestingForm()
        self.testMode = testMode
        self.deviceName = deviceName
        self.port = port
        
        #Test Mode에 따라서 TCP IP / USB
        if(self.testMode == '1'):
            self.AdbOverNetwork('adb -s %s disconnect 192.168.0.3'%(self.deviceName))
            time.sleep(1)
            self.AdbOverNetwork('adb -s %s connect 192.168.0.3'%(self.deviceName))
            time.sleep(5)
            
        #오류를 기록해줄 로거를 생성 한다. 
        #Nexus one device name="HT0A1P800732" Buy lab
        #Nexus one device name="HT08DP802665" Borrow kim
        #HTCDesire device_name="12B9WE630015"
        #Galaxy Nexus device_name="0149C7A518014011"
        #Network Wi-Fi="192.168.0.3:5555"
        #self.deviceName= 'HTCNexusOne'
        self.solo = SoloInterface(device_name=deviceName, device_port=port)
        self.solo.setUp()
            
    def init(self):
        self.loggingInit()
        #isupper()의 경우 그냥 대문자인지 판단하는 거이다.
        #결국 아래의 의미는 dir햇을때 나오는 수많은 맴버 매서드들 중에서 'testInstall', 'testReinstall', 'testStress', 'testUninstall'만을
        #가려 내어서 사전으로 생성하는 기능을 한다.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())
        #서머리를 위해서 사용하는 변수들의 정의
        self.errorReport = {'activity':['',0],'broadcast':['',0],'service':['',0],'monkey':[0,0]}
        self.errorList = [' ']
        self.perforResult = {'cpu':0.0,'packet':0,'Networks':0.0}
        self.enviromentResult = {'wifi':False}
        self.startTime = time.time()
        
        self.currentProgress = 0
        
        #power conumpstion member
        self.ListOfCurrent = []
        self.ListOfVoltage = []
        self.ListOfPower = []
        self.mTotalCurrent = 0
        self.mAvePower = 0.0
        
        #Device Screen Unlock
        self.solo.event_controller.drag_start(50, 600)
        self.solo.event_controller.drag_end(380, 600)
        # mode number 1은 current senssing의 초기화 이다.
        self.CurrentSensing(1)
        
        # init Database 
        self.db = MySQLdb.connect(user='root', passwd = 'root', db ='BugHunter')
        self.cursor = self.db.cursor()
    
    def setTestingOption(self, option):
        self.testingOption = option
        
    def run(self):
        
        if(self.testingOption == defineStore.RUN_APK):
            self.runApkTests()
            
        elif(self.testingOption == defineStore.RUN_APKLIST):
            pass
        
        elif(self.testingOption == defineStore.RUN_DISPLAYCOMPATIBILITY):
            pass
        
        elif(self.testingOption == defineStore.RUN_PACKAGE):
            pass 
        
        
    def runApkTests(self): 
        self.init()
        #monkeyrunner 테스팅 코드를 만드는 부분
        #self.reverseApk()   
        self.parsingManifestXml() 
        
        #스마트폰의 환경을 설정 한다.
        self.enviromentControl()
        
        #monkey를 단독으로 실행하는 코드 
        self.testInstall()
        self.testReinstall()
        self.InitPerformnaceCounter()
        self.testActivity()
        self.testBroadCast()
        self.testService()
        self.testUninstall()
        self.summary()
        self.finished()
    
    def runPackageTests(self):
        self.init()
        self.parsingManifestXml() 

        #스마트폰의 환경을 설정 한다.
        self.enviromentControl()
        
        self.InitPerformnaceCounter()
        self.testActivity()
        self.testBroadCast()
        self.testService()

        self.summary()
        self.finished()
    
    def runCompatibility(self):
        self.init()
        self.reverseApk()
        self.parsingManifestXml()
        #monkey를 단독으로 실행하는 코드 
        self.testInstall()
        self.testReinstall()
        self.DisplayCompatibility()
        self.testUninstall()
        self.finished()
        
    def runDebug(self):
        self.init()
        self.reverseApk()
        self.parsingManifestXml()
           
    def enviromentControl(self):
        for permission in self.permissionList:
            if permission.find('android.permission.INTERNET') != -1:
                self.enviromentResult['wifi'] = True
    
    def finished(self):
        self.solo.close()
        self.cursor.close()
        
    def loggingInit(self):
        #Creating Directory with Device Name on ImageStore
        try:     
            mkdir('/root/python_source/AutoTestingModule/ImageStore/%s'%(self.deviceName))
        except AttributeError:
            print 'tuple object has no attribute split'
        except OSError:
            print 'File exists: /root/python_source/AutoTestingModule/ImageStore/%s/'%(self.deviceName)     
        
        #Creating Directory with Device Name on TestingResult
        try:     
            mkdir('/root/python_source/AutoTestingModule/TestingResult/%s'%(self.deviceName))
        except AttributeError:
            print 'tuple object has no attribute split'
        except OSError:
            print 'File exists: /root/python_source/AutoTestingModule/TestingResult/%s/'%(self.deviceName)   
        
        #apk 이름으로 디렉터리를 생성 한다. 
        FileCount = 0
        try:     
            FileName = self.apk.split('.')[0]
            mkdir('/root/python_source/AutoTestingModule/TestingResult/%s/%s'%(self.deviceName,FileName))
        except AttributeError:
            print 'tuple object has no attribute split'
        except OSError:
            print 'File exists: /root/python_source/AutoTestingModule/TestingResult/%s/'%(self.deviceName) +FileName
       
        #Directory for Image
        try:     
            mkdir('/root/python_source/AutoTestingModule/ImageStore/%s/%s'%(self.deviceName,FileName))
        except AttributeError:
            print 'tuple object has no attribute split'
        except OSError:
            print 'File exists: /root/python_source/AutoTestingModule/ImageStore/%s/'%(self.deviceName) +FileName    
            
        while True:   
            if path.isfile("./TestingResult/%s/%s/%s(%s).log" %(self.deviceName,FileName,FileName,FileCount)):
                FileCount += 1
            else:
                break;               
           
        self.m_logger = TestingLogger.InitLog("./TestingResult/%s/%s/%s(%s).log"%(self.deviceName, FileName, FileName, FileCount), logging.getLogger("%s"%self.apk))
        
        #log file naming 
        self.logfileName = '%s(%s).log'%(FileName, FileCount)
        self.logfilePath = '/root/python_source/AutoTestingModule/TestingResult/%s/%s/%s(%s).log'%(self.deviceName,FileName,FileName,FileCount)
        
    def InitPerformnaceCounter(self):
        self.perforCounter = PerformanceCounter.PerformanceCounter(self.solo, self.m_logger, self.apk.split('.')[0])
        self.perforCounter.startPerforCounter()
    
    def FnishedPerforCounter(self):
        self.perforCounter.stopPerforCounter()
        performanceData = self.perforCounter.loadPerforResult()
        
        #extract performance info from Data
        try:
            self.perforResult['cpu'] = float(performanceData.split(' ')[3].split('\n')[0])
            self.perforResult['packet'] = int(performanceData.split(' ')[6].split('\n')[0])
            self.perforResult['Networks'] = float(performanceData.split(' ')[8].split('\n')[0])
        except ValueError :
            print 
    
    def reverseApk(self):
        try:
            run('./apktool d -f ./apkRepo/%s ./ReverseApkRepo/%s' % (self.apk, (self.apk).split('.')[0]))
        except (RuntimeError):
            return 'invalid literal for float(): 0.000000MByte'
        
    def parsingManifestXml(self):
        #f = open('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
        #manifest = f.read()
        #print manifest
        handler = ManifestHandler.ManifestHandler('activity')
        parser = make_parser()
        parser.setContentHandler(handler)
        parser.parse('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
                
        #파싱 결과를 저장 한다.    
        self.pkgName = handler.packageName
        self.version = handler.version
        self.numberOfActivity = handler.numberOfActivity
        self.numberOfBroadCast = handler.numberOfBroadCast
        self.numberOfService = handler.numberOfService
        
        self.activityList = handler.activityList
        self.receiverList = handler.receiverList
        self.serviceList = handler.serviceList
        self.permissionList = handler.permissionList
        
        #파싱 결과를 출력 한다.
        self.m_logger.info("Reversing Activity / BoradCast / Service List")
        for activity in self.activityList:
            print activity
            self.m_logger.info(activity)
        for receiver in self.receiverList:
            print receiver
            self.m_logger.info(receiver)
        for service in self.serviceList:
            print service
            self.m_logger.info(service)
        
        #최종적으로 수행해야할 목록을 출력하기 위
        self.complteProgress = self.numberOfActivity+self.numberOfBroadCast+self.numberOfService
        print 'pacakge name: %s'%(self.pkgName)
        print 'Total Activity: %d'%(self.numberOfActivity)
        print 'Total Service: %d'%(self.numberOfBroadCast)
        print 'Total BroadCast: %d'%(self.numberOfService)
        print 'completeProgress: %d'%(self.complteProgress)
        print '======== complete parsing xml ==========='
        
        self.m_logger.info('pacakge name: %s'%(self.pkgName))
        self.m_logger.info('Total Activity: %d'%(self.numberOfActivity))
        self.m_logger.info('Total Service: %d'%(self.numberOfBroadCast))
        self.m_logger.info('Total BroadCast: %d'%(self.numberOfService))
        self.m_logger.info('completeProgress: %d'%(self.complteProgress))
        self.m_logger.info('======== complete parsing xml ===========')
         
    def GenerateTestingScript(self):
        #읽고 쓰고 이며 기존 파일을 삭제 한다. 
        f = open('./TestingScript/%s.py'% (self.apk).split('.')[0],'w+')
        
        print >> f, self.StaticTestingForm.header
        print >> f, self.StaticTestingForm.deviceConnection
        
        for activity in ManifestHandler.ManifestHandler.activityList:
            print >> f, 'device.startActivity(component="'"%s"'")' % (self.pkgName+activity)
            print >> f , 'MonkeyRunner.sleep(1.0)'
            
        f.close()
        
    def Monkeyrunner(self):
        run('monkeyrunner %s.py'% (self.apk))    
                          
             
    def getApkInfo(self):
        fmt = lambda key: dict((i.split('=')[0], i.split('=')[1].strip("'"))   for i in key.split()  if i.find('=') != -1)
        try:
            info = dict(j.split(':', 1) for  j in  (i for i in  run('aapt dump badging ./apkRepo/%s' % (self.apk)).split('\n')) if j.find(':') != -1)
            self.pkgName = fmt(info['package'])['name']
            self.actName = fmt(info['launchable-activity'])['name']
        except (IOError):
            print 'ERROR: Failed open apk file:' + self.apk
            exit(-1)
        except (RuntimeError, TypeError, NameError):
            print 'ERROR: Failed get apk info:' + self.apk
            exit(-1)

    def testInstall(self): 
        run('adb -s %s uninstall ./apkRepo/%s' % (self.deviceName,self.pkgName))
        self.result['Install'][1] = check_output('adb -s %s install ./apkRepo/%s' % (self.deviceName,self.apk), shell=True, stderr=STDOUT, executable='/bin/bash')
        print self.result['Install'][1]
        
        if self.result['Install'][1][-9:-2] == 'Success':
            self.result['Install'][0] = True
            self.m_logger.info(self.result['Install'][1])
        else:
            self.m_logger.error(self.result['Install'][1])

    def testReinstall(self):
        self.result['Reinstall'][1] = check_output('adb -s %s install -r ./apkRepo/%s' % (self.deviceName,self.apk), shell=True, stderr=STDOUT, executable='/bin/bash')
        print self.result['Reinstall'][1]
        
        if self.result['Reinstall'][1][-9:-2] == 'Success':
            self.result['Reinstall'][0] = True
            self.m_logger.info(self.result['Reinstall'][1])
        else:
            self.m_logger.error(self.result['Reinstall'][1])

    def testActivity(self):
        for activity in self.activityList:
            self.currentProgress += 1
            print '====== Starting Activity Testing:'+activity+' ======='    
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.m_logger.info('====== Starting Activity Testing:'+activity+' =======')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress))
            #스크린 샷을 찍는다. apk이름과 activity이름을 전달 한다.
            #snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], activity)
            
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))         
            #snapshot.DeviceTakeSnapshot('onCreate')
            #self.solo.event_controller.singleEnter()
            
            #self.solo.device.adb_console.startPhoneDialer('01044445555')
            #snapshot.DeviceTakeSnapshot('onPause')
            #back키를 눌러서 현재 상태를 클린 한다. 
            #self.solo.event_controller.singleEnter()
            
            #self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))        
            #메시지 에러를 검출하는 작업을 한다. 추후에 이것을 보고 해당 스크린샷만을 판독 한다. 
            if self.result['Activity'][1][0:5] == 'Start' and self.result['Activity'][1].find('Error') == -1: 
                self.result['Activity'][0] = True
                self.m_logger.info(self.result['Activity'][1])
                #엑티비티가 오류가 업을 때만 실행해 monkey 테스팅을 실행해 준다.
                self.testStress()
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #실패한 activity에 대해서 기록을 해준다. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #정리 한다.
            self.solo.event_controller.twentyBack()
            print '====== finished Activity Testing:'+activity+' ======='
            self.m_logger.info('====== finished Activity Testing:'+activity+' =======')
                                              
    def testBroadCast(self):
        for broadCast in self.receiverList:
            self.currentProgress += 1
            print '=============Start testBroadCast:'+broadCast+'============='  
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.m_logger.info('=============Start testBroadCast:'+broadCast+'=============')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress))
            
            self.result['BroadCast'][1] = self.solo.device.adb_console.sendBroadcastIntent(broadCast)
            if self.result['BroadCast'][1].find('completed') == -1:
                self.result['BroadCast'][0] = False
                self.m_logger.error(self.result['BroadCast'][1])
                self.errorReport['broadcast'][0] += ' '+broadCast 
                self.errorReport['broadcast'][1] += 1 
            else:
                self.result['BroadCast'][0] = True
                self.m_logger.info(self.result['BroadCast'][1])
                
            #snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], broadCast)
            #snapshot.DeviceTakeSnapshot('send')
            print '=============Finished testBroadCast:'+broadCast+'============='   
            self.m_logger.info('=============Finished testBroadCast:'+broadCast+'=============')

    def testService(self):
        for service in self.serviceList:
            self.currentProgress += 1
            print '=============Start testService:'+service+'=============' 
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.m_logger.info('=============Start testService:'+service+'=============')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress))
            
            self.result['Service'][1] = self.solo.device.adb_console.startService(service)
            if self.result['Service'][1].find('Starting') == -1:
                self.result['Service'][0] = False
                self.m_logger.error(self.result['Service'][1])
                self.errorReport['service'][0] += ' '+service
                self.errorReport['service'][1] += 1 
            else:
                self.result['Service'][0] = True
                self.m_logger.info(self.result['Service'][1])
            
            #snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], service)
            #snapshot.DeviceTakeSnapshot('start')
            print '=============Finished testService'+service+'=============' 
            self.m_logger.info('=============Finished testService'+service+'=============')
        
    #Display의 compatibility를 테스팅 하는 코드 이다.
    def DisplayCompatibility(self):
        for activity in self.activityList:
            self.currentProgress += 1
            print '====== Starting Activity Testing:'+activity+' ======='    
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.m_logger.info('====== Starting Activity Testing:'+activity+' =======')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress))
            
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))    
                            
            if self.result['Activity'][1][0:5] == 'Start' and self.result['Activity'][1].find('Error') == -1: 
                self.result['Activity'][0] = True
                self.m_logger.info(self.result['Activity'][1])
                #스크린 샷을 찍는다. apk이름과 activity이름을 전달 한다.
                snapshot = takeSnapshot.takeSnapshot(self.deviceName, self.apk.split('.')[0], activity)
                snapshot.DeviceTakeSnapshot()
                
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #실패한 activity에 대해서 기록을 해준다. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #정리 한다.
            self.solo.event_controller.singleBack()
            print '====== finished Activity Testing:'+activity+' ======='
            self.m_logger.info('====== finished Activity Testing:'+activity+' =======') 
                                                
    def testStress(self):
        overlapError = False
             
        self.result['Stress'][1] = run('adb -s %s shell monkey --kill-process-after-error --throttle 200 --pct-touch 20 --pct-motion 20 --pct-trackball 20 --pct-majornav 20 --pct-anyevent 20 -p %s -v -v %s' %(self.deviceName,self.pkgName,self.monkeyIteration)).lower()
        #crash인것만 하기 위해서 변경 한다.
        self.result['Stress'][0] = all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        # all함수의 의미는 리스트의 항목들이 모두 True인지를 검사하는 기능을 담당한다.
        #self.result['Stress'][0] = self.result['Stress'][1].find('crash:') == -1
        
#       print self.result['Stress'][1]
        print '========== monkey test !!! ========='
        #실제 monkey 에러만을 구분하여 나눠 준다.
        #이 부분에서 monkey 자체가 뻗어서 죽는 경우에도 monkeyError를 초기화 해줘야 한다.
        #if self.result['Stress'][1].find('crash:') != -1:
        #    monkeyError = self.result['Stress'][1].split('crash:')
        
        if(self.result['Stress'][0] == True):
            self.m_logger.info(self.result['Stress'][1])
        else:
            self.m_logger.error(self.result['Stress'][1])
            #에러가 발생하면 무조건 카운팅 해준다. 
            self.errorReport['monkey'][0] += 1     
            #같은 에러인지를 판별해주는 루틴이다.
            for preError in self.errorList:
                if diffError(preError,self.result['Stress'][1]) >= 80: 
                    overlapError = True
                    break
            
            if overlapError == False:
                self.errorReport['monkey'][1] += 1
                #현재 에러를 반영 시켜 준다.         
                self.errorList.append(self.result['Stress'][1])
                     
    def testUninstall(self):
        while True:
            try:
                self.result['Uninstall'][1] = run('adb -s %s uninstall %s' % (self.deviceName,self.pkgName))
                print self.result['Uninstall'][1]
                
                if self.result['Uninstall'][1][-9:-2] == 'Success':
                    self.result['Uninstall'][0] = True
                    self.m_logger.info(self.result['Uninstall'][1])
                else:
                    self.m_logger.error(self.result['Uninstall'][1])
                break
            except (IOError):
                continue
            
    def CurrentSensing(self, mode):
        mTotalPower = 0
        sensingCount = 0
        data = run('adb -s %s shell dmesg -c'%(self.deviceName)).splitlines()
        
        # 1을 정의하는 경우 Current Sensor값을 초기화 시킨다.
        if (mode == 1):
            return 
        
        try:
            for i in data:
                if(i.find('batt:') != -1 and i.find('(') != -1):
                    current = i.split('(')[1].split(' ')[0]
                    voltage = i.split('mV')[0].split(',')[1]
                    power = int(current) * int(voltage) / 1000
                    mTotalPower += power
                    sensingCount +=1
                    
                    self.mTotalCurrent += int(current)
                    self.ListOfCurrent.append(int(current))
                    self.ListOfVoltage.append(int(voltage))
                    self.ListOfPower.append(power)
                    
        except ValueError:
            print 'invalid literal'
        
        #calculate average power consumption
        self.mAvePower = (mTotalPower * 1.0) / sensingCount
                
                
    #Current Sensor의 센싱 값을 얻기위해서 기다려주는 코드이다.
    def TimeToUp(self):
        wait=self.EndTime-self.startTime
        if (wait >= 50):
            return 
        else :     
            time.sleep(wait)
            
    def AdbOverNetwork(self,command):
        try:
            timemer = TimeoutFunction(2)
            out = run(command)          
            #timeout을 정지 시킨다. 
            timemer.timeEnd()
        except TimeoutFunctionException:
            os.kill(out.pid, signal.SIGINT)
            print 'ADB over network command Failed.. killed process pid:%s'%(out.pid)
            return 
        else: 
            #정상적으로 adb가 connection 되었는지를 확인 한다.
            print 'ADB Over Network Success !'

    def AdbReboot(self):
        out=run_pid("adb -s %s shell reboot"%(self.deviceName))
        time.sleep(1)
        os.kill(out.pid, signal.SIGINT)
                   
    def summary(self):
        #테스팅 종료 시간이다.
        self.EndTime = time.time()
        #대기 시간이 필요할 경우, current senssing을 위해서 기다린다.
        self.TimeToUp()
        #current Sensing값을 얻어온다.
        self.CurrentSensing(0)
        #성능 계측기를 정지 시킨다. 
        self.FnishedPerforCounter()
        
        # calculate TestingTime and Translate fomal time
        self.testingTime = time.strftime('%H:%M:%S',time.gmtime(self.EndTime - self.startTime))      
               
        #마지막으로 실패한 Activity와 monkey에 의한 error를 출력 한다.
        print '===================|| summary ||==================='
        print 'App: %s'%(self.apk)
        print 'version: %s'%(self.version)
        print 'Testing Duration Time: %s'%(self.testingTime)
        print 'Install: %s'%self.result['Install'][0]
        print 'Reinstall: %s'%self.result['Reinstall'][0]
        print 'Uninstall: %s'%self.result['Uninstall'][0] 
        print 'Failed Activity: %d(%d): %s'%(self.numberOfActivity, self.errorReport['activity'][1], self.errorReport['activity'][0])
        print 'Failed BroadCast: %d(%d): %s'%(self.numberOfBroadCast,self.errorReport['broadcast'][1],self.errorReport['broadcast'][0])
        print 'Failed Service: %d(%d): %s'%(self.numberOfService,self.errorReport['service'][1],self.errorReport['service'][0])
        print 'monkey error: %d'%(self.errorReport['monkey'][0])
        print 'No overlap monkey error: %d'%(self.errorReport['monkey'][1])
        print "Network Condition: %s"%(self.enviromentResult['wifi'])
        print "Total Current: %d"%(self.mTotalCurrent)
        print "Power List: %s"%(self.ListOfPower)
        print self.perforCounter.loadPerforResult()
        
        #마지막으로 로그에 기록을 해준다.
        self.m_logger.info('===================|| summary ||===================')
        self.m_logger.info('App: %s'%(self.apk))
        self.m_logger.info('version: %s'%(self.version))
        self.m_logger.info('Testing Duration Time: %s'%(self.testingTime))
        self.m_logger.info('Install: %s'%self.result['Install'][0])
        self.m_logger.info('Reinstall: %s'%self.result['Reinstall'][0])
        self.m_logger.info('Uninstall: %s'%self.result['Uninstall'][0])
        self.m_logger.info('Failed Activity: %d(%d): %s'%(self.numberOfActivity, self.errorReport['activity'][1], self.errorReport['activity'][0]))
        self.m_logger.info('Failed BroadCast: %d(%d): %s'%(self.numberOfBroadCast,self.errorReport['broadcast'][1],self.errorReport['broadcast'][0]))
        self.m_logger.info('Failed Service: %d(%d): %s'%(self.numberOfService,self.errorReport['service'][1],self.errorReport['service'][0]))
        self.m_logger.info('monkey error: %d'%(self.errorReport['monkey'][0]))
        self.m_logger.info('No overlap monkey error: %d'%(self.errorReport['monkey'][1]))
        self.m_logger.info('Network Condition: %s'%(self.enviromentResult['wifi']))
        self.m_logger.info('Total Current: %d'%(self.mTotalCurrent))
        self.m_logger.info('Power List: %s'%(self.ListOfPower))
        self.m_logger.info(self.perforCounter.loadPerforResult())
        
        #마지막으로 Database에 기록을 한다. 

        datetime = time.strftime('%Y-%m-%d %H:%M:%S')  
        try:
            self.cursor.execute('''INSERT INTO TestingResult VALUES(
            '%s','%s','%s','%s','%s'
            ,'%s','%s','%s'
            ,'%d','%d','%d'
            ,'%d','%d','%s'
            ,'%f','%f','%d'
            ,'%f','%s','%s'
            ,'%s','%d')'''
            %(self.deviceName,self.pkgName,self.apk, self.version,self.testingTime,
              self.result['Install'][0],self.result['Reinstall'][0],self.result['Uninstall'][0]
              ,self.errorReport['activity'][1],self.errorReport['broadcast'][1],self.errorReport['service'][1]
              ,self.errorReport['monkey'][0],self.errorReport['monkey'][1],self.enviromentResult['wifi']
              ,self.perforResult['cpu'],self.perforResult['Networks'],self.perforResult['packet']
              ,self.mAvePower,self.logfileName,self.logfilePath,
              datetime,int(self.monkeyIteration)))
                                
        except MySQLdb.Error:   
            datetime = time.strftime('%Y-%m-%d %H:%M:%S')
            self.cursor.execute("INSERT INTO TestFailedApp VALUES('%s','%s','%s')"%(self.pkgName,datetime,self.apk))
            print ''' mysql failed '''
           
        
if __name__ == '__main__':
    
    targetInfo = [{'deviceName':'HT0A1P800732','port':5554},{'deviceName':'HT08DP802665','port':5553}]
    
    mode = raw_input("Please choose mode: 1)apk 2)package 3)more apk 4)Display compatibility 5) debug mode 6) multi mode")
    envirMode = raw_input("Please choose Environment: 1)TCPIP 2)USB")
    iteration = raw_input('monkey iteration: ')
    if mode == '1':
        apkName = raw_input('1) Please input apk name? ')
        
        if not isfile('./apkRepo/%s'%(apkName)):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        p = ApkTest(apkName,iteration,2,'192.168.0.3:5555',5554)
        p.runApkTests()
    elif mode == '2':
        apkName = raw_input('2) Please input apk name? ')
        if not isdir('./ReverseApkRepo/%s'%(apkName.split('.')[0])):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        p = ApkTest(apkName,iteration,envirMode)
        p.runPackageTests()
    elif mode == '3':
        try:
            f = open('./apkList', 'r')
            listData = f.read()
            apkList = listData.split('\n')
            #apkList에 있는 app만큼 반복하면서 실행 한다.
            for apkName in apkList:
                if(apkName.find('.') != -1):
                    print 'Test App:'+apkName
                    p = ApkTest(apkName,iteration,envirMode)
                    p.runApkTests()
                else:
                    print 'Apk name format error: '+apkName
                    break;
                
                #reboot and unlock screen
                p.AdbReboot()
                time.sleep(60)
                
            f.close()
        except (IOError):
            print 'ERROR: Failed open file: apkList.txt'
            exit(-1)
    elif mode == '4':
        try:
            innerMode = raw_input('1) one 2) more')
            if innerMode == '1':
                apkName = raw_input('2) Please input apk name? ')
                if not isdir('./ReverseApkRepo/%s'%(apkName.split('.')[0])):
                    print 'ERROR: apk file does not exist:' + apkName
                    exit(-1)
                p = ApkTest(apkName,10,envirMode)
                p.runCompatibility()
            elif innerMode == '2':
                f = open('./apkList', 'r')
                listData = f.read()
                apkList = listData.split('\n')
                #apkList에 있는 app만큼 반복하면서 실행 한다.
                for apkName in apkList:
                    if(apkName.find('.') != -1):
                        print 'Test App:'+apkName
                        p = ApkTest(apkName,10,envirMode)
                        p.runCompatibility()
                    else:
                        print 'Apk name format error: '+apkName
                f.close()
        except (IOError):
            print 'ERROR: Failed open file: apkList.txt'
            exit(-1)
            
    elif mode == '5':
        apkName = raw_input('1) Please input apk name? ')
        if not isfile('./apkRepo/%s'%(apkName)):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        p = ApkTest(apkName,iteration,envirMode)
        p.runApkTests()
        
    elif mode == '6':
        apkName = raw_input('1) Please input apk name? ')
        if not isfile('./apkRepo/%s'%(apkName)):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        
        th = ApkTest(apkName,iteration,2,'192.168.0.6:5554',5545)
        th.setTestingOption(defineStore.RUN_APK)
        th.start()
        
        th2 = ApkTest(apkName,iteration,2,'192.168.0.3:5555',5544)
        th2.setTestingOption(defineStore.RUN_APK)
        th2.start()

    else:
        print 'Please check your chosen mode !'
        


