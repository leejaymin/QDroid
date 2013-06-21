import Image
#import ImageChops
import numpy as np
import ImageChops

def ImageLoad(self):
    pass

def ImageDiff(self):
    pass
   

if __name__ == '__main__':
   
    first_image = "../TestingResult/HTCDesire/Digger/splash.png"
    grayImage = Image.open(first_image).convert('L')
    grayImage.save('../TestingResult/HTCDesire/Digger/GrayResizesplash.png','PNG')
    
