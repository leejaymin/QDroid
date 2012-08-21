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
