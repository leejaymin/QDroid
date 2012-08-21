import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="edu.umich.PowerTutor.ui.UMLogger")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.Help")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.PowerViewer")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.PowerTop")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.AppChoiceView")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.PowerPie")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.MiscView")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.PowerTabs")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.EditPreferences")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.ui.ViewerPreferences")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.widget.Configure")
MonkeyRunner.sleep(1.0)
device.startActivity(component="edu.umich.PowerTutor.widget.DataSourceConfigure")
MonkeyRunner.sleep(1.0)
