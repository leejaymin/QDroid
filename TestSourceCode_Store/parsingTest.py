

i = 'str: <6>[  261.757751] batt:  95%, 4133 mV, 168 mA (153 avg), 38.1 C, 1291 mAh'

try:
    #current = i.split('(')[1].split(' ')[0]
    #voltage = i.split('mV')[0].split(',')[1]
    #power = int(current) * int(voltage) / 1000
    #print power
    f = open('./MosaicturePhotoMosaic(0).log', 'r')
    commandList = []
    listData = f.read()
    apkList = listData.split('\n')

    for APK_NAME in apkList:
        if (APK_NAME.find('allowing') != -1):
            commandList.append(APK_NAME)
            
    for activity in commandList:
        print activity 
        
    print 'remove duplicating'
    commandList = list(set(commandList))
    for activity in commandList:
        print activity 
except ValueError:
    print 'invalid literal'