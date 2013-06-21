.class public Lstericson/busybox/donate/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static BOTH:I

.field public static EXTRA_BUSYBOX_VERSION:Ljava/lang/String;

.field public static EXTRA_INSTALL_PATH:Ljava/lang/String;

.field public static Key:Ljava/lang/String;

.field private static NEW:I

.field private static NONE:I

.field public static PREF_NAME:Ljava/lang/String;

.field private static UPDATE:I

.field public static appletsString:[Ljava/lang/String;

.field public static locations:[Ljava/lang/String;

.field public static newest:Ljava/lang/String;

.field public static updateType:I

.field public static versions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    sput v2, Lstericson/busybox/donate/Constants;->NONE:I

    .line 7
    sput v3, Lstericson/busybox/donate/Constants;->UPDATE:I

    .line 8
    sput v4, Lstericson/busybox/donate/Constants;->NEW:I

    .line 9
    sput v5, Lstericson/busybox/donate/Constants;->BOTH:I

    .line 11
    sget v0, Lstericson/busybox/donate/Constants;->NONE:I

    sput v0, Lstericson/busybox/donate/Constants;->updateType:I

    .line 13
    const-string v0, "version"

    sput-object v0, Lstericson/busybox/donate/Constants;->EXTRA_BUSYBOX_VERSION:Ljava/lang/String;

    .line 14
    const-string v0, "path"

    sput-object v0, Lstericson/busybox/donate/Constants;->EXTRA_INSTALL_PATH:Ljava/lang/String;

    .line 15
    const-string v0, "BusyBox"

    sput-object v0, Lstericson/busybox/donate/Constants;->PREF_NAME:Ljava/lang/String;

    .line 17
    const-string v0, "BusyBox 1.20.2"

    sput-object v0, Lstericson/busybox/donate/Constants;->newest:Ljava/lang/String;

    .line 18
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk78EBO78KPQkOCo2SCPqImOv6ViRmY7Vy/d5xOi1+B1mJEWtHreHxrDw9sdyVaxbd3X/PnFIUQzj2Qk159RMP7p2lIiJ1yYVyifOciVV1f4r2z7llCKMJYCVVe0k+9P5SVEWZWoV+5QqJqm06pZ12ChsMNUN+3JujIUtiCARVn4wBmCT+eXfHcxmhyVfnE4a+3FlLGYrnCKE2B6AhcHXJXfPaW3K4P6JMDbWGoxO6yM/qPHqsfbsZK45Ooaqs1To2Oe6b7SaaAxAXPGipTCzQ7x8BRnMLkTMoLVDN0ABVlCgYpcWB9HysPALIXstSUWeGnF4WptkAfc34sQZm42DsQIDAQAB"

    sput-object v0, Lstericson/busybox/donate/Constants;->Key:Ljava/lang/String;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BusyBox 1.20.2"

    aput-object v1, v0, v2

    const-string v1, "BusyBox 1.20.1"

    aput-object v1, v0, v3

    const-string v1, "BusyBox 1.20.0"

    aput-object v1, v0, v4

    const-string v1, "BusyBox 1.19.4"

    aput-object v1, v0, v5

    const-string v1, "BusyBox 1.19.3"

    aput-object v1, v0, v6

    sput-object v0, Lstericson/busybox/donate/Constants;->versions:[Ljava/lang/String;

    .line 22
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/system/bin"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin"

    aput-object v1, v0, v3

    const-string v1, "Custom Path"

    aput-object v1, v0, v4

    sput-object v0, Lstericson/busybox/donate/Constants;->locations:[Ljava/lang/String;

    .line 26
    const/16 v0, 0xd8

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string v1, "["

    aput-object v1, v0, v2

    .line 28
    const-string v1, "[["

    aput-object v1, v0, v3

    .line 29
    const-string v1, "ash"

    aput-object v1, v0, v4

    .line 30
    const-string v1, "awk"

    aput-object v1, v0, v5

    .line 31
    const-string v1, "base64"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 32
    const-string v2, "basename"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 33
    const-string v2, "bunzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 34
    const-string v2, "bzip2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 35
    const-string v2, "blkid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 36
    const-string v2, "cal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 37
    const-string v2, "cat"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 38
    const-string v2, "chat"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 39
    const-string v2, "chattr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 40
    const-string v2, "chgrp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 41
    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 42
    const-string v2, "chown"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 43
    const-string v2, "chroot"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 44
    const-string v2, "chrt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 45
    const-string v2, "cksum"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 46
    const-string v2, "clear"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 47
    const-string v2, "comm"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 48
    const-string v2, "cp"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 49
    const-string v2, "crond"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 50
    const-string v2, "crontab"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 51
    const-string v2, "cut"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 52
    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 53
    const-string v2, "dd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 54
    const-string v2, "depmod"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 55
    const-string v2, "devmem"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 56
    const-string v2, "df"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 57
    const-string v2, "diff"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 58
    const-string v2, "dirname"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 59
    const-string v2, "dmesg"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 60
    const-string v2, "dnsd"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 61
    const-string v2, "dnsdomainname"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 62
    const-string v2, "dos2unix"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 63
    const-string v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 64
    const-string v2, "echo"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 65
    const-string v2, "egrep"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 66
    const-string v2, "env"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 67
    const-string v2, "ether-wake"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 68
    const-string v2, "expand"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 69
    const-string v2, "expr"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 70
    const-string v2, "fakeidentd"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 71
    const-string v2, "fdflush"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 72
    const-string v2, "fdformat"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 73
    const-string v2, "fdisk"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 74
    const-string v2, "fgrep"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 75
    const-string v2, "find"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 76
    const-string v2, "fold"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 77
    const-string v2, "free"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 78
    const-string v2, "freeramdisk"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 79
    const-string v2, "fsck"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 80
    const-string v2, "fsync"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 81
    const-string v2, "ftpd"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 82
    const-string v2, "ftpget"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 83
    const-string v2, "ftpput"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 84
    const-string v2, "getopt"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 85
    const-string v2, "grep"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 86
    const-string v2, "groups"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 87
    const-string v2, "gunzip"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 88
    const-string v2, "gzip"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 89
    const-string v2, "hd"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 90
    const-string v2, "head"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 91
    const-string v2, "hexdump"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 92
    const-string v2, "hostid"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 93
    const-string v2, "hostname"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 94
    const-string v2, "httpd"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 95
    const-string v2, "hwclock"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 96
    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 97
    const-string v2, "ifconfig"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 98
    const-string v2, "ifenslave"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 99
    const-string v2, "inetd"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 100
    const-string v2, "inotifyd"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 101
    const-string v2, "insmod"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 102
    const-string v2, "install"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 103
    const-string v2, "ionice"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 104
    const-string v2, "iostat"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 105
    const-string v2, "ip"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 106
    const-string v2, "ipaddr"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 107
    const-string v2, "ipcalc"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 108
    const-string v2, "iplink"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 109
    const-string v2, "iproute"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 110
    const-string v2, "iprule"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 111
    const-string v2, "iptunnel"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 112
    const-string v2, "kill"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 113
    const-string v2, "killall"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 114
    const-string v2, "killall5"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 115
    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 116
    const-string v2, "ln"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 117
    const-string v2, "logname"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 118
    const-string v2, "losetup"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 119
    const-string v2, "ls"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 120
    const-string v2, "lsattr"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 121
    const-string v2, "lsmod"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 122
    const-string v2, "lsusb"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 123
    const-string v2, "lzop"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 124
    const-string v2, "lzopcat"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 125
    const-string v2, "md5sum"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 126
    const-string v2, "mkdir"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 127
    const-string v2, "mkdosfs"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 128
    const-string v2, "microcom"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 129
    const-string v2, "mke2fs"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 130
    const-string v2, "mkfifo"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 131
    const-string v2, "mkfs.ext2"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 132
    const-string v2, "mkfs.vfat"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 133
    const-string v2, "mknod"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 134
    const-string v2, "mkswap"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 135
    const-string v2, "modinfo"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 136
    const-string v2, "modprobe"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 137
    const-string v2, "more"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 138
    const-string v2, "mount"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 139
    const-string v2, "mt"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 140
    const-string v2, "mv"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 141
    const-string v2, "nameif"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 142
    const-string v2, "nanddump"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 143
    const-string v2, "nandwrite"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 144
    const-string v2, "nc"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 145
    const-string v2, "netstat"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 146
    const-string v2, "nice"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 147
    const-string v2, "nmeter"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 148
    const-string v2, "nslookup"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 149
    const-string v2, "ntpd"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 150
    const-string v2, "od"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 151
    const-string v2, "patch"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 152
    const-string v2, "pgrep"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 153
    const-string v2, "pidof"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 154
    const-string v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 155
    const-string v2, "ping6"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 156
    const-string v2, "pkill"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 157
    const-string v2, "pmap"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 158
    const-string v2, "powertop"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 159
    const-string v2, "printenv"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 160
    const-string v2, "printf"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 161
    const-string v2, "ps"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 162
    const-string v2, "pscan"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 163
    const-string v2, "pwd"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 164
    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 165
    const-string v2, "rdev"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 166
    const-string v2, "readahead"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 167
    const-string v2, "readlink"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 168
    const-string v2, "realpath"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 169
    const-string v2, "renice"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 170
    const-string v2, "reset"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 171
    const-string v2, "rev"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 172
    const-string v2, "rfkill"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 173
    const-string v2, "rm"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 174
    const-string v2, "rmdir"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 175
    const-string v2, "rmmod"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 176
    const-string v2, "route"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 177
    const-string v2, "run-parts"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 178
    const-string v2, "script"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 179
    const-string v2, "scriptreplay"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 180
    const-string v2, "sed"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 181
    const-string v2, "seq"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 182
    const-string v2, "setkeycodes"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 183
    const-string v2, "setlogcons"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 184
    const-string v2, "setsid"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 185
    const-string v2, "sha1sum"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 186
    const-string v2, "sha256sum"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 187
    const-string v2, "sha512sum"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    .line 188
    const-string v2, "showkey"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 189
    const-string v2, "sleep"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 190
    const-string v2, "smemcap"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    .line 191
    const-string v2, "sort"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 192
    const-string v2, "split"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    .line 193
    const-string v2, "stat"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 194
    const-string v2, "strings"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 195
    const-string v2, "stty"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 196
    const-string v2, "sum"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 197
    const-string v2, "swapoff"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 198
    const-string v2, "swapon"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 199
    const-string v2, "sync"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 200
    const-string v2, "sysctl"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    .line 201
    const-string v2, "tac"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 202
    const-string v2, "tail"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 203
    const-string v2, "tar"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 204
    const-string v2, "tee"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 205
    const-string v2, "telnet"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    .line 206
    const-string v2, "telnetd"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 207
    const-string v2, "test"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 208
    const-string v2, "tftp"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 209
    const-string v2, "tftpd"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    .line 210
    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 211
    const-string v2, "timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 212
    const-string v2, "top"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 213
    const-string v2, "touch"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    .line 214
    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 215
    const-string v2, "traceroute"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    .line 216
    const-string v2, "traceroute6"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 217
    const-string v2, "tty"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 218
    const-string v2, "ttysize"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 219
    const-string v2, "tunctl"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    .line 220
    const-string v2, "umount"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 221
    const-string v2, "uname"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 222
    const-string v2, "uncompress"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 223
    const-string v2, "unexpand"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    .line 224
    const-string v2, "uniq"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 225
    const-string v2, "unix2dos"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    .line 226
    const-string v2, "unlzop"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 227
    const-string v2, "unzip"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    .line 228
    const-string v2, "uptime"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 229
    const-string v2, "usleep"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 230
    const-string v2, "uudecode"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 231
    const-string v2, "uuencode"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    .line 232
    const-string v2, "vconfig"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 233
    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    .line 234
    const-string v2, "watch"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 235
    const-string v2, "wc"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    .line 236
    const-string v2, "wget"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 237
    const-string v2, "which"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    .line 238
    const-string v2, "who"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 239
    const-string v2, "whoami"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 240
    const-string v2, "whois"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 241
    const-string v2, "xargs"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    .line 242
    const-string v2, "zcat"

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
