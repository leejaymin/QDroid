#!/usr/bin/env python
#coding: euc-kr

################################################################
# Author:  Jemin Lee <leejaymin@cnu.ac.kr>
# Date:  2012-06-20
# Version: 1.3
################################################################
import logging, time
import TestingLogger
from Utility import diffError

from sys import exit
from os import path
from os import mkdir
from subprocess import check_output, Popen, STDOUT
from xml.sax import make_parser, handler
import sys
from ApkAnalyzer import ManifestHandler
from TestingCodeForm import StaticTestingForm
from TestingCodeForm import takeSnapshot
from SoloInterface import SoloInterface
from TestingToolkit import PerformanceCounter

################################################################

isabs = path.isabs
isfile = path.isfile
isdir = path.isdir  

islink = path.islink
ismount = path.ismount
run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
run_wait = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash').wait()
#run = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash' )

#check_output�� ��� ����� �ٷ� String byte�� ����� �ϴ� �Լ��̴�.
#Popen�� ��� ����� ���� ���μ����� ��Ÿ���� ��ü�� ��ȯ�ϰ� �ȴ�. 
#################################################################

class ApkTest:
    apk = ''
    apkInfo = ''
    pkgName = ''
    actName = ''
    currentProgress = 0
    complteProgress = 0
    
    result = {}
    errorReport = {}
    
    def __init__(self, apk, monkeyIteration):
        self.apk = apk
        self.monkeyIteration = monkeyIteration
        self.StaticTestingForm = StaticTestingForm.StaticTestingForm()
        #������ ������� �ΰŸ� ���� �Ѵ�. 
        #HTC Desire device_name="12B9WE630015"
        self.solo = SoloInterface(device_name='12B9WE630015')
        self.solo.setUp()
        
    def init(self):
        self.loggingInit()
        #isupper()�� ��� �׳� �빮������ �Ǵ��ϴ� ���̴�.
        #�ᱹ �Ʒ��� �ǹ̴� dir������ ������ ������ �ɹ� �ż���� �߿��� 'testInstall', 'testReinstall', 'testStress', 'testUninstall'����
        #���� ��� �������� �����ϴ� ����� �Ѵ�.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())
        #���Ӹ��� ���ؼ� ����ϴ� �������� ����
        self.errorReport = {'activity':['',0],'broadcast':'','service':'','monkey':[0,0]}
        self.errorList = [' ']
        self.perforResult = {'cpu':0.0,'wifi':0.0}
        self.enviromentResult = {'wifi':False}
        self.startTime = time.time()
    
    def enviromentControl(self):
        for permission in ManifestHandler.ManifestHandler.permissionList:
            if permission.find('android.permission.INTERNET') != -1:
                self.enviromentResult['wifi'] = True
    
    def finished(self):
        self.solo.close()
        
    def loggingInit(self):
        #apk �̸����� ���͸��� ���� �Ѵ�. 
        FileCount = 0
        try:     
            FileName = self.apk.split('.')[0]
            mkdir('/root/python_source/AutoTestingModule/TestingResult/%s'%(FileName))
        except AttributeError:
            print 'tuple object has no attribute split'
        except OSError:
            print 'File exists: /root/python_source/AutoTestingModule/TestingResult/'+FileName
            
        while True:   
            if path.isfile("./TestingResult/%s(%s).log" %(FileName,FileCount)):
                FileCount += 1
            else:
                break;               
           
        self.m_logger = TestingLogger.InitLog("./TestingResult/%s/%s(%s).log" % (FileName, FileName, FileCount), logging.getLogger("%s"%self.apk))
        
    def InitPerformnaceCounter(self):
        self.perforCounter = PerformanceCounter.PerformanceCounter(self.solo, self.m_logger, self.apk.split('.')[0])
        self.perforCounter.startPerforCounter()
    
    def FnishedPerforCounter(self):
        self.perforCounter.stopPerforCounter()
        self.perforResult['cpu'] = self.perforCounter.loadPerforResult()
    
    def reverseApk(self):
        try:
            run('./apktool d -f ./apkRepo/%s ./ReverseApkRepo/%s' % (self.apk, (self.apk).split('.')[0]))
        except (RuntimeError):
            return
        
    def parsingManifestXml(self):
        #f = open('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
        #manifest = f.read()
        #print manifest
        handler = ManifestHandler.ManifestHandler('activity')
        parser = make_parser()
        parser.setContentHandler(handler)
        parser.parse('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
        
        self.m_logger.info("Reversing Activity List")
        for activity in ManifestHandler.ManifestHandler.activityList:
            print activity
            self.m_logger.info(activity)
            
        self.pkgName = handler.packageName
        self.version = handler.version
        self.numberOfActivity = handler.numberOfActivity
        self.numberOfBroadCast = handler.numberOfBroadCast
        self.numberOfService = handler.numberOfService
        #���������� �����ؾ��� ����� ����ϱ� ��
        self.complteProgress = self.numberOfActivity+self.numberOfBroadCast+self.numberOfService
        
        self.m_logger.info('======== complete parsing xml ===========')
        print '======== complete parsing xml ==========='
         
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
                          
    def runApkTests(self): 
        self.init()
        #monkeyrunner �׽��� �ڵ带 ����� �κ�
        self.reverseApk()   
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
        run('adb uninstall ./apkRepo/%s' % (self.pkgName))
        self.result['Install'][1] = check_output('adb install ./apkRepo/%s' % (self.apk), shell=True, stderr=STDOUT, executable='/bin/bash')
        print self.result['Install'][1]
        
        if self.result['Install'][1][-9:-2] == 'Success':
            self.result['Install'][0] = True
            self.m_logger.info(self.result['Install'][1])
        else:
            self.m_logger.error(self.result['Install'][1])

    def testReinstall(self):
        self.result['Reinstall'][1] = check_output('adb install -r ./apkRepo/%s' % (self.apk), shell=True, stderr=STDOUT, executable='/bin/bash')
        print self.result['Reinstall'][1]
        
        if self.result['Reinstall'][1][-9:-2] == 'Success':
            self.result['Reinstall'][0] = True
            self.m_logger.info(self.result['Reinstall'][1])
        else:
            self.m_logger.error(self.result['Reinstall'][1])

    def testActivity(self):
        for activity in ManifestHandler.ManifestHandler.activityList:
            print '====== Starting Activity Testing:'+activity+' ======='
            self.currentProgress += 1
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            #��ũ�� ���� ��´�. apk�̸��� activity�̸��� ���� �Ѵ�.
            snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], activity)
            
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))         
            snapshot.DeviceTakeSnapshot('onCreate')
            #self.solo.event_controller.singleEnter()
            
            self.solo.device.adb_console.startPhoneDialer('01044445555')
            snapshot.DeviceTakeSnapshot('onPause')
            #backŰ�� ������ ���� ���¸� Ŭ�� �Ѵ�. 
            #self.solo.event_controller.singleEnter()
            
            self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))        
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
                                              
    def testBroadCast(self):
        for broadCast in ManifestHandler.ManifestHandler.receiverList:
            print '=============Start testBroadCast !============='  
            self.currentProgress += 1
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.result['BroadCast'][1] = self.solo.device.adb_console.sendBroadcastIntent(broadCast)
            if self.result['BroadCast'][1].find('completed') == -1:
                self.result['BroadCast'][0] = False
                self.m_logger.error(self.result['BroadCast'][1])
                self.errorReport['broadcast'] += ' '+broadCast 
            else:
                self.result['BroadCast'][0] = True
                self.m_logger.info(self.result['BroadCast'][1])
                
            snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], broadCast)
            snapshot.DeviceTakeSnapshot('send')
            print '=============Finished testBroadCast !============='  

    def testService(self):
        for service in ManifestHandler.ManifestHandler.serviceList:
            print '=============Start testService !=============' 
            self.currentProgress += 1
            print '======== Progress: %d/%d ========='%(self.complteProgress,self.currentProgress)
            self.result['Service'][1] = self.solo.device.adb_console.startService(service)
            if self.result['Service'][1].find('Starting') == -1:
                self.result['Service'][0] = False
                self.m_logger.error(self.result['Service'][1])
                self.errorReport['Service'] += ' '+service 
            else:
                self.result['Service'][0] = True
                self.m_logger.info(self.result['Service'][1])
            
            snapshot = takeSnapshot.takeSnapshot(self.apk.split('.')[0], service)
            snapshot.DeviceTakeSnapshot('start')
            print '=============Finished testService !=============' 

        
    #activity �׽����� �ϴ� �ڵ��̴�.
    def ActivityTesting(self):
        for activity in ManifestHandler.ManifestHandler.activityList:
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))
            if self.result['Activity'][1][0:5] == 'Start':
                self.result['Activity'][0] = True
                self.m_logger.info(self.result['Activity'][1])
                #��Ƽ��Ƽ�� ������ ���� ���� ������ monkey �׽����� ������ �ش�.
                self.testStress()
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #������ activity�� ���ؼ� ����� ���ش�. 
                self.errorReport['activity'][0] += ' '+activity 
                                                
    def testStress(self):
        overlapError = False
             
        self.result['Stress'][1] = run('adb shell monkey --kill-process-after-error --throttle 200 --pct-motion 25 --pct-trackball 25 --pct-majornav 25 --pct-anyevent 25 -p %s -v -v %s' %(self.pkgName,self.monkeyIteration)).lower()
        #crash�ΰ͸� �ϱ� ���ؼ� ���� �Ѵ�.
        #self.result['Stress'][0] = all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        # all�Լ��� �ǹ̴� ����Ʈ�� �׸���� ��� True������ �˻��ϴ� ����� ����Ѵ�.
        self.result['Stress'][0] = self.result['Stress'][1].find(' crashed') == -1
        print self.result['Stress'][1]
        
        #���� monkey �������� �����Ͽ� ���� �ش�.
        if self.result['Stress'][1].find('crash:') != -1:
            monkeyError = self.result['Stress'][1].split('crash:')
        
        if(self.result['Stress'][0] == True):
            self.m_logger.info(self.result['Stress'][1])
        else:
            self.m_logger.error(self.result['Stress'][1])
            #������ �߻��ϸ� ������ ī���� ���ش�. 
            self.errorReport['monkey'][0] += 1     
            #���� ���������� �Ǻ����ִ� ��ƾ�̴�.
            for preError in self.errorList:
                if diffError(preError,monkeyError[1]) >= 80: 
                    overlapError = True
                    break
            
            if overlapError == False:
                self.errorReport['monkey'][1] += 1
                #���� ������ �ݿ� ���� �ش�.         
                self.errorList.append(monkeyError[1])
                     
    def testUninstall(self):
        while True:
            try:
                self.result['Uninstall'][1] = run('adb uninstall %s' % (self.pkgName))
                print self.result['Uninstall'][1]
                
                if self.result['Uninstall'][1][-9:-2] == 'Success':
                    self.result['Uninstall'][0] = True
                    self.m_logger.info(self.result['Uninstall'][1])
                else:
                    self.m_logger.error(self.result['Uninstall'][1])
                break
            except (IOError):
                continue

    def summary(self):
        #�׽��� ���� �ð��̴�.
        self.EndTime = time.time()
        #���� �����⸦ ���� ��Ų��. 
        self.perforCounter.stopPerforCounter()
                    
        #���������� ������ Activity�� monkey�� ���� error�� ��� �Ѵ�.
        print '===================|| summary ||==================='
        print 'App: %s'%(self.apk)
        print 'version: %s'%(self.version)
        print 'Testing Duration Time: %f'%(self.EndTime-self.startTime)
        print 'Install: %s'%self.result['Install'][0]
        print 'Reinstall: %s'%self.result['Reinstall'][0]
        print 'Uninstall: %s'%self.result['Uninstall'][0] 
        print 'Failed Activity: %d(%d): %s'%(self.complteProgress, self.errorReport['activity'][1], self.errorReport['activity'][0])
        print 'Failed BroadCast: %s'%(self.errorReport['broadcast'])
        print 'Failed Service: %s'%(self.errorReport['service'])
        print 'moneky error: %d'%(self.errorReport['monkey'][0])
        print 'No overlap moneky error: %d'%(self.errorReport['monkey'][1])
        print "Network Condition: %s"%(self.enviromentResult['wifi'])
        print self.perforCounter.loadPerforResult()
        
        #���������� �α׿� ����� ���ش�.
        self.m_logger.info('===================|| summary ||===================')
        self.m_logger.info('App: %s'%(self.apk))
        self.m_logger.info('version: %s'%(self.version))
        self.m_logger.info('Testing Duration Time: %f'%(self.EndTime-self.startTime))
        self.m_logger.info('Install: %s'%self.result['Install'][0])
        self.m_logger.info('Reinstall: %s'%self.result['Reinstall'][0])
        self.m_logger.info('Uninstall: %s'%self.result['Uninstall'][0])
        self.m_logger.info('Failed Activity: %d(%d): %s'%(self.complteProgress, self.errorReport['activity'][1], self.errorReport['activity'][0]))
        self.m_logger.info('Failed BroadCast: %s'%(self.errorReport['broadcast']))
        self.m_logger.info('Failed Service: %s'%(self.errorReport['service']))
        self.m_logger.info('moneky error: %d'%(self.errorReport['monkey'][0]))
        self.m_logger.info('No overlap moneky error: %d'%(self.errorReport['monkey'][1]))
        self.m_logger.info('Network Condition: %s'%(self.enviromentResult['wifi']))
        self.m_logger.info(self.perforCounter.loadPerforResult())
        
if __name__ == '__main__':
#    kwargs = dict(i.strip('\'"').split('=') for i in sys.argv if i.find('=') > 0)
#    if not kwargs.has_key('apk'):
#        print 'Usage: main.py   apk=<APK_FILE>'
#        exit(-1)
    mode = raw_input("Please choose mode: 1)apk 2)package ")
    if mode == '1':
        apkName = raw_input('1) Please input apk name? ')
        iteration = raw_input('monkey iteration: ')
        if not isfile('./apkRepo/%s'%(apkName)):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        p = ApkTest(apkName,iteration)
        p.runApkTests()
    elif mode == '2':
        apkName = raw_input('2) Please input apk name? ')
        iteration = raw_input('monkey iteration: ')
        if not isdir('./ReverseApkRepo/%s'%(apkName.split('.')[0])):
            print 'ERROR: apk file does not exist:' + apkName
            exit(-1)
        p = ApkTest(apkName,iteration)
        p.runPackageTests()
    else:
        print 'Please check your chosen mode !'
        


