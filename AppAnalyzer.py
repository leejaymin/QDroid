#!/usr/bin/env python
#coding: euc-kr

################################################################
# Author:  Jemin Lee <leejaymin@cnu.ac.kr>
# Date:  2012-06-20 - 2014-07-13
# Version: 2.0
################################################################
import logging, time, threading, sys
import TestingLogger
import os
import signal
import MySQLdb
import multiprocessing
import defineStore
import wx
import traceback
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
from mercurial.commands import update
from traceback import print_stack
from scipy.stats.stats import stderr


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

class ApkTestApp(wx.App):
    def __init__(self):
        """
        Initialise the App.
        """
        wx.App.__init__(self)
     
#    def OnInit(self):
    def ShowFrame(self,frame):
        self.SetTopWindow(frame)
        print "start OnInit"
        frame.Show(True)
        return True
          
class ApkTest(multiprocessing.Process, wx.Frame):
    
    def __init__(self,
                 TESTING_PROJECT_NAME,
                 RUN_MODE,
                 APK_NAME, 
                 USB_TCPIP_MODE, 
                 EVENT_COUNT_MONKEY,
                 DEVICE, 
                 MONKEY_PORT,
                 IP_FOR_REMOTE_ADB):
        
        #super class call construct
        multiprocessing.Process.__init__(self)
    
        #--------------- GUI Init ---------------
        wx.Frame.__init__(self, None, -1, 'Automated Testing framework '+DEVICE, wx.Point(700, 500), wx.Size(700, 450))

        # Create the panel, sizer and controls
        self.panel = wx.Panel(self, wx.ID_ANY)
        self.sizer = wx.GridBagSizer(5, 5)

        self.start_bt = wx.Button(self.panel, wx.ID_ANY, "Start")
        self.Bind(wx.EVT_BUTTON, self.OnStart, self.start_bt)
        self.start_bt.SetDefault()
        self.start_bt.SetToolTipString('Start the execution of tasks')
        self.start_bt.ToolTip.Enable(True)

        self.stop_bt = wx.Button(self.panel, wx.ID_ANY, "Stop")
        self.Bind(wx.EVT_BUTTON, self.OnStop, self.stop_bt)
        self.stop_bt.SetToolTipString('Stop the execution of tasks')
        self.stop_bt.ToolTip.Enable(True)

        self.output_tc = wx.TextCtrl(self.panel, wx.ID_ANY, style=wx.TE_MULTILINE|wx.TE_READONLY)

        self.prog_st = wx.StaticText(self.panel, wx.ID_ANY, 'Complete:')

        self.count = 0
        self.prog_gg = wx.Gauge(self.panel, id=wx.ID_ANY, range=100, size=(-1, 15))
        self.prog_gg.SetBezelFace(3)
        self.prog_gg.SetShadowWidth(3)

        # Add the controls to the sizer
        self.sizer.Add(self.start_bt, (0, 0), flag=wx.ALIGN_CENTER|wx.LEFT|wx.TOP, border=5)
        self.sizer.Add(self.stop_bt, (0, 1), flag=wx.ALIGN_CENTER|wx.TOP|wx.RIGHT, border=5)
        self.sizer.Add(self.output_tc, (1, 0), (1, 2), flag=wx.EXPAND|wx.LEFT|wx.RIGHT, border=5)
        self.sizer.Add(self.prog_st, (2, 0), (1, 2), flag=wx.LEFT|wx.RIGHT, border=5)
        self.sizer.Add(self.prog_gg, (3, 0), (1, 2), flag=wx.EXPAND|wx.LEFT|wx.RIGHT|wx.BOTTOM, border=5)
        self.sizer.AddGrowableCol(0)
        self.sizer.AddGrowableCol(1)
        self.sizer.AddGrowableRow(1)

        self.panel.SetSizer(self.sizer)

        self.Bind(wx.EVT_CLOSE, self.OnClose)

        self.output_tc.AppendText('Starting Testing !\n')
    
        #--------------- automated testing init ---------------
        self.TESTING_PROJECT_NAME = TESTING_PROJECT_NAME
        self.RUN_MODE = RUN_MODE
        self.APK_NAME = APK_NAME
        self.USB_TCPIP_MODE = USB_TCPIP_MODE
        self.EVENT_COUNT_MONKEY = EVENT_COUNT_MONKEY
        self.DEVICE = DEVICE
        self.MONKEY_PORT = MONKEY_PORT
        self.IP_FOR_REMOTE_ADB = IP_FOR_REMOTE_ADB
        
        self.StaticTestingForm = StaticTestingForm.StaticTestingForm()
        #------------- redirect text -----------------
        #redir = RedirectText(self.output_tc)
        #sys.stdout = redir
        #sys.sterr = redir
            
    def init(self):
        
        # set up Testing Connection Mode / USB or TCP/IP
        if(self.USB_TCPIP_MODE == 1):
            self.AdbOverNetwork('adb disconnect '+self.IP_FOR_REMOTE_ADB)
            time.sleep(1)
            self.AdbOverNetwork('adb connect '+self.IP_FOR_REMOTE_ADB)
            time.sleep(5)
            
        #오류를 기록해줄 로거를 생성 한다. 
        #Nexus one device name="HT0A1P800732" Buy lab
        #Nexus one device name="HT08DP802665" Borrow kim
        #HTCDesire device_name="12B9WE630015"
        #Galaxy Nexus device_name="0149C7A518014011"
        #IP_FOR_REMOTE_ADB Wi-Fi="192.168.0.3:5555"
        #self.DEVICE= 'HTCNexusOne'
        self.solo = SoloInterface(device_name=self.DEVICE, device_port=self.MONKEY_PORT)
        self.solo.setUp()
        self.MONKEY_SEED = 0
        #progress info
        self.currentProgress = 0
        self.completeProgress = 0
        self.startTime = 0
        
        self.loggingInit()
        #isupper()의 경우 그냥 대문자인지 판단하는 거이다.
        #결국 아래의 의미는 dir햇을때 나오는 수많은 맴버 매서드들 중에서 'testInstall', 'testReinstall', 'testStress', 'testUninstall'만을
        #가려 내어서 사전으로 생성하는 기능을 한다.
        self.result = dict((i[4:], [False, ''])  for i in dir(ApkTest)  if i[0:4] == 'test' and len(i) > 4 and  i[4].isupper())
        # variable for summary
        self.testingResult = {'activity':['',0]}
        self.CoveredActivitiesByActivityManager = []
        self.errorReport = {'activity':['',0],'broadcast':['',0],'service':['',0],'monkey':[0,0]}
        self.errorList = [' ']
        self.perforResult = {'cpu':0.0,'packet':0,'Networks':0.0}
        self.enviromentResult = {'wifi':False}
        self.startTime = time.time()
        
        # variable for coverage
        self.CoveredActivities = []
        self.numberOfCoveredActivities = 0
             
        # variable for power conumpstion
        self.ListOfCurrent = []
        self.ListOfVoltage = []
        self.ListOfPower = []
        self.mTotalCurrent = 0
        self.mAvePower = 0.0
        
        #Device Screen Unlock
        self.solo.event_controller.drag_start(50, 580)
        self.solo.event_controller.drag_end(400, 580)
        # RUN_MODE number 1은 current senssing의 초기화 이다.
        self.CurrentSensing(1)
        
        # init Database 
        self.db = MySQLdb.connect(user='root', passwd = 'root', db ='BugHunter')
        self.cursor = self.db.cursor()
    
        # print app
        print self.APK_NAME
        
    def setUpdate(self,resfunc):
        self.resfunc = resfunc
    
    def setTestingOption(self, option):
        self.RUN_MODE = option
        
    def parsingApkList(self, fileName):
        self.testingTargetAPK = []
        self.iterationOfTestingList = []
        try:
            f = open('./'+fileName,'r')
            listData = f.read()
            apkList = listData.split('\n')
            # Analysing APK List
            for lineOfdata in apkList:
                lineOfdata = lineOfdata.split(' ')
                if lineOfdata[2] == 'do':
                    print 'Test App: '+lineOfdata[0]
                    print "Test Interation: "+lineOfdata[1]
                    self.testingTargetAPK.append(lineOfdata[0])
                    self.iterationOfTestingList.append(int(lineOfdata[1]))
                    wx.Yield()
                else :
                    print lineOfdata[0]+' '+lineOfdata[2]
                wx.Yield()
            f.close()
            # returning list of testing app
        except (IOError):
            print 'ERROR: Failed open file: apkList.txt'
            exit(-1)
        except IndexError as e:
            print '%s\n' % e
            print 'IndexError'

    def run(self):
        # class process RUN_MODE
        
        if(self.RUN_MODE == defineStore.RUN_APK):
            self.output_tc.AppendText('RUN APK Mode\n')
            self.runApkTests()
            
        elif(self.RUN_MODE == defineStore.RUN_APKLIST):
            self.output_tc.AppendText('RUN APK List\n')
            self.parsingApkList(self.APK_NAME)   
            for index in range(len(self.testingTargetAPK)):
                self.APK_NAME = self.testingTargetAPK[index]
                self.iterationOfTesting = self.iterationOfTestingList[index]
                self.runApkTests()
                time.sleep(2)
                self.AdbReboot()
                time.sleep(60)
            
        elif(self.RUN_MODE == defineStore.RUN_DISPLAYCOMPATIBILITY_APK):
            self.output_tc.AppendText('RUN Compativlity APK_NAME\n')
            self.runCompatibility()
        
        # removing adbreboot, it is because this testing is based on emulator
        elif(self.RUN_MODE == defineStore.RUN_DISPLAYCOMPATIBILITY_APKLIST):
            self.output_tc.AppendText('RUN Compativlity apklist\n')
            self.parsingApkList(self.APK_NAME)   
            for index in range(len(self.testingTargetAPK)):
                self.APK_NAME = self.testingTargetAPK[index]
                self.iterationOfTesting = self.iterationOfTestingList[index]
                self.runCompatibility()
                time.sleep(1)
                
                                  
        elif(self.RUN_MODE == defineStore.RUN_PACKAGE):
            self.output_tc.AppendText('RUN Package\n')
            self.runPackageTests()
            
        elif(self.RUN_MODE == defineStore.RUN_MONKEY_MODE):
            self.output_tc.AppendText('RUN Original Monkey Apk\n')
            self.parsingApkList(self.APK_NAME)   
            for index in range(len(self.testingTargetAPK)):
                self.APK_NAME = self.testingTargetAPK[index]
                self.iterationOfTesting = self.iterationOfTestingList[index]   
                self.runMonkeyApk()
                time.sleep(2)
                self.AdbReboot()
                time.sleep(60)

        elif(self.RUN_MODE == defineStore.RUN_MONKEY_PACKAGE):
            self.output_tc.AppendText('RUN Original Monkey Apk\n')
            try:
                f = open('./apkList_monkey', 'r')
                listData = f.read()
                apkList = listData.split('\n')
                #Extracting name of app and testing EVENT_COUNT_MONKEY from a file.
                for APK_NAME in apkList:
                    APK_NAME = APK_NAME.split(' ')
                    self.APK_NAME = APK_NAME[0]
                    self.iterationOfTesting = int(APK_NAME[1])
                    
                    self.output_tc.AppendText('Test App:'+APK_NAME[0]+'\n')
                    self.output_tc.AppendText('Iteration:'+APK_NAME[1]+'\n')    
                    self.runMonkeyPackage()
                    wx.Yield()
                    
            except IOError as e:
                print '%s\n' % e
                print print_stack
                print 'ERROR: Failed open APK_NAME file:' + self.APK_NAME
                exit(-1)
            except IndexError as e:
                print '%s\n' % e
                print 'IndexError'
        
                                    
    def OnStart(self, event):
        """
        Start the execution of tasks by the processes.
        """
        self.run()

    
    def OnStop(self, event):
        pass
    
    def OnClose(self, event):

        self.Destroy()

    def update(self,output):
        """
        Get and print the results from one completed task.
        """
        currentTime = time.time()
        #self.prog_st.SetLabel('Complete: %2d / %2d  Time Elapsed: %s ' % (self.currentProgress, self.completeProgress, 
        #                                                                                time.strftime('%H:%M:%S', time.gmtime(nowTime - self.startTime)))) 
        self.count += output
        self.prog_gg.SetValue(self.count)
        
        # Give the user an opportunity to interact
        wx.YieldIfNeeded()
            
    def runApkTests(self): 
        self.init()
        #monkeyrunner 테스팅 코드를 만드는 부분
        self.reverseApk()   
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
        self.FnishedPerforCounter()  
        self.preparingResult(defineStore.RUN_APK)
        self.summary()
        self.finished()
    
    def runPackageTests(self):
        self.init()
        self.parsingManifestXml() 

        #스마트폰의 환경을 설정 한다.
        self.enviromentControl()
        
        self.InitPerformnaceCounter()
        self.testActivity()
        self.FnishedPerforCounter()
        self.preparingResult(defineStore.RUN_PACKAGE)  
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
        
    def runMonkeyApk(self):
        self.init()
        wx.Yield()
        self.reverseApk()
        wx.Yield()
        self.parsingManifestXml()
        wx.Yield()
        self.testInstall()
        wx.Yield()
        self.tesOriginalMonkey()
        wx.Yield()
        self.testUninstall()
        wx.Yield()
        self.preparingResult(defineStore.RUN_MONKEY_MODE)  
        wx.Yield()
        self.summary()
        wx.Yield()
        self.finished()
    def runMonkeyPackage(self):
        self.init()
        wx.Yield()
        self.reverseApk()
        wx.Yield()
        self.parsingManifestXml()
        wx.Yield()
        self.tesOriginalMonkey()
        wx.Yield()
        self.preparingResult(defineStore.RUN_MONKEY_MODE)  
        wx.Yield()
        self.summary()
        wx.Yield()
        self.finished()
                   
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
            mkdir('/root/python_source/AutoTestingModule/ImageStore/%s'%(self.TESTING_PROJECT_NAME))
        except AttributeError:
            self.output_tc.AppendText('tuple object has no attribute split\n')
        except OSError:
            self.output_tc.AppendText('File exists: /root/python_source/AutoTestingModule/ImageStore/%s/\n'%(self.TESTING_PROJECT_NAME))     
        
        #Creating Directory with Device Name on TestingResult
        try:     
            mkdir('/root/python_source/AutoTestingModule/TestingResult/%s'%(self.TESTING_PROJECT_NAME))
        except AttributeError:
            self.output_tc.AppendText('tuple object has no attribute split\n')
        except OSError:
            self.output_tc.AppendText('File exists: /root/python_source/AutoTestingModule/TestingResult/%s/\n'%(self.TESTING_PROJECT_NAME))   
        
        #apk 이름으로 디렉터리를 생성 한다. 
        FileCount = 0
        try:     
            FileName = self.APK_NAME.split('.')[0]
            mkdir('/root/python_source/AutoTestingModule/TestingResult/%s/%s'%(self.TESTING_PROJECT_NAME,FileName))
        except AttributeError:
            self.output_tc.AppendText('tuple object has no attribute split\n')
        except OSError:
            self.output_tc.AppendText('File exists: /root/python_source/AutoTestingModule/TestingResult/%s/\n'%(self.TESTING_PROJECT_NAME) +FileName)
       
        #Directory for Image
        try:     
            mkdir('/root/python_source/AutoTestingModule/ImageStore/%s/%s'%(self.TESTING_PROJECT_NAME,FileName))
        except AttributeError:
            self.output_tc.AppendText('tuple object has no attribute split\n')
        except OSError:
            self.output_tc.AppendText('File exists: /root/python_source/AutoTestingModule/ImageStore/%s/\n'%(self.TESTING_PROJECT_NAME) +FileName)    
            
        while True:   
            if path.isfile("./TestingResult/%s/%s/%s(%s).log" %(self.TESTING_PROJECT_NAME,FileName,FileName,FileCount)):
                FileCount += 1
            else:
                break;               
           
        self.m_logger = TestingLogger.InitLog("./TestingResult/%s/%s/%s(%s).log"%(self.TESTING_PROJECT_NAME, FileName, FileName, FileCount), logging.getLogger("%s"%self.APK_NAME))
        
        #log file naming 
        self.logfileName = '%s(%s).log'%(FileName, FileCount)
        self.logfilePath = '/root/python_source/AutoTestingModule/TestingResult/%s/%s/%s(%s).log'%(self.TESTING_PROJECT_NAME,FileName,FileName,FileCount)
        
    def InitPerformnaceCounter(self):
        self.perforCounter = PerformanceCounter.PerformanceCounter(self.solo, self.m_logger, self.APK_NAME.split('.')[0])
        self.perforCounter.startPerforCounter()
    
    def FnishedPerforCounter(self):
        self.perforCounter.stopPerforCounter()
        performanceData = self.perforCounter.loadPerforResult()
        
        #extract performance info from Data
        try:
            self.perforResult['cpu'] = float(performanceData.split(' ')[3].split('\n')[0])
            self.perforResult['packet'] = int(performanceData.split(' ')[6].split('\n')[0])
            self.perforResult['Networks'] = float(performanceData.split(' ')[8].split('\n')[0])
        except ValueError as e:
            print '%s'%e 
    
    def reverseApk(self):
        self.output_tc.AppendText('Start Reversing APK file \n')
        try:
            run('./apktool d -f ./apkRepo/%s ./ReverseApkRepo/%s' % (self.APK_NAME, (self.APK_NAME).split('.')[0]))
        except (RuntimeError):
            return 'invalid literal for float(): 0.000000MByte'
        self.output_tc.AppendText('End Reversing APK file \n')
        
    def parsingManifestXml(self):
        #f = open('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.APK_NAME).split('.')[0])
        #manifest = f.read()
        #print manifest
        handler = ManifestHandler.ManifestHandler('activity')
        parser = make_parser()
        parser.setContentHandler(handler)
        parser.parse('./ReverseApkRepo/%s/AndroidManifest.xml'% (self.APK_NAME).split('.')[0])
                
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
            self.debugingMessage(activity)
        for receiver in self.receiverList:
            self.debugingMessage(receiver)
        for service in self.serviceList:
            self.debugingMessage(service)
        
        #최종적으로 수행해야할 목록을 출력
        #completeProgress는 현재 Activity 숫자로 설정.
        self.completeProgress = self.numberOfActivity
        self.debugingMessage('pacakge name: %s'%(self.pkgName))
        self.debugingMessage('Total Activity: %d'%(self.numberOfActivity))
        self.debugingMessage('Total Service: %d'%(self.numberOfBroadCast))
        self.debugingMessage('Total BroadCast: %d'%(self.numberOfService))
        self.debugingMessage('completeProgress: %d'%(self.completeProgress))
        self.debugingMessage('======== complete parsing xml ===========')
         
    def GenerateTestingScript(self):
        #읽고 쓰고 이며 기존 파일을 삭제 한다. 
        f = open('./TestingScript/%s.py'% (self.APK_NAME).split('.')[0],'w+')
        
        print >> f, self.StaticTestingForm.header
        print >> f, self.StaticTestingForm.deviceConnection
        
        for activity in ManifestHandler.ManifestHandler.activityList:
            print >> f, 'device.startActivity(component="'"%s"'")' % (self.pkgName+activity)
            print >> f , 'MonkeyRunner.sleep(1.0)'
            
        f.close()
        
    def Monkeyrunner(self):
        run('monkeyrunner %s.py'% (self.APK_NAME))    
                          
             
    def getApkInfo(self):
        fmt = lambda key: dict((i.split('=')[0], i.split('=')[1].strip("'"))   for i in key.split()  if i.find('=') != -1)
        try:
            info = dict(j.split(':', 1) for  j in  (i for i in  run('aapt dump badging ./apkRepo/%s' % (self.APK_NAME)).split('\n')) if j.find(':') != -1)
            self.pkgName = fmt(info['package'])['name']
            self.actName = fmt(info['launchable-activity'])['name']
        except (IOError):
            print 'ERROR: Failed open APK_NAME file:' + self.APK_NAME
            exit(-1)
        except (RuntimeError, TypeError, NameError):
            print 'ERROR: Failed get APK_NAME info:' + self.APK_NAME
            exit(-1)

    def testInstall(self): 
        run('adb -s %s uninstall ./apkRepo/%s' % (self.DEVICE,self.pkgName))
        self.result['Install'][1] = check_output('adb -s %s install ./apkRepo/%s' % (self.DEVICE,self.APK_NAME), shell=True, stderr=STDOUT, executable='/bin/bash')
        self.output_tc.AppendText(self.result['Install'][1])
        
        if self.result['Install'][1][-9:-2] == 'Success':
            self.result['Install'][0] = True
            self.m_logger.info(self.result['Install'][1])
        else:
            self.m_logger.error(self.result['Install'][1])

    def testReinstall(self):
        self.result['Reinstall'][1] = check_output('adb -s %s install -r ./apkRepo/%s' % (self.DEVICE,self.APK_NAME), shell=True, stderr=STDOUT, executable='/bin/bash')
        self.output_tc.AppendText(self.result['Reinstall'][1])
        
        if self.result['Reinstall'][1][-9:-2] == 'Success':
            self.result['Reinstall'][0] = True
            self.m_logger.info(self.result['Reinstall'][1])
        else:
            self.m_logger.error(self.result['Reinstall'][1])

    def testActivity(self):
        for activity in self.activityList:
            self.currentProgress += 1
            
            self.debugingMessage('====== Starting Activity Testing:'+activity+' =======')    
            self.debugingMessage('======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress))
            self.update(100/self.completeProgress)
            #스크린 샷을 찍는다. apk이름과 activity이름을 전달 한다.
            #snapshot = takeSnapshot.takeSnapshot(self.APK_NAME.split('.')[0], activity)
            
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
                print self.result['Activity'][1]
                self.m_logger.info(self.result['Activity'][1])
                self.CoveredActivitiesByActivityManager.append(activity) # inserting activity into list.
                self.testingResult['activity'][0] += ' '+activity
                self.testingResult['activity'][1] += 1
                #엑티비티가 오류가 업을 때만 실행해 monkey 테스팅을 실행해 준다.
                self.testStress(self.MONKEY_SEED,defineStore.ACTIVITY_BASED_MONKEY)
            else:
                print self.result['Activity'][1]
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #실패한 activity에 대해서 기록을 해준다. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #정리 한다.
            command = 'adb -s %s shell am force-stop %s' %(self.DEVICE,self.pkgName)
            print run(command)
            self.debugingMessage('====== finished Activity Testing:'+activity+' =======')
            
    def tesOriginalMonkey(self):
        
        # testing using seed.
        MONKEY_SEED=0
        for MONKEY_SEED in range(self.iterationOfTesting) :
            self.testStress(MONKEY_SEED,defineStore.UNMODIFIED_MONKEY)
                                                       
    def testBroadCast(self):
        for broadCast in self.receiverList:
            self.currentProgress += 1
            print '=============Start testBroadCast:'+broadCast+'============='  
            print '======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress)
            self.update(100/self.completeProgress)
            self.m_logger.info('=============Start testBroadCast:'+broadCast+'=============')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress))
            
            self.result['BroadCast'][1] = self.solo.device.adb_console.sendBroadcastIntent(broadCast)
            if self.result['BroadCast'][1].find('completed') == -1:
                self.result['BroadCast'][0] = False
                self.m_logger.error(self.result['BroadCast'][1])
                self.errorReport['broadcast'][0] += ' '+broadCast 
                self.errorReport['broadcast'][1] += 1 
            else:
                self.result['BroadCast'][0] = True
                self.m_logger.info(self.result['BroadCast'][1])
                
            #snapshot = takeSnapshot.takeSnapshot(self.APK_NAME.split('.')[0], broadCast)
            #snapshot.DeviceTakeSnapshot('send')
            print '=============Finished testBroadCast:'+broadCast+'============='   
            self.m_logger.info('=============Finished testBroadCast:'+broadCast+'=============')

    def testService(self):
        for service in self.serviceList:
            self.currentProgress += 1
            print '=============Start testService:'+service+'=============' 
            print '======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress)
            self.update(100/self.completeProgress)
            self.m_logger.info('=============Start testService:'+service+'=============')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress))
            
            self.result['Service'][1] = self.solo.device.adb_console.startService(service)
            if self.result['Service'][1].find('Starting') == -1:
                self.result['Service'][0] = False
                self.m_logger.error(self.result['Service'][1])
                self.errorReport['service'][0] += ' '+service
                self.errorReport['service'][1] += 1 
            else:
                self.result['Service'][0] = True
                self.m_logger.info(self.result['Service'][1])
            
            #snapshot = takeSnapshot.takeSnapshot(self.APK_NAME.split('.')[0], service)
            #snapshot.DeviceTakeSnapshot('start')
            print '=============Finished testService'+service+'=============' 
            self.m_logger.info('=============Finished testService'+service+'=============')
        
    #Resolution Testing 
    def DisplayCompatibility(self):
        for activity in self.activityList:
            self.currentProgress += 1
            print '====== Starting Activity Testing:'+activity+' ======='    
            print '======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress)
            self.update(100/self.completeProgress)
            self.m_logger.info('====== Starting Activity Testing:'+activity+' =======')
            self.m_logger.info('======== Progress: %d/%d ========='%(self.completeProgress,self.currentProgress))
            
            self.result['Activity'][1] = self.solo.startActivity(component='%s/%s'% (self.pkgName,activity))    
            # Wating for page lode
            
                            
            if self.result['Activity'][1][0:5] == 'Start' and self.result['Activity'][1].find('Error') == -1: 
                self.result['Activity'][0] = True
                self.testingResult['activity'][0] += ' '+activity
                self.testingResult['activity'][1] += 1
                self.m_logger.info(self.result['Activity'][1])
                #스크린 샷을 찍는다. apk이름과 activity이름을 전달 한다.
                snapshot = takeSnapshot.takeSnapshot(self.TESTING_PROJECT_NAME, self.DEVICE, self.APK_NAME.split('.')[0], activity.split('.')[1])
                snapshot.DeviceTakeSnapshot()
                
            else:
                self.m_logger.error(self.result['Activity'][1])
                self.m_logger.error(self.pkgName+activity)
                #실패한 activity에 대해서 기록을 해준다. 
                self.errorReport['activity'][0] += ' '+activity 
                self.errorReport['activity'][1] += 1 
            #정리 한다.
            command = 'adb -s %s shell am force-stop %s' %(self.DEVICE,self.pkgName)
            print run(command)
            print '====== finished Activity Testing:'+activity+' ======='
            self.m_logger.info('====== finished Activity Testing:'+activity+' =======')
            time.sleep(5)
                                                
    def testStress(self,seed,RUN_MODE):
        overlapError = False
        if RUN_MODE == defineStore.UNMODIFIED_MONKEY:
            command = 'adb -s %s shell monkey -s %d --kill-process-after-error --throttle 200 --pct-touch 20 --pct-motion 20 --pct-trackball 20 --pct-majornav 20 --pct-anyevent 20 -p %s -v -v %s' %(self.DEVICE,seed,self.pkgName,self.EVENT_COUNT_MONKEY)
        
        elif RUN_MODE == defineStore.ACTIVITY_BASED_MONKEY:
            #--disable-ma, this option is added by jemin ( not be official monkey option )
            command = 'adb -s %s shell monkey -s %d --disable-ma --kill-process-after-error --throttle 200 --pct-touch 20 --pct-motion 20 --pct-trackball 20 --pct-majornav 20 --pct-anyevent 20 -p %s -v -v %s' %(self.DEVICE,seed,self.pkgName,self.EVENT_COUNT_MONKEY)
        
        self.result['Stress'][1] = run(command).lower()
        #crash인것만 하기 위해서 변경 한다.
        self.result['Stress'][0] = all( self.result['Stress'][1].find(err) == -1  for err in (' aborted',' crashed', ' failed', 'exception') )
        # all함수의 의미는 리스트의 항목들이 모두 True인지를 검사하는 기능을 담당한다.
        #self.result['Stress'][0] = self.result['Stress'][1].find('crash:') == -1
        
#       print self.result['Stress'][1]
        self.output_tc.AppendText('========== monkey test !!! =========\n')
        #실제 monkey 에러만을 구분하여 나눠 준다.
        #이 부분에서 monkey 자체가 뻗어서 죽는 경우에도 monkeyError를 초기화 해줘야 한다.
        #if self.result['Stress'][1].find('crash:') != -1:
        #    monkeyError = self.result['Stress'][1].split('crash:')
     
        # finding covered activities for Monkey
        monkeyResult = self.result['Stress'][1].split('\n')
        for lineOfLog in monkeyResult:
            if (lineOfLog.find('allowing') != -1):
                self.CoveredActivities.append(lineOfLog)

        if(self.result['Stress'][0] == True):
            self.m_logger.info(self.result['Stress'][1])
        else:
            self.m_logger.error(self.result['Stress'][1])            
            # unconditionally, counting crash bug for Monkey
            self.errorReport['monkey'][0] += 1     
            # removing equivalance bug
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
                self.result['Uninstall'][1] = run('adb -s %s uninstall %s' % (self.DEVICE,self.pkgName))
                print self.result['Uninstall'][1]
                
                if self.result['Uninstall'][1][-9:-2] == 'Success':
                    self.result['Uninstall'][0] = True
                    self.m_logger.info(self.result['Uninstall'][1])
                else:
                    self.m_logger.error(self.result['Uninstall'][1])
                break
            except (IOError):
                continue
            
    def CurrentSensing(self, RUN_MODE):
        mTotalPower = 0
        sensingCount = 0
        data = run('adb -s %s shell dmesg -c'%(self.DEVICE)).splitlines()
        
        # 1을 정의하는 경우 Current Sensor값을 초기화 시킨다.
        if (RUN_MODE == 1):
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
            self.output_tc.AppendText('invalid literal\n')
        
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
            self.output_tc.AppendText('ADB over network command Failed.. killed process pid:%s\n'%(out.pid))
            return 
        else: 
            #정상적으로 adb가 connection 되었는지를 확인 한다.
            self.output_tc.AppendText('ADB Over IP_FOR_REMOTE_ADB Success !\n')

    def AdbReboot(self):
        out=run_pid("adb -s %s shell reboot"%(self.DEVICE))
        time.sleep(1)
        os.kill(out.pid, signal.SIGINT)
     
    # This method is in charge of message processing
    def debugingMessage(self, msg):
        #print msg
        self.output_tc.AppendText(msg+'\n')
        self.m_logger.info(msg)
             
    def preparingResult(self,RUN_MODE):
        
        #테스팅 종료 시간이다.
        self.EndTime = time.time()   
        # calculate TestingTime and Translate fomal time
        self.testingTime = time.strftime('%H:%M:%S',time.gmtime(self.EndTime - self.startTime))   
        self.datetime = time.strftime('%Y-%m-%d %H:%M:%S')
        # refining activity coverage
        self.CoveredActivities = list(set(self.CoveredActivities))
        self.debugingMessage('Covered Activities using by Monkey')
        for activity in self.CoveredActivities:
            self.debugingMessage(activity)
        
        self.debugingMessage('Covered Activities using by Activity Manager')
        for activity in self.CoveredActivitiesByActivityManager:
            self.debugingMessage(activity)
        
        #this section is not correct
        #self.debugingMessage('Comparing with Monkey and Activity manager results to make non-duplicated activities')
        #for AmActivity in self.CoveredActivitiesByActivityManager:
        #    for MonkeyedActivity in self.CoveredActivities:    
        #        partialActivity = MonkeyedActivity.split('/.')[1].split(' ')[0] # Extracting word from activity
        #        if AmActivity.lower().find(partialActivity.lower()) > 0:
        #            self.CoveredActivities.remove(MonkeyedActivity)
        #            self.debugingMessage('removing '+MonkeyedActivity+' from CoveredActivities By monkey')
        #            break
                
        #after removing activities duplicated, The number of Covered Activity is calculated. 
        #self.numberOfCoveredActivities = len(self.CoveredActivities)
        #self.debugingMessage('Remaning activites form monekeyed List')
        #for activity in self.CoveredActivities:
        #    self.debugingMessage(activity)
        
        if RUN_MODE == defineStore.RUN_APK or RUN_MODE == defineStore.RUN_PACKAGE or RUN_MODE == defineStore.RUN_APKLIST:
            #대기 시간이 필요할 경우, current senssing을 위해서 기다린다.
            self.TimeToUp()
            #current Sensing값을 얻어온다.
            self.CurrentSensing(0)
                            
        elif (RUN_MODE == defineStore.RUN_DISPLAYCOMPATIBILITY_APK or RUN_MODE == defineStore.RUN_DISPLAYCOMPATIBILITY_APKLIST or RUN_MODE == defineStore.RUN_MONKEY_MODE):   
            #performance Counter
            self.perforCounter = ''
    
    def summary(self):

        #마지막으로 로그에 기록을 해준다.
        self.debugingMessage('===================|| summary ||===================')
        self.debugingMessage('App: %s'%(self.APK_NAME))
        self.debugingMessage('version: %s'%(self.version))
        self.debugingMessage('Testing Duration Time: %s'%(self.testingTime))
        self.debugingMessage('Install: %s'%self.result['Install'][0])
        self.debugingMessage('Reinstall: %s'%self.result['Reinstall'][0])
        self.debugingMessage('Uninstall: %s'%self.result['Uninstall'][0])
        self.debugingMessage('Succeed: %d(%d): %s'%(self.numberOfActivity, self.testingResult['activity'][1], self.testingResult['activity'][0]))
        self.debugingMessage('Failed Activity: %d(%d): %s'%(self.numberOfActivity, self.errorReport['activity'][1], self.errorReport['activity'][0]))
        self.debugingMessage('Failed BroadCast: %d(%d): %s'%(self.numberOfBroadCast,self.errorReport['broadcast'][1],self.errorReport['broadcast'][0]))
        self.debugingMessage('Failed Service: %d(%d): %s'%(self.numberOfService,self.errorReport['service'][1],self.errorReport['service'][0]))
        self.debugingMessage('Covered Activities: %d(%d)'%(self.numberOfActivity, self.numberOfCoveredActivities))
        self.debugingMessage('monkey error: %d'%(self.errorReport['monkey'][0]))
        self.debugingMessage('No overlap monkey error: %d'%(self.errorReport['monkey'][1]))
        self.debugingMessage('IP_FOR_REMOTE_ADB Condition: %s'%(self.enviromentResult['wifi']))
        self.debugingMessage('Average Power Consumption: %f'%(self.mAvePower))
        self.debugingMessage('Power List: %s'%(self.ListOfPower))
        if self.perforCounter == '':
            pass
        else:
            self.debugingMessage(self.perforCounter.loadPerforResult())
        
        #마지막으로 Database에 기록을 한다. 
        try:
            self.cursor.execute('''INSERT INTO TestingResult VALUES(
            '%s','%s','%s','%s','%s'
            ,'%s','%s','%s'
            ,'%d','%d','%d'
            ,'%d','%d','%s'
            ,'%f','%f','%d'
            ,'%f','%s','%s'
            ,'%s','%d')'''
            %(self.TESTING_PROJECT_NAME,self.pkgName,self.APK_NAME, self.version,self.testingTime,
              self.result['Install'][0],self.result['Reinstall'][0],self.result['Uninstall'][0]
              ,self.errorReport['activity'][1],self.errorReport['broadcast'][1],self.errorReport['service'][1]
              ,self.errorReport['monkey'][0],self.errorReport['monkey'][1],self.enviromentResult['wifi']
              ,self.perforResult['cpu'],self.perforResult['Networks'],self.perforResult['packet']
              ,self.mAvePower,self.logfileName,self.logfilePath,
              self.datetime,int(self.EVENT_COUNT_MONKEY)))
                                
        except MySQLdb.Error as e:   
            print e
            datetime = time.strftime('%Y-%m-%d %H:%M:%S')
            self.cursor.execute("INSERT INTO TestFailedApp VALUES('%s','%s','%s')"%(self.pkgName,datetime,self.APK_NAME))
            self.output_tc.AppendText(' mysql failed \n')

class RedirectText(object):
    def __init__(self,aWxTextCtrl):
        self.out=aWxTextCtrl

    def write(self,string):
        self.out.WriteText(string)
           
if __name__ == '__main__':
    
    # to detect testing RUN_MODE, it parse the argument from argv
    print sys.argv
    APK_NAME = sys.argv[3].split('.')[0]
   
    # create wx.App object    
    p = ApkTestApp()
    # create Frame object
    # Emulator_WVGA800 2 apkList 0 1 emulator-5554 5545 emulator-5554
    # RUN MODE
    #     RUN_APK = 0
    #     RUN_PACKAGE =1
    #     RUN_APKLIST = 2
    #     RUN_DISPLAYCOMPATIBILITY_APK =3
    #     RUN_DISPLAYCOMPATIBILITY_APKLIST = 4
        # for a Monkey testing 
    #     RUN_MONKEY_MODE = 5
    #     RUN_MONKEY_PACKAGE = 6
    # DEVICE = 192.168.0.3:5555
    # IP_FOR_REMOTE_ADB = 192.168.0.3
    
    
    p.ShowFrame(ApkTest(TESTING_PROJECT_NAME = sys.argv[1],
               RUN_MODE = int(sys.argv[2]),
               APK_NAME = APK_NAME,
               USB_TCPIP_MODE = int(sys.argv[4]),
               EVENT_COUNT_MONKEY = int(sys.argv[5]),
               DEVICE = sys.argv[6],
               MONKEY_PORT = int(sys.argv[7]),
               IP_FOR_REMOTE_ADB= sys.argv[8]))
    # Start app
    p.MainLoop()              

