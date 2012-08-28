import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="org.connectbot.HostListActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.PubkeyListActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.GeneratePubkeyActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.HostEditorActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.PortForwardListActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.SettingsActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.WizardActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.HelpActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.HelpTopicActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.ColorsActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="org.connectbot.ConsoleActivity")
MonkeyRunner.sleep(1.0)
