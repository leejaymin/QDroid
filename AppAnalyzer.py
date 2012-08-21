#!/usr/bin/env python
#coding: euc-kr

################################################################
# Author:  Jemin Lee <leejaymin@cnu.ac.kr>
# Date:  2012-06-20
# Version: 1.3
################################################################
import logging, time
import Logger

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
#################################################################

class ApkTest:
    apk = ''
    apkInfo = ''
    pkgName = ''
    actName = ''

    result = {}

    def __init__(self, apk, device_name="emulator-5554", device_port=5554, device_address="127.0.0.1",):
        self.apk = apk
        self.StaticTestingForm = StaticTestingForm.StaticTestingForm()
        #오류를 기록해줄 로거를 생성 한다. 
        self.m_logger = Logger.InitLog("solo-interface.log", logging.getLogger("solo-interface.thread"))
        self.solo = SoloInterface()
        self.solo.setUp()
        
    def init(self):
        self.getApkInfo()
        #isupper()의 경우 그냥 대문자인지 판단하는 거이다.
        #결국 아래의 의미는 dir햇을때 나오는 수많은 맴버 매서드들 중에서 'testInstall', 'testReinstall', 'testStress', 'testUninstall'만을
        #가려 내어서 사전으로 생성하는 기능을 한다.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and   len(i) > 4 and  i[4].isupper())
        print dir(ApkTest)
    def reverseApk(self):
        try:
            run('./apktool d -f ./apkRepo/%s ./ReverseApkRepo/%s' % (self.apk, (self.apk).split('.')[0]))
        except (RuntimeError):
            return
        
    def parsingManifestXml(self):
        f = open('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
        manifest = f.read()
        print manifest
        handler = ManifestHandler.ManifestHandler('activity')
        parser = make_parser()
        parser.setContentHandler(handler)
        parser.parse('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.apk).split('.')[0])
         
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
        #self.testUninstall()
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

    def testReinstall(self):
        self.result['Reinstall'][1] = check_output('adb install -r ./apkRepo/%s' % (self.apk), shell=True, stderr=STDOUT, executable='/bin/bash')
        print self.result['Reinstall'][1]
        
        if self.result['Reinstall'][1][-9:-2] == 'Success':
            self.result['Reinstall'][0] = True

    #activity 테스팅을 하는 코드이다.
    def testActivity(self):
        for activity in ManifestHandler.ManifestHandler.activityList:
            self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))
            
            
        
        
    def testStress(self):
        run_wait('adb shell am kill %s'% (self.pkgName))
        run_wait('adb shell am force-stop %s'% (self.pkgName))        
        self.result['Stress'][1] = run('adb shell monkey --kill-process-after-error  --throttle 200 -p %s 1000' %( self.pkgName)).lower()
        self.result['Stress'][0] =  all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        run_wait('adb shell am kill %s'% (self.pkgName))
        run_wait('adb shell am force-stop %s'% (self.pkgName))   
        
    def testUninstall(self):
        while True:
            try:
                self.result['Uninstall'][1] = run('adb uninstall %s' % (self.pkgName))
                print self.result['Uninstall'][1]
                
                if self.result['Uninstall'][1][-9:-2] == 'Success':
                    self.result['Uninstall'][0] = True
                break
            except (IOError):
                continue

    def summary(self):
        self.solo.startActivity(component='edu.umich.PowerTutor/.ui.Help')
        for i in ((k, self.result[k][1]) for k in self.result if k[0].isupper() and self.result[k][0] != True):
            print 'FAILED:%s %s' % (i[0], i[1])

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
