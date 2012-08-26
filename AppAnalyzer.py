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
from subprocess import check_output, Popen, STDOUT
from xml.sax import make_parser, handler
import sys
from ApkAnalyzer import ManifestHandler
from TestingCodeForm import StaticTestingForm
from SoloInterface import SoloInterface

################################################################

isabs = path.isabs
isfile = path.isfile
isdir = path.isdir  

islink = path.islink
ismount = path.ismount
run = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
run_wait = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash').wait()
#run = lambda cmd: Popen(cmd, shell=True, executable='/bin/bash' )

#check_output은 출력 결과를 바로 String byte로 출력을 하는 함수이다.
#Popen은 출력 결과를 하위 프로세스를 나타내는 객체로 반환하게 된다. 
#################################################################

class ApkTest:
    apk = ''
    apkInfo = ''
    pkgName = ''
    actName = ''

    result = {}
    errorReport = {}
    
    def __init__(self, apk):
        self.apk = apk
        self.StaticTestingForm = StaticTestingForm.StaticTestingForm()
        #오류를 기록해줄 로거를 생성 한다. 
        #self.m_logger = Logger.InitLog("solo-interface.log", logging.getLogger("solo-interface.thread"))
        #HTC Desire device_name="12B9WE630015"
        self.solo = SoloInterface()
#        self.solo.setUp()
        
    def init(self):
        self.getApkInfo()
        self.loggingInit()
        #isupper()의 경우 그냥 대문자인지 판단하는 거이다.
        #결국 아래의 의미는 dir햇을때 나오는 수많은 맴버 매서드들 중에서 'testInstall', 'testReinstall', 'testStress', 'testUninstall'만을
        #가려 내어서 사전으로 생성하는 기능을 한다.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())
        #서머리를 위해서 사용하는 변수들의 정의
        self.errorReport = {'activity':'','monkey':[0,0]}
        self.startTime = time.time()
        self.errorList = [' ']
    def loggingInit(self):
        self.m_logger = TestingLogger.InitLog("./TestingResult/%s.log"%(self.apk), logging.getLogger("%s"%(self.apk)))
        
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
        self.m_logger.info('======== complete parsing xml ===========')
        print '======== complete parsing xml ==========='
         
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
                          
    def runTests(self): 
     
        self.init()
        #monkeyrunner 테스팅 코드를 만드는 부분
        self.reverseApk()   
        self.parsingManifestXml() 
        self.GenerateTestingScript()
        #self.Monkeyrunner() #monkeyrunner를 통하여 실행을 할 경우이다.
        
        #monkey를 단독으로 실행하는 코드 
        self.testInstall()
        self.testReinstall()
        self.testActivity()
        #self.testStress()
        self.testUninstall()
        self.summary()
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

    #activity 테스팅을 하는 코드이다.
    def testActivity(self):
#       self.solo.startActivity(component='edu.umich.PowerTutor/.widget.Configure')
        for activity in ManifestHandler.ManifestHandler.activityList:
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))
#            print self.result['Activity'][1]
            if self.result['Activity'][1][0:5] == 'Start':
                self.result['Activity'][0] = True
                self.m_logger.info(self.result['Activity'][1])
                #엑티비티가 오류가 업을 때만 실행해 monkey 테스팅을 실행해 준다.
                self.testStress()
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #실패한 activity에 대해서 기록을 해준다. 
                self.errorReport['activity'] += activity 
                                        
#           self.solo.event_controller.press('home')            
#           self.summary()
            
    def testStress(self):
        overlapError = False
             
        self.result['Stress'][1] = run('adb shell monkey --kill-process-after-error  --throttle 500 -p %s -v -v 1000' %( self.pkgName)).lower()
        self.result['Stress'][0] = all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        # all함수의 의미는 리스트의 항목들이 모두 True인지를 검사하는 기능을 담당한다.
        print self.result['Stress'][1]
        
        #실제 monkey 에러만을 구분하여 나눠 준다.
        if self.result['Stress'][1].find('crash:') != -1:
            monkeyError = self.result['Stress'][1].split('crash:')
        
        if(self.result['Stress'][0] == True):
            self.m_logger.info(self.result['Stress'][1])
        else:
            self.m_logger.error(self.result['Stress'][1])
            #에러가 발생하면 무조건 카운팅 해준다. 
            self.errorReport['monkey'][0] += 1     
              
            #같은 에러인지를 판별해주는 루틴이다.
            for preError in self.errorList:
                if diffError(preError,monkeyError[1]) >= 80: 
                    overlapError = True
                    break
            
            if overlapError == False:
                self.errorReport['monkey'][1] += 1
                #현재 에러를 반영 시켜 준다.         
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
        self.EndTime = time.time()
        #마지막으로 실패한 Activity와 monkey에 의한 error를 출력 한다.
        print '===================|| summary ||==================='
        print 'Testing Duration Time: %f'%(self.EndTime-self.startTime)
        print 'Failed Activity: %s'%(self.errorReport['activity'])
        print 'moneky error: %d'%(self.errorReport['monkey'][0])
        print 'No overlap moneky error: %d'%(self.errorReport['monkey'][1])
        
if __name__ == '__main__':
#    kwargs = dict(i.strip('\'"').split('=') for i in sys.argv if i.find('=') > 0)
#    if not kwargs.has_key('apk'):
#        print 'Usage: main.py   apk=<APK_FILE>'
#        exit(-1)
    apkName = raw_input('Pleace input apk name? ')
    
    if not isfile('./apkRepo/%s'%(apkName)):
        print 'ERROR: apk file does not exist:' + apkName
        exit(-1)
    p = ApkTest(apkName)
    p.runTests()
