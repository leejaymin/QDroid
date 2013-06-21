
import MySQLdb
import time


db = MySQLdb.connect(user='root', passwd = 'root', db ='BugHunter')
cursor = db.cursor()

# Create Table
'''
cursor.execute(CREATE TABLE TestingResult (
device VARCHAR(20), 
packageName VARCHAR(30),
appName VARCHAR(30),
version VARCHAR(10),
testingTime time,
install char(4),
reinstall char(4),
uninstall char(4),
failedActivityCount integer,
failedBroadcastCount integer,
failedServiceCount integer,
monkey integer,
noOverlapMonkey integer,
networkCondition char(4),
cpuAveUsage double,
networkAveUsage double,
networkAvePacket double,
PowerAve double,
logfileName VARCHAR(30),
logfilePath VARCHAR(100)
))
'''
# conform table scheme
cursor.execute('SHOW TABLES')
print cursor.description
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
    ttime = time.gmtime(1000.12333)
    print time.strftime('%H:%M:%S',ttime)
    cursor.execute('select * from TestFailedApp')
    recs =cursor.fetchall()
    for rec in recs:
        print rec
      

    
except MySQLdb.Error :
    print "You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near"
    
cursor.close()
