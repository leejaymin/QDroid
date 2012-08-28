import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="org.connectbot.HostList")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.HostEditor")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.SettingsActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.WizardActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbotorg.connectbot.Console")
MonkeyRunner.sleep(1.0)
