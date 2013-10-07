import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
MonkeyRunner.sleep(2.0)
device.touch(1013,627)

#result = device.takeSnapshot()
#result.writeToFile('/root/python_source/AutoTestingModule/TestingResult/bb/onCreate_testActivity','png')
