#----------------------------------------------------------------------
# A very simple wxPython example.  Just a wx.Frame, wx.Panel,
# wx.StaticText, wx.Button, and a wx.BoxSizer, but it shows the basic
# structure of any wxPython application.
#----------------------------------------------------------------------

import wx
import os
import defineStore
import subprocess
import traceback
import pickle

import sys
from AppAnalyzer import ApkTest, ApkTestApp

try:
    dirName = os.path.dirname(os.path.abspath(__file__))
except:
    dirName = os.path.dirname(os.path.abspath(sys.argv[0]))

sys.path.append(os.path.split(dirName)[0])

try:
    from agw import thumbnailctrl as TC
except ImportError: # if it's not there locally, try the wxPython lib.
    import wx.lib.agw.thumbnailctrl as TC

import images

class MyFrame(wx.Frame):
    """
    This is MyFrame.  It just shows a few controls on a wxPanel,
    and has a simple menu.
    """
    def __init__(self, parent, title):
        wx.Frame.__init__(self, parent, -1, title,
                          pos=(150, 150), size=(350, 200))

        # Create the menubar
        menuBar = wx.MenuBar()

        # and a menu 
        menu = wx.Menu()

        # add an item to the menu, using \tKeyName automatically
        # creates an accelerator, the third param is some help text
        # that will show up in the statusbar
        menu.Append(wx.ID_EXIT, "E&xit\tAlt-X", "Exit this simple sample")

        # bind the menu event to an event handler
        self.Bind(wx.EVT_MENU, self.OnTimeToClose, id=wx.ID_EXIT)

        # and put the menu on the menubar
        menuBar.Append(menu, "&File")
        self.SetMenuBar(menuBar)

        self.CreateStatusBar()
        

        # Now create the Panel to put the other controls on.
        panel = wx.Panel(self)

        # and a few controls
        text = wx.StaticText(panel, -1, "Hello World!")
        text.SetFont(wx.Font(14, wx.SWISS, wx.NORMAL, wx.BOLD))
        text.SetSize(text.GetBestSize())
        btn = wx.Button(panel, -1, "Close")
        funbtn = wx.Button(panel, -1, "Just for fun...")

        # bind the button events to handlers
        self.Bind(wx.EVT_BUTTON, self.OnTimeToClose, btn)
        self.Bind(wx.EVT_BUTTON, self.OnFunButton, funbtn)

        # Use a sizer to layout the controls, stacked vertically and with
        # a 10 pixel border around each
        sizer = wx.BoxSizer(wx.VERTICAL)
        sizer.Add(text, 0, wx.ALL, 10)
        sizer.Add(btn, 0, wx.ALL, 10)
        sizer.Add(funbtn, 0, wx.ALL, 10)
        panel.SetSizer(sizer)
        panel.Layout()


    def OnTimeToClose(self, evt):
        """Event handler for the button click."""
        print "See ya later!"
        self.Close()

    def OnFunButton(self, evt):
        """Event handler for the button click."""
        print "Having fun yet?"
        chgdep = ChangeDepthDialog(None,title='Change Color Depth')
        chgdep.ShowModal()
        chgdep.Destroy()  

class ChangeDepthDialog(wx.Dialog):
    
    def __init__(self, *args, **kw):
        super(ChangeDepthDialog, self).__init__(*args, **kw) 
            
        self.InitUI()
        self.SetSize((250, 200))
        self.SetTitle("Change Color Depth")
        
        
    def InitUI(self):

        pnl = wx.Panel(self)
        vbox = wx.BoxSizer(wx.VERTICAL)

        sb = wx.StaticBox(pnl, label='Colors')
        sbs = wx.StaticBoxSizer(sb, orient=wx.VERTICAL)        
        sbs.Add(wx.RadioButton(pnl, label='256 Colors', 
            style=wx.RB_GROUP))
        sbs.Add(wx.RadioButton(pnl, label='16 Colors'))
        sbs.Add(wx.RadioButton(pnl, label='2 Colors'))
        
        hbox1 = wx.BoxSizer(wx.HORIZONTAL)        
        hbox1.Add(wx.RadioButton(pnl, label='Custom'))
        hbox1.Add(wx.TextCtrl(pnl), flag=wx.LEFT, border=5)
        sbs.Add(hbox1)
        
        pnl.SetSizer(sbs)
       
        hbox2 = wx.BoxSizer(wx.HORIZONTAL)
        okButton = wx.Button(self, label='Ok')
        closeButton = wx.Button(self, label='Close')
        hbox2.Add(okButton)
        hbox2.Add(closeButton, flag=wx.LEFT, border=5)

        vbox.Add(pnl, proportion=1, 
            flag=wx.ALL|wx.EXPAND, border=5)
        vbox.Add(hbox2, 
            flag=wx.ALIGN_CENTER|wx.TOP|wx.BOTTOM, border=10)

        self.SetSizer(vbox)
        
        okButton.Bind(wx.EVT_BUTTON, self.OnClose)
        closeButton.Bind(wx.EVT_BUTTON, self.OnClose)
        
        
    def OnClose(self, e):
        
        self.Destroy()
        
class ThumbnailCtrlDemo(wx.Frame):

    def __init__(self, parent, log):

        wx.Frame.__init__(self, parent)

        self.SetIcon(images.Mondrian.GetIcon())
        self.SetTitle("Automated Testing Framework ;-)")

        self.statusbar = self.CreateStatusBar(2, wx.ST_SIZEGRIP)
        self.statusbar.SetStatusWidths([-2, -1])
        # statusbar fields
        statusbar_fields = [("Testing Tool, Jemin Lee @ 10 Aug 2013"),
                            ("Welcome To my work!")]

        for i in range(len(statusbar_fields)):
            self.statusbar.SetStatusText(statusbar_fields[i], i)

        self.SetMenuBar(self.CreateMenuBar())
        
        splitter = wx.SplitterWindow(self, -1, style=wx.CLIP_CHILDREN |
                                     wx.SP_3D | wx.WANTS_CHARS | wx.SP_LIVE_UPDATE)
        self.panel = wx.Panel(self)
      
       
        # this information is target deivce for testing.
        self.targetInfo = [{'deviceName':'HT0A1P800732','port':5545},{'deviceName':'HT08DP802665','port':5544}]
       
        # preference dic for pickle
        
        f = open ('preference.txt','w')
        
        preferenceDic = {'testingProjectName':'TestProject_NexusOne', 
                         'deviceName':'HT0A1P800732',
                         'port':5545,
                         'testingMode':0,
                         'testingApk':'apkList',
                         'TargetIP':'192.168.0.3:5555',
                         'MonkeyEvent':1000,
                         'MonkeySeed':0}
        
        pickle.dump(preferenceDic,f)
        f.close
        f = open ('preference.txt')
        
        x = pickle.load(f)
        print x
        
        
        # set up the static Box
        self.thumbsizer_staticbox = wx.StaticBox(self.panel, -1, "Target Devices")
        self.customsizer_staticbox = wx.StaticBox(self.panel, -1, "Testing Modes")
        self.optionsizer_staticbox = wx.StaticBox(self.panel, -1, "Extra Options")
        self.dirsizer_staticbox = wx.StaticBox(self.panel, -1, "Functional Buttons")
        self.testingProjectsizer_staticbox = wx.StaticBox(self.panel, -1, "Testing Project")
        
        
        # set up the Button
        self.loadTestingProjectBtn = wx.Button(self.panel, -1, "Load Testing Project")
        self.dirbutton = wx.Button(self.panel, -1, "Changing APK")
        self.functionalTestBtn = wx.Button(self.panel,-1, "Functional Test")
        self.ScreenTestBtn = wx.Button(self.panel,-1, "Screen Test")
        self.monkeyBtn = wx.Button(self.panel,-1, "Monkey Test")
        
        
        #set up the Radio Button
        self.radio_device_1 = wx.RadioButton(self.panel, -1, 'NexusOne(Lab)'+self.targetInfo[0]['deviceName']+'/'+str(self.targetInfo[0]['port']), style=wx.RB_GROUP)
        self.radio_device_2 = wx.RadioButton(self.panel, -1, 'NexusOne(DSK)'+self.targetInfo[1]['deviceName']+'/'+str(self.targetInfo[1]['port']))
        self.radio_device_3 = wx.RadioButton(self.panel, -1, 'other device')
        self.textDeviceName = wx.TextCtrl (self.panel,-1,"")
        self.textPortName = wx.TextCtrl (self.panel,-1,"")
        
        
        #set up the check box 
        self.radio_usb = wx.RadioButton(self.panel, -1, "USB mode",  style=wx.RB_GROUP)
        self.radio_tcpIp = wx.RadioButton(self.panel, -1, "TCP/IP mode")

        #set up  the textCtrl and Button
        self.staticTestingProject = wx.StaticText(self.panel, -1, "Testing Project Name")
        self.testingProjecTxCtl = wx.TextCtrl(self.panel,-1,"")
        
        self.staticTestingApk = wx.StaticText(self.panel, -1, "testing apk")
        self.textTestingApk = wx.TextCtrl(self.panel,-1,"apkList.txt")
        
        self.staticTextTargetIP =  wx.StaticText(self.panel, -1, "Target IP:Port")
        self.textTargetIP = wx.TextCtrl(self.panel, -1, "")
        
        self.staticMonkeyEvent =  wx.StaticText(self.panel, -1, "Monkey event") 
        self.textmonkey = wx.TextCtrl(self.panel, -1, "1000")
        
        self.staticMonkeySeed =  wx.StaticText(self.panel, -1, "Monkey seed")
        self.textseed = wx.TextCtrl(self.panel, -1, "0")
        
        # group radio button for devices
        self.radios_devices = [self.radio_device_1, self.radio_device_2,self.radio_device_3]
        
        # group radio button for testing mode
        self.radios_testingMode = [self.radio_usb, self.radio_tcpIp]
        
        self.thumbstyles = ["THUMB_OUTLINE_NONE", "THUMB_OUTLINE_FULL", "THUMB_OUTLINE_RECT",
                            "THUMB_OUTLINE_IMAGE"]
        
        self.SetProperties()
        self.DoLayout()
    
        self.Bind(wx.EVT_RADIOBUTTON, self.OnChangeDevices, self.radio_device_1)
        self.Bind(wx.EVT_RADIOBUTTON, self.OnChangeDevices, self.radio_device_2)
        self.Bind(wx.EVT_RADIOBUTTON, self.OnChangeDevices, self.radio_device_3)
        
        
        self.Bind(wx.EVT_RADIOBUTTON, self.OnChangeTestingMode, self.radio_tcpIp)
        self.Bind(wx.EVT_RADIOBUTTON, self.OnChangeTestingMode, self.radio_usb)
        
        self.Bind(wx.EVT_BUTTON, self.OnLoadTestingProject, self.loadTestingProjectBtn)
        self.Bind(wx.EVT_BUTTON, self.OnSetDirectory, self.dirbutton)
        self.Bind(wx.EVT_BUTTON, self.OnFunctionalRun, self.functionalTestBtn)
        self.Bind(wx.EVT_BUTTON, self.OnScreenRun, self.ScreenTestBtn)
        self.Bind(wx.EVT_BUTTON, self.OnMonkeyRun, self.monkeyBtn)
        
        self.SetMinSize((300, 630))
        self.CenterOnScreen()

        
    def SetProperties(self):

        # device information pro
        self.radio_device_1.SetValue(1)
        self.textDeviceName.Enable(False)
        self.textPortName.Enable(False)
        self.deviceName = self.targetInfo[0]["deviceName"]
        self.port = self.targetInfo[0]["port"]
        
        self.radio_usb.SetValue(1)
        self.textTargetIP.Enable(False)
        self.testingConnectionMode = defineStore.USB_MODE
        
        boldFont = wx.Font(8, wx.DEFAULT, wx.NORMAL, wx.BOLD, 0, "")
        
        self.loadTestingProjectBtn.SetFont(boldFont)
        self.dirbutton.SetFont(boldFont)
        self.functionalTestBtn.SetFont(boldFont)
        self.ScreenTestBtn.SetFont(boldFont)
        self.monkeyBtn.SetFont(boldFont)


    def DoLayout(self):
        
        splitsizer = wx.BoxSizer(wx.VERTICAL)
        optionsizer = wx.StaticBoxSizer(self.optionsizer_staticbox, wx.VERTICAL)
        testingApkSizer = wx.BoxSizer(wx.HORIZONTAL)
        targetIpsizer = wx.BoxSizer(wx.HORIZONTAL)
        targetMonkey = wx.BoxSizer(wx.HORIZONTAL)
        targetPort = wx.BoxSizer(wx.HORIZONTAL)
        
        
        customsizer = wx.StaticBoxSizer(self.customsizer_staticbox, wx.VERTICAL)
        thumbsizer = wx.StaticBoxSizer(self.thumbsizer_staticbox, wx.VERTICAL)
        radiosizer = wx.BoxSizer(wx.VERTICAL)
        
        TestingProjectsizer = wx.StaticBoxSizer(self.testingProjectsizer_staticbox, wx.HORIZONTAL)
        TestingProjectsizer.Add(self.staticTestingProject, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        TestingProjectsizer.Add(self.testingProjecTxCtl, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        TestingProjectsizer.Add(self.loadTestingProjectBtn, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        
        dirsizer = wx.StaticBoxSizer(self.dirsizer_staticbox, wx.HORIZONTAL)
        dirsizer.Add(self.dirbutton, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        dirsizer.Add(self.functionalTestBtn, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        dirsizer.Add(self.ScreenTestBtn, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        dirsizer.Add(self.monkeyBtn, 0, wx.LEFT|wx.BOTTOM|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        
        splitsizer.Add(TestingProjectsizer, 0, wx.EXPAND|wx.TOP|wx.LEFT, 5)
        splitsizer.Add(dirsizer, 0, wx.EXPAND|wx.TOP|wx.LEFT, 5)
        radiosizer.Add(self.radio_device_1, 0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        radiosizer.Add(self.radio_device_2, 0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        
        customDevicesizer =  wx.BoxSizer(wx.HORIZONTAL)
        customDevicesizer.Add(self.radio_device_3, 0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        customDevicesizer.Add(self.textDeviceName, 0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        customDevicesizer.Add(self.textPortName, 0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        radiosizer.Add(customDevicesizer,0, wx.LEFT|wx.TOP|wx.ADJUST_MINSIZE, 3)
        
        thumbsizer.Add(radiosizer, 1, wx.EXPAND, 0)
        splitsizer.Add(thumbsizer, 0, wx.TOP|wx.EXPAND|wx.LEFT, 5)
        customsizer.Add(self.radio_usb, 0, wx.LEFT|wx.TOP|wx.BOTTOM|wx.ADJUST_MINSIZE, 3)
        customsizer.Add(self.radio_tcpIp, 0, wx.LEFT|wx.BOTTOM|wx.ADJUST_MINSIZE, 3)

        splitsizer.Add(customsizer, 0, wx.TOP|wx.EXPAND|wx.LEFT, 5)
        testingApkSizer.Add(self.staticTestingApk,0,wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        testingApkSizer.Add(self.textTestingApk,1,wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        
        targetIpsizer.Add(self.staticTextTargetIP, 0, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        targetIpsizer.Add(self.textTargetIP, 1, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)

        targetMonkey.Add(self.staticMonkeyEvent,0, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        targetMonkey.Add(self.textmonkey, 1, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)

        targetPort.Add(self.staticMonkeySeed,0, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        targetPort.Add(self.textseed, 1, wx.ALL|wx.ALIGN_CENTER_HORIZONTAL|wx.ALIGN_CENTER_VERTICAL|wx.ADJUST_MINSIZE, 3)
        
        optionsizer.Add(testingApkSizer,0,wx.EXPAND,0)
        optionsizer.Add(targetIpsizer, 0, wx.EXPAND, 0)
        optionsizer.Add(targetMonkey, 0, wx.EXPAND, 0)
        optionsizer.Add(targetPort, 0, wx.EXPAND, 0)
        
        splitsizer.Add(optionsizer, 0, wx.EXPAND | wx.TOP|wx.LEFT, 5)
        self.panel.SetAutoLayout(True)
        self.panel.SetSizer(splitsizer)
        splitsizer.Fit(self.panel)
        

    def CreateMenuBar(self):

        file_menu = wx.Menu()
        
        AS_EXIT = wx.NewId()        
        file_menu.Append(AS_EXIT, "&Exit")
        self.Bind(wx.EVT_MENU, self.OnClose, id=AS_EXIT)

        help_menu = wx.Menu()

        AS_ABOUT = wx.NewId()        
        help_menu.Append(AS_ABOUT, "&About...")
        self.Bind(wx.EVT_MENU, self.OnAbout, id=AS_ABOUT)

        menu_bar = wx.MenuBar()

        menu_bar.Append(file_menu, "&File")
        menu_bar.Append(help_menu, "&Help")        

        return menu_bar        


    def OnClose(self, event):
        
        self.Destroy()


    def OnAbout(self, event):

        msg = "This Is The About Dialog Of The ThumbnailCtrl Demo.\n\n" + \
              "Author: Andrea Gavana @ 10 Dec 2005\n\n" + \
              "Please Report Any Bug/Requests Of Improvements\n" + \
              "To Me At The Following Adresses:\n\n" + \
              "andrea.gavana@agip.it\n" + "andrea_gavana@tin.it\n\n" + \
              "Welcome To wxPython " + wx.VERSION_STRING + "!!"
              
        dlg = wx.MessageDialog(self, msg, "ThumbnailCtrl Demo",
                               wx.OK | wx.ICON_INFORMATION)
        
        dlg.SetFont(wx.Font(8, wx.NORMAL, wx.NORMAL, wx.NORMAL, False))
        dlg.ShowModal()
        dlg.Destroy()
    
    def OnLoadTestingProject(self, event):
        dlg = wx.FileDialog(self, "Choose a Project",
                   defaultDir=os.getcwd()+'/TestingResult',
                   style=wx.FD_OPEN)
        # If the user selects OK, then we process the dialog's data.
        # This is done by getting the path data from the dialog - BEFORE
        # we destroy it. 
        if dlg.ShowModal() == wx.ID_OK:
            name = dlg.GetFilename()
            print "OnSetDirectory: directory changed to: %s\n"%name
            self.testingProjecTxCtl.SetValue(name)
            
    def OnSetDirectory(self, event):

        dlg = wx.FileDialog(self, "Choose a file with Testing",
                           defaultDir=os.getcwd()+'/apkRepo',
                           style=wx.FD_OPEN)

        # If the user selects OK, then we process the dialog's data.
        # This is done by getting the path data from the dialog - BEFORE
        # we destroy it. 
        if dlg.ShowModal() == wx.ID_OK:
            name = dlg.GetFilename()
            print "OnSetDirectory: directory changed to: %s\n"%name
            self.textTestingApk.SetValue(name)
            
        # Only destroy a dialog after you're done with it.
        dlg.Destroy()
        
    def OnScreenRun(self,event):
        
        command = self.PreparingTesting(defineStore.RUN_DISPLAYCOMPATIBILITY_APK)
              
        p = subprocess.Popen(command, shell=True, executable='/bin/bash', stderr = subprocess.PIPE)

    
    def OnMonkeyRun(self, event):
        
        command = self.PreparingTesting(defineStore.RUN_MONKEY_MODE)
              
        p = subprocess.Popen(command, shell=True, executable='/bin/bash', stderr = subprocess.PIPE)

    
    def OnFunctionalRun(self, event):
        
        command = self.PreparingTesting(defineStore.RUN_APK)    
        p = subprocess.Popen(command, shell=True, executable='/bin/bash', stderr = subprocess.PIPE)
        #err = p.stderr.read()
        #if err != '':
        #    self.ExceptioMssage(defineStore.CRITICAL_ERROR,err)
        #else :
        #    return True
        
        #dispatcher = Dispatcher()
        #f = ApkTestFrame(dispatcher)
        #p = ApkTest("BugOnline.apk",10,2,'HT0A1P800732',5545,dispatcher)
        #p.setTestingOption(defineStore.RUN_APKLIST)
        #f2 = ApkTestFrame("BugOnline.apk",10,2,"HT08DP802665",5544)
        #f.Show(True)
        #p.start()
        #p.join()
        #f2.Show(True)
        #f = ApkTest("BugOnline.apk",10,2,"HT0A1P800732",5545)
        #f.setTestingOption(defineStore.RUN_APKLIST)
  
        #f.Show(True)
        #f.start()

#        p = ApkTest("BugOnline.apk",monkey,2,devicename,int(port))
#        p.setTestingOption(defineStore.RUN_APKLIST)
#        p.start()
 
 #       app = ApkTestApp("BugOnline.apk",monkey,2,devicename,int(port))
 #       app.MainLoop()
        
        #p2 = ApkTest("BugOnline.apk",monkey,2,"HT08DP802665",5544)
        #p2.Show(True)
        #p2.setTestingOption(defineStore.RUN_APK)
        #p2.start()
        
        #p.join()
        #p2.join()
        
#        pid = os.fork()
#        if pid ==0 :
#            p = ApkTest("BugOnline.apk",monkey,2,devicename,int(port))
#            p.runApkTests()
#        else:
#            os.wait()

        
    def OnChangeDevices(self, event): # wxGlade: MyFrame.<event_handler>

        radio = event.GetEventObject()
        pos = self.radios_devices.index(radio)

        if pos == 0:
            self.deviceName = self.targetInfo[pos]["deviceName"]
            self.port = self.targetInfo[pos]["port"]
            self.textDeviceName.Enable(False)
            self.textPortName.Enable(False)
            
        elif pos == 1:
            self.deviceName = self.targetInfo[pos]["deviceName"]
            self.port = self.targetInfo[pos]["port"]
            self.textDeviceName.Enable(False)
            self.textPortName.Enable(False)
            
        elif pos == 2:
            self.textDeviceName.Enable(True)
            self.textPortName.Enable(True)
            
        event.Skip()
    
    def OnChangeTestingMode(self,event):
        
        radio = event.GetEventObject()
        pos = self.radios_testingMode.index(radio)
        
        if pos == defineStore.USB_MODE:
            self.textTargetIP.Enable(False)
            self.textTargetIP.SetValue('')
            self.testingConnectionMode = defineStore.USB_MODE
        
        elif pos == defineStore.TCPIP_MODE:
            self.textTargetIP.Enable(True)
            self.textTargetIP.SetValue('192.168.')
            self.testingConnectionMode = defineStore.TCPIP_MODE
            
    def PreparingTesting(self, mode):
        
        #common routine
        
        #radio_device_3
        if self.radio_device_3.IsEnabled() == True:
            self.deviceName = self.textDeviceName.GetValue()
            self.port = self.textPortName.GetValue()
        
        #checking project name
        if self.testingProjecTxCtl.IsEmpty() == True:
            self.ExceptioMssage(defineStore.ORDINARY_ERROR,"Missing Porject Name for Testing\n")
            return
        else:
            testingProjectName = self.testingProjecTxCtl.GetValue()
        #checking monkey option
        if self.textmonkey.IsEmpty() == True:
            self.ExceptioMssage(defineStore.ORDINARY_ERROR,"Missing the number of events for Monkey\n")
            return
        else:
            monkey = self.textmonkey.GetValue()
        
        #checking IP
        if self.textTargetIP.IsEmpty() == False:
            TargetIP = self.textTargetIP.GetValue()
        else :
            TargetIP = 'None'
        
        #checking APK name
        if self.textTestingApk.IsEmpty() == True:
            self.ExceptioMssage(defineStore.ORDINARY_ERROR,"Missing apk name \n")
            return
        else:
            testingAPK = self.textTestingApk.GetValue()
        
        if mode == defineStore.RUN_APK or mode == defineStore.RUN_APKLIST:  
            if testingAPK.split('.')[1] == 'txt':
                mode = defineStore.RUN_APKLIST
            else:
                mode = defineStore.RUN_APK

        elif mode == defineStore.RUN_PACKAGE or mode == defineStore.RUN_MONKEY_MODE:
            pass

        elif mode == defineStore.RUN_DISPLAYCOMPATIBILITY_APK or mode == defineStore.RUN_DISPLAYCOMPATIBILITY_APKLIST:
            if testingAPK.split('.')[1] == 'txt':
                mode = defineStore.RUN_DISPLAYCOMPATIBILITY_APKLIST
            else:
                mode = defineStore.RUN_DISPLAYCOMPATIBILITY_APK
        
        #finally, returning command we made
        command = './AppAnalyzer.py '+testingProjectName+' '+str(mode)+' '+testingAPK+' '+str(self.testingConnectionMode)+' '+str(monkey)+' '+self.deviceName+' '+str(self.port)+' '+TargetIP
        print command
        return command
        
    #for the handling Exception
    def ExceptionHook (self, exctype, value, trace):
        """Handler for all unhandled exceptions
        @param exctype: Exception Type
        @param value: Error Value
        @param trace: Trace back info
        """
        # Format the traceback
        exc = traceback.format_exception(exctype, value, trace)
        ftrace = "".join(exc)
        app = wx.GetApp()
        if app:
            msg = "An unexpected error has occurred: %s" % ftrace
            wx.MessageBox(msg, app.GetAppName(),
            style=wx.ICON_ERROR|wx.OK)
            app.Exit()
        else:
            sys.stderr.write(ftrace)
            
    def ExceptioMssage (self, mode, err):
        """Handler for all unhandled exceptions
        @param err: Exception description from returning another process
        """
        app = wx.GetApp()
        if app:
            if mode == defineStore.CRITICAL_ERROR:
                msg = "An unexpected error has occurred:\n%s" % err
                wx.MessageBox(msg, app.GetAppName(),
                style=wx.ICON_ERROR|wx.OK)
                app.Exit()
            elif mode == defineStore.ORDINARY_ERROR:
                msg = "%s" % err
                wx.MessageBox(msg, app.GetAppName(),
                style=wx.ICON_ERROR|wx.OK)
                return
           

#---------------------------------------------------------------------------

        
class MyApp_multi(wx.App):
    def OnInit(self):
        frame = MyFrame(None, "Simple wxPython App")
        frame2 = ThumbnailCtrlDemo(None, "Simple wxPython App")
        self.SetTopWindow(frame2)
        
        print "Print statements go to this stdout window by default."

        frame2.Show(True)
        return True
        
#redirect=True        
app = MyApp_multi()
app.MainLoop()

