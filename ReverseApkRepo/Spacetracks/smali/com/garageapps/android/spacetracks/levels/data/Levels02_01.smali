.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_01.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000200

    const v6, 0xd000800

    const v5, 0xc000800

    const v4, 0x1000700

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mSizeX:I

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mMaxTime:I

    .line 21
    const/16 v0, 0x1a4

    new-array v0, v0, [I

    const/16 v1, 0x49

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x65

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x6c

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x73

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v6, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v5, v0, v1

    const/16 v1, 0x81

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x8f

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x95

    .line 43
    aput v6, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v5, v0, v1

    const/16 v1, 0x9d

    .line 44
    aput v4, v0, v1

    const/16 v1, 0xa4

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xab

    .line 46
    aput v4, v0, v1

    const/16 v1, 0xb1

    .line 47
    aput v6, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v5, v0, v1

    const/16 v1, 0xb9

    .line 48
    aput v4, v0, v1

    const/16 v1, 0xc0

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc6

    .line 50
    aput v6, v0, v1

    const/16 v1, 0xc7

    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v5, v0, v1

    const/16 v1, 0xcd

    .line 51
    aput v7, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v7, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xdb

    .line 53
    aput v7, v0, v1

    const/16 v1, 0xdd

    aput v7, v0, v1

    const/16 v1, 0xe2

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v6, v0, v1

    const/16 v1, 0xe9

    aput v4, v0, v1

    const/16 v1, 0xeb

    aput v4, v0, v1

    const/16 v1, 0xec

    aput v5, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xf7

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v4, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x105

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v4, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x113

    aput v4, v0, v1

    const/16 v1, 0x114

    aput v7, v0, v1

    const/16 v1, 0x115

    aput v4, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v4, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v4, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x121

    aput v3, v0, v1

    const/16 v1, 0x123

    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x128

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v4, v0, v1

    const/16 v1, 0x12e

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x12f

    aput v3, v0, v1

    const/16 v1, 0x131

    aput v3, v0, v1

    const/16 v1, 0x132

    aput v3, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x136

    aput v3, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v4, v0, v1

    const/16 v1, 0x144

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x146

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x147

    aput v4, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x14e

    aput v4, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x152

    aput v5, v0, v1

    const/16 v1, 0x154

    aput v6, v0, v1

    const/16 v1, 0x155

    aput v3, v0, v1

    const/16 v1, 0x158

    .line 71
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x159

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x15c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x160

    .line 72
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x161

    aput v3, v0, v1

    const/16 v1, 0x162

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x168

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v6, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    aput v5, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x176

    aput v4, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x17c

    .line 76
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x184

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v6, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v5, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x192

    aput v4, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x198

    .line 80
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x199

    aput v3, v0, v1

    const/16 v1, 0x19a

    const v2, 0xa000800

    aput v2, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mTiles:[I

    .line 85
    const/16 v0, 0x15

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    const v2, 0x21010304

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    const v2, 0x31010114

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 89
    const v2, 0x31010514

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 90
    const v2, 0x40010320

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 91
    const v2, 0x1101032e

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 94
    const v2, 0x2010202

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 95
    const v2, 0x2010402

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 96
    const v2, 0x2010206

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 97
    const v2, 0x2010406

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 98
    const v2, 0x201030a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 99
    const v2, 0x201020e

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 100
    const v2, 0x201040e

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const v2, 0x2010314

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 102
    const v2, 0x201021a

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 103
    const v2, 0x201041a

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 104
    const v2, 0x201031e

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 105
    const v2, 0x2010322

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 106
    const v2, 0x2010326

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 107
    const v2, 0x201032a

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 108
    const v2, 0x63010333

    aput v2, v0, v1

    .line 85
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_01;->mObjects:[I

    .line 111
    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
