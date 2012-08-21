#! python2.7
## -*- coding: utf-8 -*-

#===============================================================================
# @author: kun
#===============================================================================

import os,sys
#from test.test_xml_etree import getchildren
current_path = os.getcwd()
parent_path = os.path.abspath(os.path.join(os.getcwd(), os.path.pardir))
if current_path not in sys.path:
    sys.path.append(current_path)
if parent_path not in sys.path:
    sys.path.append(parent_path)
    
from ViewManagement.TreeType import CPoint
from ViewManagement.TreeType import CTreeNode
from ViewManagement.ParseElement import ParseElement


class Item():
    '''
    item of Group View
    '''
    
    def __init__(self, node, index):
        self.class_name = "Item"
        self.node = node
        self.index = index
        
        self.text_list = []
        self.click_location_list = []   
        self.isChecked = False
        
        self.properties_dict = {"mText":[],
                                "mLocation": [],
                                "isChecked": False}
        
    def loadProperties(self):
        # has no child
        if None==self.node.mChildNodes or 0==len(self.node.mChildNodes):
#            self.text_list.append(self.node.mText)
#            self.click_location_list.append(self.node.mLocation)            
            self.properties_dict["mText"] = [self.node.mText]
            if self.node.mActive:
                self.properties_dict["mLocation"] = [self.node.mLocation]
                                    
            element_parser = ParseElement(self.node.mElement)
            element_parser.parseElmentData() 
            res = element_parser.getBoolean(element_parser.properties_dict["isChecked()"], False)
            self.properties_dict["isChecked"] = res
            return True
        
        # has child
        self.getChildProperties(self.node, self.properties_dict)
        return True
        
    
    def isLeafNode(self, node):
        if None==node:
            return True  ## ???
        
        if None==node.mChildNodes or 0==len(node.mChildNodes):
            return True
        else:
            return False   
        
    def getChildProperties(self, node, properties_dict):
        if None==node:
            return properties_dict
        
        if None==node.mChildNodes or 0==len(node.mChildNodes):
            return properties_dict
        
        for child in node.mChildNodes:
            if self.isLeafNode(child):
                properties_dict["mText"].append(child.mText)
                properties_dict["mLocation"].append(child.mLocation) # this might be TBD
                    
                element_parser = ParseElement(child.mElement)
                element_parser.parseElmentData() 
                res = None
                if "isChecked()" in element_parser.properties_dict.keys():
                    res = element_parser.getBoolean(element_parser.properties_dict["isChecked()"], False)
                    properties_dict["isChecked"] = (res or properties_dict["isChecked"])
                
            else:
                self.getChildProperties(child, properties_dict)
    
#------------------------------------------------------------------------------ 
#        
#------------------------------------------------------------------------------ 
class GroupView():
    '''
    GroupView, include ListView, GridView, RadioGroup, etc.
    '''
    
    def __init__(self, node):
        self.class_name = "GroupView"
        self.node = node   
        self.items_list = []
        
    def loadAllItems(self):
        if None==self.node.mChildNodes or 0==len(self.node.mChildNodes):
            return False
        
        index = 0
        for item_node in self.node.mChildNodes:
            item = Item(item_node, index)
            item.loadProperties()
            self.items_list.append(item)
            
            index += 1
        
        return True

     
if __name__=="__main__":
    pass       
                    
    