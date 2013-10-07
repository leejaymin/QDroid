import Image
#import ImageChops
import numpy as np
import ImageChops

def ImageLoad(self):
    pass

def ImageDiff(self):
    pass
   

if __name__ == '__main__':
    srcList = []
    targetList = []
    colorRate = []
    avgColorRate = 0.0
    sumColorRate = 0
    validCount = 0
  
    
    image_src = '/root/Android_Application_source/recomended/0.png'
#   first_image = "../ImageStore/GameActivityGalaxyNexus.png"
#    image_src = '../TestingResult/HTCDesire/Air_Hockey_1_1_1/MultitouchTestActivity'
#    first_image = "../TestingResult/GalaxyNexus/Digger/splash.png"
    
    imSrc = Image.open(image_src)
#    grayImage = Image.open(image_src)
    out = imSrc.resize((1280,720))
    
#    diff_out = ImageChops.difference(imSrc, grayImage)
#    diff_out.show()
#    diff_out.getbox()
#    print diff_out.histogram()
    out.save('/root/Android_Application_source/recomended/0_r.png','PNG')
    
   
