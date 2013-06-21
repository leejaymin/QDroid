#! /usr/bin/env monkeyrunner

import sys
import subprocess
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

TIMEOUT = 30
SERIALNO = 'emulator-5554'
REF = './TestingResult/HTCDesire/Air_Hockey_1_1_1/GameActivity.png'
SCR = "./TestingResult/GalaxyNexus/Air_Hockey_1_1_1/ResizeGameActivity.png"

CMP = './ImageStore/comparison.png'
ACCEPTANCE = 0.001

device = None


def testDropWidgetIntoFourthRow():
#    reference = MonkeyImage.loadImageFromFile(REF)
#    source = MonkeyImage.loadImageFromFile(SCR)
    reference = MonkeyRunner.loadImageFromFile(REF)
    source = MonkeyRunner.loadImageFromFile(SCR)
    if not source.sameAs(reference, ACCEPTANCE):
        print "comparison failed, getting visual comparison..."
        #compare run 
        subprocess.call(["/usr/bin/compare", REF, SCR, CMP])
    else:
        print 'sucess'
        
def displayHiddenAPI():
    for m in [MonkeyRunner, MonkeyDevice, MonkeyImage]:
        print "%s:\n   %s\n" % (m.__name__, dir(m))

def main():
    testDropWidgetIntoFourthRow()
    displayHiddenAPI()

if __name__ == '__main__':
    main()