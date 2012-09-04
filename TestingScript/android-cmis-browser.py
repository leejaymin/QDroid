import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="de.fmaul.android.cmis.CmisBrowser")
MonkeyRunner.sleep(1.0)
device.startActivity(component="de.fmaul.android.cmis.CmisPreferences")
MonkeyRunner.sleep(1.0)
