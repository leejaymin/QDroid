import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="com.jaynux.app.main")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.measureActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.SaveInformationActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.PlayerNumActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.SettingActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.SelectHero")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.preference.PreferActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="com.jaynux.app.RaceStartActivity")
MonkeyRunner.sleep(1.0)
