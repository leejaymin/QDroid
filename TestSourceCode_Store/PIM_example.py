import Image
#import ImageChops
import numpy as np


class ScreenCompatiblity :
    
    def __init__(self, deviceList, apkName):
        self.deviceList = deviceList
        self.apkName = apkName
        
    def ImageLoad(self):
        
        pass
    
    def ImageDiff(self):
        pass
    
    def DiffHistogramBased(self):
        pass
    
if __name__ == '__main__':
    srcList = []
    targetList = []
    colorRate = []
    avgColorRate = 0.0
    sumColorRate = 0
    validCount = 0
    
    
#    image_src = '../ImageStore/GameActivityDesire.png'
#    first_image = "../ImageStore/GameActivityGalaxyNexus.png"
    image_src = '../ImageStore/splashDesire.png'
    first_image = "../ImageStore/splashGalaxyNexus.png"

    imSrc = Image.open(image_src).convert('L')
    grayImage = Image.open(first_image).convert('L')
    
    imSrc.show()
    grayImage.show()
    
    srcList = imSrc.histogram()
    print srcList
    targetList = grayImage.histogram()
    print targetList
     
    for i in range(0,256):
        try:
            if(targetList[i] !=0 and srcList[i] !=0):
                colorRate.append(targetList[i] / srcList[i])
                
                if(i!=0):
                    sumColorRate += targetList[i] / srcList[i]3.
            else:
                colorRate.append(0)
        except ZeroDivisionError:
            print 'ZeroDivsionError index: %d'%(i)
        except IndexError:
            print 'Index Error: %d'%(i)
        
    print 'srcList zero count: %d'%srcList.count(0)   
    print 'targetList zero count: %d'%targetList.count(0)       
    print 'color Rate zero count: %d'%colorRate.count(0)    
    avgColorRate = sumColorRate / (255 - colorRate.count(0))
    print colorRate
    print avgColorRate
    
#    diff = ImageChops.difference(imSrc, grayImage)
#    diff.show()
    
#    imSrc.show()
#    grayImage.show()