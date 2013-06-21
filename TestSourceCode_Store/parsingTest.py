

i = 'str: <6>[  261.757751] batt:  95%, 4133 mV, 168 mA (153 avg), 38.1 C, 1291 mAh'

try:
    current = i.split('(')[1].split(' ')[0]
    voltage = i.split('mV')[0].split(',')[1]
    power = int(current) * int(voltage) / 1000
    print power
            
except ValueError:
    print 'invalid literal'