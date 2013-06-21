import MySQLdb
import time


db = MySQLdb.connect(user='root', passwd = 'root', db ='BugHunter')
cursor = db.cursor()

# conform table scheme
cursor.execute('SHOW TABLES')

try:     
    datetime = time.strftime('%Y-%m-%d %H:%M:%S')
    #cursor.execute("INSERT INTO TestFailedApp VALUES('name4','%s','testApp')"%(datetime))
    '''cursor.execute(INSERT INTO TestingResult VALUES('NexusOne','com.test.app'
    ,'test App','1.1.3','000:59:30','TRUE','TRUE','TRUE'
    ,'4','4','4'
    ,'2','1','TRUE'
    ,'20.234','0.0342','123','123.40'
    ,'sayFile(0)','/root/automatedTesting/NexusOne/TestingResult/sayFile(0)','%s')%(datetime))'''

#    print time.strftime('%H:%M:%S',time.localtime())
    ttime = time.gmtime(1000)
#    print time.strftime('%H:%M:%S',ttime)
    cursor.execute('select * from TestFailedApp')
    recs =cursor.fetchall()
  #  for rec in recs:
       # print rec
       
    f = file('/root/python_source/AutoTestingModule/Keep_Score(1).log')
    result = f.read()
    parsingReport = {'pkName':' ','apkName':'','version':'','testingTime':'00:00:00'
                     ,'install':'','reinstall':'','uninstall':'','failedActivity':'','failedBroadCast':''
                     ,'failedService':'','monky':'','install':'','install':'','install':''
                     ,'install':'','install':'','install':'','install':'','install':''
                     ,'install':'','install':'','install':'','install':'','install':''
                     }
    
    print result.split('pacakge name:')[1].split('\n')[0]
    print result.split('App:')[1].split('\n')[0]
    print result.split('version:')[1].split('\n')[0]
    print result.split('Testing Duration Time:')[1].split('\n')[0]
    print result.split('Install:')[1].split('\n')[0]
    print result.split('Reinstall:')[1].split('\n')[0]
    print result.split('Uninstall:')[1].split('\n')[0]
    print result.split('Failed Activity:')[1].split(':')[0]
    print result.split('Failed BroadCast:')[1].split(':')[0]
    print result.split('Failed Service:')[1].split(':')[0]
    print result.split('moneky error:')[1].split('\n')[0]
    print result.split('lap moneky error:')[1].split('\n')[0]
    print result.split('Network Condition:')[1].split('\n')[0]
    print result.split('CPU Average Usage:')[1].split('\n')[0]
    print result.split('total packet amount:')[1].split('\n')[0]
    print result.split('total Networks:')[1].split('\n')[0]
    
    cursor.execute('''INSERT INTO TestingResult VALUES('%s','%s'
    ,'%s,'%s','%s','%s','%s','%s'
    ,'%d','%d','%d'
    ,'%d','%d','%s'
    ,'20.234','0.0342','123','123.40'
    ,'sayFile(0)','/root/automatedTesting/NexusOne/TestingResult/sayFile(0)','%s','1000')'''
    %('HTCDesire',self.pkgName,self.apk,self.version,self.testingTime,
      self.result['Install'][0],self.result['Reinstall'][0],self.result['Uninstall'][0]
      ,self.errorReport['activity'][1],self.errorReport['broadcast'][1],self.errorReport['service'][1]
      ,self.errorReport['monkey'][0],self.errorReport['monkey'][1],self.enviromentResult['wifi']
      ,
      datetime))
    
except MySQLdb.Error :
    print "You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near"
    
cursor.close()