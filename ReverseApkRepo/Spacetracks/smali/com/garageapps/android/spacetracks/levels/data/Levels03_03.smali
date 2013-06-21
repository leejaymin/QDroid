.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_03.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xa000800

    const v6, 0x10a0800

    const v5, 0x10a0200

    const v4, 0x1000600

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0x9

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mSizeX:I

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mMaxTime:I

    .line 21
    const/16 v0, 0x21c

    new-array v0, v0, [I

    const/16 v1, 0x5b

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x6d

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x76

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x77

    aput v3, v0, v1

    const/16 v1, 0x79

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x7c

    aput v3, v0, v1

    const/16 v1, 0x7f

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x80

    aput v7, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x84

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x85

    aput v4, v0, v1

    const/16 v1, 0x88

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x8b

    aput v4, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x91

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x93

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x94

    aput v4, v0, v1

    const/16 v1, 0x95

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x9a

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0xa0

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v4, v0, v1

    const/16 v1, 0xa6

    aput v5, v0, v1

    const/16 v1, 0xa7

    aput v4, v0, v1

    const/16 v1, 0xa9

    aput v3, v0, v1

    const/16 v1, 0xac

    .line 41
    aput v4, v0, v1

    const/16 v1, 0xae

    aput v4, v0, v1

    const/16 v1, 0xaf

    aput v5, v0, v1

    const/16 v1, 0xb0

    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb5

    .line 42
    aput v4, v0, v1

    const/16 v1, 0xb7

    aput v4, v0, v1

    const/16 v1, 0xb8

    aput v5, v0, v1

    const/16 v1, 0xb9

    aput v4, v0, v1

    const/16 v1, 0xbb

    aput v4, v0, v1

    const/16 v1, 0xbe

    .line 43
    aput v4, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc4

    aput v4, v0, v1

    const/16 v1, 0xc7

    .line 44
    aput v3, v0, v1

    const/16 v1, 0xc9

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v7, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xd0

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xd3

    aput v4, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd9

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xda

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xde

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe2

    .line 47
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xe5

    aput v4, v0, v1

    const/16 v1, 0xe6

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xe8

    aput v7, v0, v1

    const/16 v1, 0xec

    .line 48
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xed

    aput v3, v0, v1

    const/16 v1, 0xee

    aput v3, v0, v1

    const/16 v1, 0xef

    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v7, v0, v1

    const/16 v1, 0xf6

    .line 49
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xf7

    aput v4, v0, v1

    const/16 v1, 0xf8

    aput v7, v0, v1

    const/16 v1, 0xff

    .line 50
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v4, v0, v1

    const/16 v1, 0x101

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x107

    .line 51
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x109

    aput v4, v0, v1

    const/16 v1, 0x10a

    aput v3, v0, v1

    const/16 v1, 0x10b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x10f

    .line 52
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x110

    aput v3, v0, v1

    const/16 v1, 0x111

    aput v7, v0, v1

    const/16 v1, 0x112

    aput v3, v0, v1

    const/16 v1, 0x113

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x115

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x118

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x119

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v7, v0, v1

    const/16 v1, 0x11e

    aput v3, v0, v1

    const/16 v1, 0x121

    .line 54
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x127

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x12a

    .line 55
    aput v3, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x133

    .line 56
    aput v4, v0, v1

    const/16 v1, 0x136

    aput v5, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13c

    .line 57
    aput v4, v0, v1

    const/16 v1, 0x13e

    aput v6, v0, v1

    const/16 v1, 0x13f

    const v2, 0x1140600

    aput v2, v0, v1

    const/16 v1, 0x140

    aput v6, v0, v1

    const/16 v1, 0x142

    aput v4, v0, v1

    const/16 v1, 0x145

    .line 58
    aput v4, v0, v1

    const/16 v1, 0x148

    aput v5, v0, v1

    const/16 v1, 0x14b

    aput v4, v0, v1

    const/16 v1, 0x14e

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x157

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x15a

    aput v5, v0, v1

    const/16 v1, 0x15d

    aput v4, v0, v1

    const/16 v1, 0x160

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x162

    aput v6, v0, v1

    const/16 v1, 0x163

    const v2, 0x1140600

    aput v2, v0, v1

    const/16 v1, 0x164

    aput v6, v0, v1

    const/16 v1, 0x166

    aput v4, v0, v1

    const/16 v1, 0x169

    .line 62
    aput v4, v0, v1

    const/16 v1, 0x16c

    aput v5, v0, v1

    const/16 v1, 0x16f

    aput v4, v0, v1

    const/16 v1, 0x172

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x17b

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x17e

    aput v5, v0, v1

    const/16 v1, 0x181

    aput v4, v0, v1

    const/16 v1, 0x184

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x186

    aput v6, v0, v1

    const/16 v1, 0x187

    const v2, 0x1140600

    aput v2, v0, v1

    const/16 v1, 0x188

    aput v6, v0, v1

    const/16 v1, 0x18a

    aput v4, v0, v1

    const/16 v1, 0x18d

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x190

    aput v5, v0, v1

    const/16 v1, 0x193

    aput v4, v0, v1

    const/16 v1, 0x196

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x19c

    aput v3, v0, v1

    const/16 v1, 0x19f

    .line 68
    aput v4, v0, v1

    const/16 v1, 0x1a2

    aput v5, v0, v1

    const/16 v1, 0x1a5

    aput v4, v0, v1

    const/16 v1, 0x1a8

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x1aa

    aput v6, v0, v1

    const/16 v1, 0x1ab

    const v2, 0x1140600

    aput v2, v0, v1

    const/16 v1, 0x1ac

    aput v6, v0, v1

    const/16 v1, 0x1ae

    aput v4, v0, v1

    const/16 v1, 0x1b1

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x1b4

    aput v5, v0, v1

    const/16 v1, 0x1b7

    aput v4, v0, v1

    const/16 v1, 0x1ba

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x1c0

    aput v3, v0, v1

    const/16 v1, 0x1c3

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x1c6

    aput v5, v0, v1

    const/16 v1, 0x1c9

    aput v4, v0, v1

    const/16 v1, 0x1cc

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x1ce

    aput v6, v0, v1

    const/16 v1, 0x1cf

    const v2, 0x1140600

    aput v2, v0, v1

    const/16 v1, 0x1d0

    aput v6, v0, v1

    const/16 v1, 0x1d2

    aput v4, v0, v1

    const/16 v1, 0x1d5

    .line 74
    aput v4, v0, v1

    const/16 v1, 0x1d8

    aput v5, v0, v1

    const/16 v1, 0x1db

    aput v4, v0, v1

    const/16 v1, 0x1de

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x1e4

    aput v4, v0, v1

    const/16 v1, 0x1e7

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x1e8

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ea

    aput v3, v0, v1

    const/16 v1, 0x1ec

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1f0

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x1f1

    aput v3, v0, v1

    const/16 v1, 0x1f2

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1f3

    aput v3, v0, v1

    const/16 v1, 0x1f4

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1f6

    aput v3, v0, v1

    const/16 v1, 0x1f9

    .line 78
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x1fa

    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x1fd

    aput v3, v0, v1

    const/16 v1, 0x1fe

    aput v3, v0, v1

    const/16 v1, 0x1ff

    aput v7, v0, v1

    const/16 v1, 0x203

    .line 79
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x204

    aput v3, v0, v1

    const/16 v1, 0x205

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x206

    aput v3, v0, v1

    const/16 v1, 0x207

    aput v7, v0, v1

    const/16 v1, 0x20d

    .line 80
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x20e

    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v7, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mTiles:[I

    .line 85
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    const v2, 0x12010204

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    const v2, 0x12010604

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 89
    const v2, 0x1201010a

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 90
    const v2, 0x1201070a

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 91
    const v2, 0x12010116

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 92
    const v2, 0x12010716

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 93
    const v2, 0x22010421

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 94
    const v2, 0x32010425

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 95
    const v2, 0x1201032a

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 96
    const v2, 0x1201052a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 97
    const v2, 0x3201012e

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 98
    const v2, 0x3201072e

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const v2, 0x3010103

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 102
    const v2, 0x3010703

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 103
    const v2, 0x3010304

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 104
    const v2, 0x3010504

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 105
    const v2, 0x3010405

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 106
    const v2, 0x3020308

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 107
    const v2, 0x3020508

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 108
    const v2, 0x302030c

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 109
    const v2, 0x302050c

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 110
    const v2, 0x3020310

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 111
    const v2, 0x3020510

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 112
    const v2, 0x3020314

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 113
    const v2, 0x3020514

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 114
    const v2, 0x3020318

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 115
    const v2, 0x3020518

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 116
    const v2, 0x301041b

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 117
    const v2, 0x3010123

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 118
    const v2, 0x3010723

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 119
    const v2, 0x3010426

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 120
    const v2, 0x301042a

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 121
    const v2, 0x301022e

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 122
    const v2, 0x301062e

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 123
    const v2, 0x63010433

    aput v2, v0, v1

    .line 85
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_03;->mObjects:[I

    .line 126
    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
