#!/usr/bin/env python
#coding: euc-kr

from xml.sax import make_parser, handler
import sys

"""
이 클래스는 AndroidManifest.xml를 분석하기 위한 클래스이다.
내부에 저장된 핵심 Component들을 분석 한다. 
"""

class ManifestHandler(handler.ContentHandler):

    packageName=''
    activityList = []
    
    def __init__(self, componentName):
        self.componentName = componentName
        self.componentList=[]
    
    def startElement(self, name, attrs):
        if name == 'manifest':
            self.packageName = attrs.getValue('package')
            print self.packageName
            
        if name == self.componentName:
            self.activityList.append(attrs.getValue('android:name'))
            print self.activityList
