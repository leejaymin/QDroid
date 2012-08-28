#!/usr/bin/env python
#coding: euc-kr

'''
Created on 2012. 8. 26.

@author: jemin Lee

이 클래스는 테스팅 어플리케이션의 성능을 측정하기 위한 어플리 케이션 이다.

'''

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


class PerformanceCounter():
    
    def __init__(self, solo, m_Logger, apkName):
        #장치 제어 객체
        self.solo = solo
        #로그 객체
        self.m_Logger = m_Logger
        #테스팅 apk 이름을 저장하는 객체
        self.apkName = apkName
        
    def startPerforCounter(self):
        self.solo.startActivity(component='com.cnu.eslab.suite/.TrainingSuites')
        self.solo.event_controller.press('dpad_down')
        self.solo.event_controller.press('enter')
        self.solo.event_controller.press('back')
        self.solo.event_controller.press('back')
    
    def stopPerforCounter(self):
        self.solo.startActivity(component='com.cnu.eslab.suite/.TrainingSuites')
        self.solo.event_controller.type(self.apkName)
        self.solo.event_controller.press('dpad_down')
        self.solo.event_controller.press('dpad_down')
        self.solo.event_controller.press('enter')
        self.solo.event_controller.press('back')
        self.solo.event_controller.press('back')   
    
    def loadPerforResult(self):
        self.solo.pullFile('/mnt/sdcard/%s.log'%(self.apkName),'/root/python_source/AutoTestingModule/TestingResult/%sPerfor.log'%(self.apkName))
        f = file('/root/python_source/AutoTestingModule/TestingResult/%sPerfor.log'%(self.apkName))
        performanceReuslt = f.read()
        return performanceReuslt
    
        