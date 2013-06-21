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

#check_output�� ��� ����� �ٷ� String byte�� ����� �ϴ� �Լ��̴�.
#Popen�� ��� ����� ���� ���μ����� ��Ÿ���� ��ü�� ��ȯ�ϰ� �ȴ�. 
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
        
        #Test Mode�� ���� TCP IP / USB
        if(self.testMode == '1'):
            self.AdbOverNetwork('adb -s %s disconnect 192.168.0.3'%(self.deviceName))
            time.sleep(1)
            self.AdbOverNetwork('adb -s %s connect 192.168.0.3'%(self.deviceName))
            time.sleep(5)
            
        #������ ������� �ΰŸ� ���� �Ѵ�. 
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
        #isupper()�� ��� �׳� �빮������ �Ǵ��ϴ� ���̴�.
        #�ᱹ �Ʒ��� �ǹ̴� dir������ ������ ������ �ɹ� �ż���� �߿��� 'testInstall', 'testReinstall', 'testStress', 'testUninstall'����
        #���� ��� �������� �����ϴ� ����� �Ѵ�.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())
        #���Ӹ��� ���ؼ� ����ϴ� �������� ����
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
        # mode number 1�� current senssing�� �ʱ�ȭ �̴�.
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
        #monkeyrunner �׽��� �ڵ带 ����� �κ�
        #self.reverseApk()   
        self.parsingManifestXml() 
        
        #����Ʈ���� ȯ���� ���� �Ѵ�.
        self.enviromentControl()
        
        #monkey�� �ܵ����� �����ϴ� �ڵ� 
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

        #����Ʈ���� ȯ���� ���� �Ѵ�.
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
        #monkey�� �ܵ����� �����ϴ� �ڵ� 
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
        
        #apk �̸����� ���͸��� ���� �Ѵ�. 
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
                
        #�Ľ� ����� ���� �Ѵ�.    
        self.pkgName = handler.packageName
        self.version = handler.version
        self.numberOfActivity = handler.numberOfActivity
        self.numberOfBroadCast = handler.numberOfBroadCast
        self.numberOfService = handler.numberOfService
        
        self.activityList = handler.activityList
        self.receiverList = handler.receiverList
        self.serviceList = handler.serviceList
        self.permissionList = handler.permissionList
        
        #�Ľ� ����� ��� �Ѵ�.
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
        
        #���������� �����ؾ��� ����� ����ϱ� ��
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
        #�а� ���� �̸� ���� ������ ���� �Ѵ�. 
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
            #��ũ�� ���� ��´�. apk�̸��� activity�̸��� ���� �Ѵ�.
            #snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], activity)
            
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))         
            #snapshot.DeviceTakeSnapshot('onCreate')
            #self.solo.event_controller.singleEnter()
            
            #self.solo.device.adb_console.startPhoneDialer('01044445555')
            #snapshot.DeviceTakeSnapshot('onPause')
            #backŰ�� ������ ���� ���¸� Ŭ�� �Ѵ�. 
            #self.solo.event_controller.singleEnter()
            
            #self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))        
            #�޽��� ������ �����ϴ� �۾��� �Ѵ�. ���Ŀ� �̰��� ���� �ش� ��ũ�������� �ǵ� �Ѵ�. 
            if self.result['Activity'][1][0:5] == 'Start' and self.result['Activity'][1].find('Error') == -1: 
                self.result['Activity'][0] = True
                self.m_logger.info(self.result['Activity'][1])
                #��Ƽ��Ƽ�� ������ ���� ���� ������ monkey �׽����� ������ �ش�.
                self.testStress()
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #������ activity�� ���ؼ� ����� ���ش�. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #���� �Ѵ�.
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
        
    #Display�� compatibility�� �׽��� �ϴ� �ڵ� �̴�.
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
                #��ũ�� ���� ��´�. apk�̸��� activity�̸��� ���� �Ѵ�.
                snapshot = takeSnapshot.takeSnapshot(self.deviceName, self.apk.split('.')[0], activity)
                snapshot.DeviceTakeSnapshot()
                
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #������ activity�� ���ؼ� ����� ���ش�. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #���� �Ѵ�.
            self.solo.event_controller.singleBack()
            print '====== finished Activity Testing:'+activity+' ======='
            self.m_logger.info('====== finished Activity Testing:'+activity+' =======') 
                                                
    def testStress(self):
        overlapError = False
             
        self.result['Stress'][1] = run('adb -s %s shell monkey --kill-process-after-error --throttle 200 --pct-touch 20 --pct-motion 20 --pct-trackball 20 --pct-majornav 20 --pct-anyevent 20 -p %s -v -v %s' %(self.deviceName,self.pkgName,self.monkeyIteration)).lower()
        #crash�ΰ͸� �ϱ� ���ؼ� ���� �Ѵ�.
        self.result['Stress'][0] = all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        # all�Լ��� �ǹ̴� ����Ʈ�� �׸���� ��� True������ �˻��ϴ� ����� ����Ѵ�.
        #self.result['Stress'][0] = self.result['Stress'][1].find('crash:') == -1
        
#       print self.result['Stress'][1]
        print '========== monkey test !!! ========='
        #���� monkey �������� �����Ͽ� ���� �ش�.
        #�� �κп��� monkey ��ü�� ��� �״� ��쿡�� monkeyError�� �ʱ�ȭ ����� �Ѵ�.
        #if self.result['Stress'][1].find('crash:') != -1:
        #    monkeyError = self.result['Stress'][1].split('crash:')
        
        if(self.result['Stress'][0] == True):
            self.m_logger.info(self.result['Stress'][1])
        else:
            self.m_logger.error(self.result['Stress'][1])
            #������ �߻��ϸ� ������ ī���� ���ش�. 
            self.errorReport['monkey'][0] += 1     
            #���� ���������� �Ǻ����ִ� ��ƾ�̴�.
            for preError in self.errorList:
                if diffError(preError,self.result['Stress'][1]) >= 80: 
                    overlapError = True
                    break
            
            if overlapError == False:
                self.errorReport['monkey'][1] += 1
                #���� ������ �ݿ� ���� �ش�.         
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
        
        # 1�� �����ϴ� ��� Current Sensor���� �ʱ�ȭ ��Ų��.
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
                
                
    #Current Sensor�� ���� ���� ������ؼ� ��ٷ��ִ� �ڵ��̴�.
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
            #timeout�� ���� ��Ų��. 
            timemer.timeEnd()
        except TimeoutFunctionException:
            os.kill(out.pid, signal.SIGINT)
            print 'ADB over network command Failed.. killed process pid:%s'%(out.pid)
            return 
        else: 
            #���������� adb�� connection �Ǿ������� Ȯ�� �Ѵ�.
            print 'ADB Over Network Success !'

    def AdbReboot(self):
        out=run_pid("adb -s %s shell reboot"%(self.deviceName))
        time.sleep(1)
        os.kill(out.pid, signal.SIGINT)
                   
    def summary(self):
        #�׽��� ���� �ð��̴�.
        self.EndTime = time.time()
        #��� �ð��� �ʿ��� ���, current senssing�� ���ؼ� ��ٸ���.
        self.TimeToUp()
        #current Sensing���� ���´�.
        self.CurrentSensing(0)
        #���� �����⸦ ���� ��Ų��. 
        self.FnishedPerforCounter()
        
        # calculate TestingTime and Translate fomal time
        self.testingTime = time.strftime('%H:%M:%S',time.gmtime(self.EndTime - self.startTime))      
               
        #���������� ������ Activity�� monkey�� ���� error�� ��� �Ѵ�.
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
        
        #���������� �α׿� ����� ���ش�.
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
        
        #���������� Database�� ����� �Ѵ�. 

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
            #apkList�� �ִ� app��ŭ �ݺ��ϸ鼭 ���� �Ѵ�.
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
                #apkList�� �ִ� app��ŭ �ݺ��ϸ鼭 ���� �Ѵ�.
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
        


