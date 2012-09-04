#!/usr/bin/env python
#coding: euc-kr

from xml.sax import make_parser, handler
import sys

"""
�� Ŭ������ AndroidManifest.xml�� �м��ϱ� ���� Ŭ�����̴�.
���ο� ����� �ٽ� Component���� �м� �Ѵ�. 
"""

class ManifestHandler(handler.ContentHandler):

    packageName=''
    activityList = []
    receiverList = []
    serviceList = []
    CPList = []
    
    def __init__(self, componentName):
        self.componentName = componentName
        
        #Receiver ������ �Ǵ��ؼ�, �Ʒ��� action�� ���� �Ѵ�.
        self.searchReceiverActive = 0;
        #Service ������ �Ǵ��ؼ�, �Ʒ��� action�� ���� �Ѵ�.
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
                
