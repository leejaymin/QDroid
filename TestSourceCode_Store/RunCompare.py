import sys
import subprocess

REF = '../ImageStore/com.viewpagerindicator.sample.SampleTabsDefault_NexusOne.png'
SCR = "../ImageStore/com.viewpagerindicator.sample.SampleTabsDefault_Resize.png"

CMP = '../ImageStore/com.viewpagerindicator.sample.SampleTabsDefault_compare.png'
ACCEPTANCE = 0.001

device = None


def testDropWidgetIntoFourthRow():
    #compare run 
    subprocess.call(["/usr/bin/compare", REF, SCR, CMP])
    
def main():
    testDropWidgetIntoFourthRow()

if __name__ == '__main__':
    main()
