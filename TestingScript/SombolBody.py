import sys
# Imports the monkeyrunner modules used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice, MonkeyImage

# Connects to the current device, returning a MonkeyDevice object
device = MonkeyRunner.waitForConnection()

if not device:
    print >> sys.stderr, "Couldn't get connection"
    sys.exit(1)
        
device.startActivity(component="vn.esse.bodysymbol.HomeActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="vn.esse.bodysymbolcom.google.ads.AdActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="vn.esse.bodysymbolcom.millennialmedia.android.MMAdViewOverlayActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="vn.esse.bodysymbolcom.millennialmedia.android.VideoPlayer")
MonkeyRunner.sleep(1.0)
device.startActivity(component="vn.esse.bodysymbolcom.adfonic.android.AdfonicActivity")
MonkeyRunner.sleep(1.0)
device.startActivity(component="vn.esse.bodysymbolcom.inmobi.androidsdk.IMBrowserActivity")
MonkeyRunner.sleep(1.0)
