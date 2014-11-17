'''
Created on 2013. 6. 12.

@author: root
'''

RUN_APK = 0
RUN_PACKAGE =1
RUN_APKLIST = 2
RUN_DISPLAYCOMPATIBILITY_APK =3
RUN_DISPLAYCOMPATIBILITY_APKLIST = 4
# for a Monkey testing 
RUN_MONKEY_MODE = 5
RUN_MONKEY_PACKAGE = 6


# GUI main

USB_MODE = 0
TCPIP_MODE = 1

#Exception
CRITICAL_ERROR = 0
ORDINARY_ERROR = 1

#Monket mode
UNMODIFIED_MONKEY = 0
ACTIVITY_BASED_MONKEY = 1

#SQL
columnName = ''' (
                projectName,
                packageName,
                appName,
                version,
                testingTime,
                install,
                reinstall,
                uninstall,
                failedActivityCount,
                failedBroadcastCount,
                failedServiceCount,
                monkey,
                noOverlapMonkey,
                networkCondition,
                cpuAveUsage,
                networkAveusage,
                networkAvePacket,
                PowerAve,
                logfileName,
                logfilePath,
                Time,
                testingLevel
            )
            '''           

            