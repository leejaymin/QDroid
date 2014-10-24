#!/usr/bin/env python
"""Compare two aligned images of the same size.

Usage: python compare.py first-image second-image
"""
import sys
import os
import glob
from PIL import Image

from scipy.misc import imread
from scipy.linalg import norm
from scipy import sum, average
from gnome_sudoku.defaults import APPNAME

# Global index of address
PROJECTNAME =2
APPNAME = 3
IMAGENAME = 4
ROOTDIRECTORY = './ImageStore'

# configuration value
ManhattanThreshold = 60
Zerothreshold = 0.7

# How to use
    # depth: two directory / files
    # parameters: low resolution and high resolution
def main():
     
    file1 = './ImageStore/com.viewpagerindicator.sample.SampleTabsDefault_NexusOne.png'
    file2 = "./ImageStore/com.viewpagerindicator.sample.SampleTabsDefault_Resize.png"

    #first_path = raw_input("first path")
    #second_path = raw_input("second path")
    first_path = 'Emulator_4.0_480x800'
    second_path = 'Emulator_4.0_720x1280'

    rootPath1 = ROOTDIRECTORY+'/'+first_path
    rootPath2 = ROOTDIRECTORY+'/'+second_path
    
    # file or directory for first path
    if os.path.isfile(rootPath1):
        print "Regular file"
    elif os.path.isdir(rootPath1):
        print 'Directory'
        FirstDirectoryList = os.listdir(rootPath1)

    # file or directory for second path
    if os.path.isfile(rootPath2):
        print "Regular file"
    elif os.path.isdir(rootPath2):
        print 'Directory'
        SecondDirectorylist = os.listdir(rootPath2)

    if(checkDirectoryList(FirstDirectoryList,SecondDirectorylist)!= True):
        print 'Do not going to test, you have to fix some errors'
        return -1
    DirectoryCompare(rootPath1, rootPath2, FirstDirectoryList, SecondDirectorylist)
              

def DirectoryCompare (rootPath1, rootPath2, directoryFileList1, directoryFileList2):
    NumberOfTesting = 1
    for directoryFile1 in directoryFileList1:            
        for directoryFile2 in directoryFileList2:
            if directoryFile1 == directoryFile2:
                combinedPath1 = rootPath1+'/'+directoryFile1+'/*'
                combinedPath2 = rootPath2+'/'+directoryFile2+'/*'
                fileList1 = glob.glob(combinedPath1)
                fileList2 = glob.glob(combinedPath2)
                print '----------------------------------------------------------\n'
                print combinedPath1 +' vs '+ combinedPath2 +'\n' # to print which file is used for testing  
                NumberOfTesting += FileCompare(NumberOfTesting,fileList1,fileList2)
                print '----------------------------------------------------------\n'
                break
                  
def checkDirectoryList (directoryList1, directoryList2):
    #to get a last element in second directory list, the number of elements is known using the Len()
    numberOfelementsOfList1= len(directoryList1)
    numberOfelementsOfList2= len(directoryList2)
    result = True
    if numberOfelementsOfList1 == 0:
        print 'first list is empty'
        return False
    
    if numberOfelementsOfList2 == 0:
        print 'second list is empty'
        return False
            
    for directoryFile1 in directoryList1:
        count = 1
        for directoryFile2 in directoryList2:
            if directoryFile1 == directoryFile2:
                break
            #this directory is not matched to any element in second list.            
            if count == numberOfelementsOfList2:
                print 'Second Directory do not have a %s \n' % directoryFile1
                result = False
            count += 1
            
    for directoryFile2 in directoryList2:
        count = 1
        for directoryFile1 in directoryList1:
            if directoryFile2 == directoryFile1:
                break
            #this directory is not matched to any element in second list.            
            if count == numberOfelementsOfList1:
                print 'First Directory do not have a %s \n' % directoryFile1
                result = False
            count += 1
    
    return result

def checkFileList (fileList1, fileList2):                        
    numberOfelementsOfList1= len(fileList1)
    numberOfelementsOfList2= len(fileList2)

    result = True
    if numberOfelementsOfList1 == 0:
        print 'first list of file is empty'
        return False
    
    if numberOfelementsOfList2 == 0:
        print 'second list of second is empty'
        return False
    
    # disable for file comparison
    
    # to fine leak of directory in second according to first         
    #for File1 in fileList1:
    #    count = 1
    #    splitedfilepath1 = File1.split('/')
    #    for File2 in fileList2:
    #        splitedfilepath2 = File2.split('/')
    #        if splitedfilepath1[IMAGENAME] == splitedfilepath2[IMAGENAME]:
    #            break
            #this directory is not matched to any element in second list.            
    #        if count == numberOfelementsOfList2:
    #            print 'Second Directory do not have a %s \n' % File1
    #            result = False
    #        count += 1
            
    # to fine leak of directory in first according to second    
    #for File2 in fileList2:
    #    count = 1
    #    splitedfilepath2 = File2.split('/')
    #    for File1 in fileList1:
    #        splitedfilepath1 = File1.split('/')
    #        if splitedfilepath2[IMAGENAME] == splitedfilepath1[IMAGENAME]:
    #            break
            #this directory is not matched to any element in second list.            
    #        if count == numberOfelementsOfList1:
    #            print 'First Directory do not have a %s \n' % File2
    #            result = False
    #        count += 1
            
    return result
            
def FileCompare (NumberOfTesting, filelist1, filelist2):
    Count = 0
    if(checkFileList(filelist1,filelist2)!= True):
        return 0

    # to comapre it to another resolution
    for first_filepath in filelist1:
        splitedfilepath1 = first_filepath.split('/')        
        for second_filepath in filelist2:
            splitedfilepath2 = second_filepath.split('/')
            if splitedfilepath1[IMAGENAME] == splitedfilepath2[IMAGENAME]:
                helper_reszie(splitedfilepath2, 480, 800)    
                print 'Testing number: %d' % (NumberOfTesting+Count)
                print splitedfilepath1[IMAGENAME] +' vs '+ splitedfilepath2[IMAGENAME] # to print which file is used for testing  
                ImageCompare(first_filepath, second_filepath+'resize')
                Count += 1
                break
    
    print 'number of compared files: ', Count
    return int(Count)
            
def ImageCompare (file1, file2):
    # read images as 2D arrays (convert to grayscale for simplicity)
    img1 = to_grayscale(imread(file1).astype(float))
    img2 = to_grayscale(imread(file2).astype(float))
 
    # compare
    n_m, n_0 = compare_images(img1, img2)
    
    if (n_m/img1.size) >= ManhattanThreshold:
        print 'Manhattan: violation: ',(n_m/img1.size)
    else:
        print "Manhattan norm:", n_m, "/ per pixel:", n_m/img1.size
        
    if (n_0*1.0/img1.size) >= Zerothreshold:
        print 'Zero: violation: ',(n_m/img1.size)
    else:
        print "Zero norm:", n_0, "/ per pixel:", n_0*1.0/img1.size, "\n"
    
        
  
def helper_reszie(splitedfilepath2, width, height):
    imPath = ROOTDIRECTORY+'/'+splitedfilepath2[PROJECTNAME]+'/'+splitedfilepath2[APPNAME]+'/'+splitedfilepath2[IMAGENAME]
    
    imSrc = Image.open(imPath)
    size = imSrc.size
    
    #to make better performance
    if os.path.isfile(imPath+'resize'):
        return

    if size[0] != width and size[1] != height:
        out = imSrc.resize((width,height))
        out.save(imPath+'resize','PNG')

def compare_images(img1, img2):
    # normalize to compensate for exposure difference
    img1 = normalize(img1)
    img2 = normalize(img2)
    # calculate the difference and its norms
    diff = img1 - img2  # elementwise for scipy arrays
    m_norm = sum(abs(diff))  # Manhattan norm
    z_norm = norm(diff.ravel(), 0)  # Zero norm
    return (m_norm, z_norm)

def to_grayscale(arr):
    "If arr is a color image (3D array), convert it to grayscale (2D array)."
    if len(arr.shape) == 3:
        return average(arr, -1)  # average over the last axis (color channels)
    else:
        return arr

def normalize(arr):
    rng = arr.max()-arr.min()
    amin = arr.min()
    return (arr-amin)*255/rng

if __name__ == "__main__":
    main()
