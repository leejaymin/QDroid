import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        

result = device.takeSnapshot()
result.writeToFile('/root/python_source/AutoTestingModule/TestingResult/dealdroid/Preferences_onCreate','png')
