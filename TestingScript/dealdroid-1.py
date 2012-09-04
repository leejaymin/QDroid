import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="org.chemlab.dealdroid.Preferences")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.chemlab.dealdroid.ItemViewer")
MonkeyRunner.sleep(1.0)
