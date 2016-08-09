# QDroid #

----------
QDroid efficiently explores app pages and verifies the presence of crashes, excessive resource usage, and compatibility problems in differently sized screens without source code. 
It can be used by market curators to maintain app markets. 

## Download and Setup ##

### Requirements ###

**OS and IDE**
- Ubuntu 10.04 or later
- Android 2.3.3
- Eclipse PyDev
- Android-SDK-Linux_r23

**Python packages**
- Python 2.7
- mumpy
- scipy
- PIL
- MySQL_python
- image (wx.python)
- wxPython-2.9.4.0

**Target Device**
- Nexus-one
- HTC Desire

**Performance Counter**
- Installing PeformanceCounter mobile app
- path `PerformanceCounterApp/Training Suites`


## How to run each mode ##

### Auto Testing ###
There are two way to run Auto-Testing mode.
Firstly, you can use GUI window to configure options.

![](http://i.imgur.com/WUIMeLv.png)

![](http://i.imgur.com/5R093uj.png)

Secondly, you can directly run `Command-Line mode` by putting several options.

**Options**
- Testing project name
- Run mode
```vim
# RUN MODE
#     RUN_APK = 0
#     RUN_PACKAGE =1
#     RUN_APKLIST = 2
#     RUN_DISPLAYCOMPATIBILITY_APK =3
#     RUN_DISPLAYCOMPATIBILITY_APKLIST = 4
# for original Monkey testing 
#     RUN_MONKEY_MODE = 5
#     RUN_MONKEY_PACKAGE = 6
```
- USB_TCPIP_MODE 
	- USB_MODE = 0
	- TCPIP_MODE = 1
- # of Monkey events: Interger (ex: 100,2000)
- Device name 
```bash
#you can find deivce name using the following command:
root@ubuntu:~/python_source# adb devices
* daemon not running. starting it now on port 5037 *
* daemon started successfully *
List of devices attached 
HT0A1P800732	device
```
- Monkey port: 5545

- IP for remote adb
	- If you want to run AutoTesting over Wi-Fi, you should set-up remote ADB mode
	- and then put the IP address with choosing `TCPIP_MODE`

	>Device name is also different like `192.168.0.3:5555` 

You can run `QDroid` using the following command:
```bash
./AppAnalyzer.py test 2 apkList2 0 200 HT0A1P800732 5554 None
```


### Image Comparison ###

Based on directories, containing screenshots from each app, `ResolutionCompare.py` can compare screenshots between diffrent resolutions (e.g., `480x800` vs `720x1280`)

To conduct this comparison, at first you need to collect screenshots and save them into each directory named by combining app-name and activity name.

Next, modify two variables to retrieve screenshots.
```vim
first_path = 'Emulator_4.0_480x800'
second_path = 'Emulator_4.0_720x1280'
```

You can use the following command:
```bash
./ResolutionCompare.py
```

**Running Results**
```bash
Directory
Directory
----------------------------------------------------------

./ImageStore/Emulator_4.0_480x800/Akandaka/* vs ./ImageStore/Emulator_4.0_720x1280/Akandaka/*

Testing number: 1
EntryList vs EntryList
all violation
Manhattan norm: 15315991.3636 / per pixel: 39.8853941761
Zero norm: 145921 / per pixel: 0.380002604167 

Testing number: 2
EditEntry vs EditEntry
all violation
Manhattan norm: 15369200.4545 / per pixel: 40.023959517
Zero norm: 146658 / per pixel: 0.381921875 

Testing number: 3
Auth vs Auth
all violation
Manhattan norm: 15689293.6364 / per pixel: 40.8575355114
Zero norm: 161388 / per pixel: 0.42028125 

number of compared files:  3
----------------------------------------------------------

.... 
....
-------------------------------------------------
-------------------------------------------------
number of allviolations:  63
number of mViolations:  14
number of zViolations:  36
```


## Demo ##

### Single Testing ###
[![Everything Is AWESOME](http://i.imgur.com/JOmOJYk.png)](https://youtu.be/Dybkcvr-ix8)

### Multiple Testing ###
[![Everything Is AWESOME](http://i.imgur.com/qLqzxYk.png)](https://youtu.be/5Uc2Lda2i0s)


## Pulbications ##

- **QDroid: Mobile Application Quality Analyzer for App Market Curators**  
	Jemin Lee, Hyungshin Kim  
	Hindawi Mobile Information Systems


## Developed By ##
- Jemin Lee (Ph.D Candidate), `leejaymin_at_cnu.ac.kr`

## License ##
```vim
Copyright 2014 Jemin Lee

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
