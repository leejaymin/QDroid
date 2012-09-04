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
    receiverList = []
    serviceList = []
    CPList = []
    
    def __init__(self, componentName):
        self.componentName = componentName
        
        #Receiver 인지를 판단해서, 아래의 action을 수집 한다.
        self.searchReceiverActive = 0;
        #Service 인지를 판단해서, 아래의 action을 수집 한다.
        self.searchServiceActive = 0;
    
    def startElement(self, name, attrs):
        if name == 'manifest':
            self.packageName = attrs.getValue('package')
            print self.packageName
            
        if name == 'activity':
            self.activityList.append(attrs.getValue('android:name'))
            self.searchReceiverActive = 0;
            print self.activityList
        
        if name == 'receiver':
            self.searchReceiverActive = 1
            
        if name == 'service':
            self.searchServiceActive = 1
            
        if self.searchReceiverActive == 1:
            if name == 'action':
                self.receiverList.append(attrs.getValue('android:name'))
                self.searchReceiverActive = 0
                
        if self.searchServiceActive == 1:
            if name == 'action':
                self.serviceList.append(attrs.getValue('android:name'))
                self.searchServiceActive = 0
                
            
if __name__ == '__main__':

        handler = ManifestHandler('receiver')
        parser = make_parser()
        parser.setContentHandler(handler)
        parser.parse('../ReverseApkRepo/dealdroid/AndroidManifest.xml')
                
