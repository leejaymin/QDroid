import threading
import subprocess 
import time
from Utility import TimeoutFunctionException, TimeoutFunction
import os
from subprocess import check_output, Popen, PIPE


#duk su HT08DP802665 
#lab deivce HT0A1P800732
eve = threading.Event()
TIMER_START_FLAG = False
TIMER_READY_FLAG = False
TIMER_END_FLAG = False


cmd2 = 'adb -s HT0A1P800732 shell am start -W -n imoblife.toolbox.full/com.google.ads.AdActivity'
cmd = "adb -s HT0A1P800732 shell am start -n imoblife.toolbox.full/com.google.ads.AdActivity"
run = lambda cmd: subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, executable='/bin/bash' )
run2 = lambda cmd: check_output(cmd, shell=True, executable='/bin/bash')
class prepareThread(threading.Thread):
    def run(self):
        eve.set()
        print 'Ready'
        
class ActionThread(threading.Thread):
    def __init__(self):
        #super class call construct
        super(ActionThread,self).__init__()
        self.TIMER_START_FLAG = False
        self.TIMER_END_FLAG = False
        self.out = 0
       
    
    def run(self):
        
        print self.getName(), 'non-critical job 1'
        print self.getName(), 'non-critical job 2'

        self.TIMER_START_FLAG = True
        
        self.out = subprocess.Popen(cmd2,shell=True,executable='/bin/bash')
               
        self.TIMER_END_FLAG = True
        print self.getName(), 'done'
        

thlist = []
th = ActionThread()
th.start()
timemer = TimeoutFunction(5)

while th.isAlive():
    try: 
        if(th.TIMER_START_FLAG == True):
            print 'start-timer'
            timemer.timeStart()
            th.TIMER_START_FLAG = False
        elif(th.TIMER_END_FLAG == True):
            print 'end-timer'
            timemer.timeEnd()
            th.TIMER_END_FLAG = False
        else:
            print'waiting'
            time.sleep(1)  

    except TimeoutFunctionException:
        th.out.terminate()
        res ='Failed: Not response for call.. and then we killed process pid:%s'%(th.out.pid)
        print res
    except Exception, e:
        msg = "Failed execute cmd [%s]: [%s]" %(cmd, str(e))
        print msg
    
th.join()

print 'Exiting'
