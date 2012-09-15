#!/usr/bin/env python
#coding: euc-kr

from xml.sax import make_parser, handler
import sys

"""
�� Ŭ������ AndroidManifest.xml�� �м��ϱ� ���� Ŭ�����̴�.
���ο� ����� �ٽ� Component���� �м� �Ѵ�. 
"""

class ManifestHandler(handler.ContentHandler):
    
#    activityList = []
#    permissionList = []
#    receiverList = []
#    serviceList = []
#    numberOfActivity = 0
#    numberOfService = 0
#    numberOfBroadCast = 0
    
    def __init__(self, componentName):
        self.componentName = componentName   
        #Receiver ������ �Ǵ��ؼ�, �Ʒ��� action�� ���� �Ѵ�.
        self.searchReceiverActive = 0;
        #Service ������ �Ǵ��ؼ�, �Ʒ��� action�� ���� �Ѵ�.
        self.searchServiceActive = 0;
        
        self.activityList = []
        self.permissionList = []
        self.receiverList = []
        self.serviceList = []
        self.numberOfActivity = 0
        self.numberOfService = 0
        self.numberOfBroadCast = 0
    
    def startElement(self, name, attrs):
        if name == 'manifest':
            self.packageName = attrs.getValue('package')
            self.version = attrs.getValue('android:versionName')
            
        if name == 'activity':
            if attrs.getValue('android:name').find('.') != -1:
                self.activityList.append(attrs.getValue('android:name'))
            else:
                self.activityList.append('.'+attrs.getValue('android:name'))
            self.numberOfActivity += 1
            
            self.searchReceiverActive = 0;
            self.searchServiceActive = 0;
        
        if name == 'receiver':
            self.searchReceiverActive = 1
            self.numberOfBroadCast += 1
            
        if name == 'service':
            self.searchServiceActive = 1
            self.numberOfService += 1
        
        if name == 'uses-permission':
            self.permissionList.append(attrs.getValue('android:name'))
            
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
        parser.parse('../ReverseApkRepo/PocketSeven/AndroidManifest.xml')

        print handler.numberOfActivity
#        for permission in handler.permissionList:
 #           if permission.find('android.permission.INTERNET') != -1:
   
