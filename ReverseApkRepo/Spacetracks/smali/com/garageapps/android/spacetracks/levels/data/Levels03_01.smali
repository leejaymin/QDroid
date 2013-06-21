.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_01.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x10a0900

    const v6, 0x1000600

    const v5, 0x1000900

    const v4, 0x10a0800

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mSizeX:I

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mMaxTime:I

    .line 21
    const/16 v0, 0x1a4

    new-array v0, v0, [I

    const/16 v1, 0x48

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 35
    aput v5, v0, v1

    const/16 v1, 0x5e

    aput v5, v0, v1

    const/16 v1, 0x5f

    aput v5, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v5, v0, v1

    const/16 v1, 0x65

    aput v5, v0, v1

    const/16 v1, 0x66

    aput v5, v0, v1

    const/16 v1, 0x6b

    .line 37
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x74

    aput v3, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x87

    .line 41
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x8e

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x90

    aput v3, v0, v1

    const/16 v1, 0x95

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x9c

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 45
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v4, v0, v1

    const/16 v1, 0xb1

    aput v5, v0, v1

    const/16 v1, 0xb3

    aput v5, v0, v1

    const/16 v1, 0xb4

    aput v4, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v7, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v7, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xbf

    aput v5, v0, v1

    const/16 v1, 0xc1

    aput v5, v0, v1

    const/16 v1, 0xc2

    aput v4, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v7, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc7

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0xc8

    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v7, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xcd

    aput v5, v0, v1

    const/16 v1, 0xcf

    aput v5, v0, v1

    const/16 v1, 0xd0

    aput v4, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v7, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v7, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdb

    aput v5, v0, v1

    const/16 v1, 0xdd

    aput v5, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe2

    aput v3, v0, v1

    const/16 v1, 0xe3

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe5

    aput v4, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xe9

    aput v5, v0, v1

    const/16 v1, 0xeb

    aput v5, v0, v1

    const/16 v1, 0xec

    aput v4, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v7, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf1

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v7, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xf7

    aput v5, v0, v1

    const/16 v1, 0xf9

    aput v5, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v7, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0xff

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v7, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x105

    aput v5, v0, v1

    const/16 v1, 0x106

    aput v3, v0, v1

    const/16 v1, 0x107

    aput v5, v0, v1

    const/16 v1, 0x108

    aput v4, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v7, v0, v1

    const/16 v1, 0x10c

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x10d

    aput v5, v0, v1

    const/16 v1, 0x10e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x10f

    aput v7, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x116

    aput v4, v0, v1

    const/16 v1, 0x11a

    .line 62
    aput v4, v0, v1

    const/16 v1, 0x11b

    aput v5, v0, v1

    const/16 v1, 0x11c

    aput v4, v0, v1

    const/16 v1, 0x121

    .line 63
    aput v7, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x123

    aput v7, v0, v1

    const/16 v1, 0x128

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x129

    aput v5, v0, v1

    const/16 v1, 0x12a

    aput v4, v0, v1

    const/16 v1, 0x12f

    .line 65
    aput v7, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x131

    aput v7, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x136

    aput v4, v0, v1

    const/16 v1, 0x137

    aput v5, v0, v1

    const/16 v1, 0x138

    aput v4, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x145

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v6, v0, v1

    const/16 v1, 0x14c

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x14e

    aput v6, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x153

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x155

    aput v3, v0, v1

    const/16 v1, 0x158

    .line 71
    aput v6, v0, v1

    const/16 v1, 0x15a

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x15c

    aput v6, v0, v1

    const/16 v1, 0x15f

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x161

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x163

    aput v3, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v6, v0, v1

    const/16 v1, 0x168

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x16a

    aput v6, v0, v1

    const/16 v1, 0x16d

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v6, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    aput v6, v0, v1

    const/16 v1, 0x171

    aput v3, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v6, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x178

    aput v6, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v6, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v6, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x182

    .line 77
    aput v6, v0, v1

    const/16 v1, 0x183

    aput v3, v0, v1

    const/16 v1, 0x184

    aput v6, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v6, v0, v1

    const/16 v1, 0x189

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18a

    aput v6, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v6, v0, v1

    const/16 v1, 0x18d

    aput v3, v0, v1

    const/16 v1, 0x190

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x192

    aput v6, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x194

    aput v3, v0, v1

    const/16 v1, 0x197

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x199

    aput v3, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mTiles:[I

    .line 85
    const/16 v0, 0x1b

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    const v2, 0x12010306

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    const v2, 0x1201010b

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 89
    const v2, 0x1201050b

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 90
    const v2, 0x32010312

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 91
    const v2, 0x1201021b

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 92
    const v2, 0x1201041b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 93
    const v2, 0x32010226

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 94
    const v2, 0x32010426

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 97
    const v2, 0x3010101

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 98
    const v2, 0x3010501

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 99
    const v2, 0x3010103

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 100
    const v2, 0x3010503

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const v2, 0x3010207

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 102
    const v2, 0x3010407

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 103
    const v2, 0x302010f

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 104
    const v2, 0x302050f

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 105
    const v2, 0x3020114

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 106
    const v2, 0x3020514

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 107
    const v2, 0x302011b

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 108
    const v2, 0x302051b

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 109
    const v2, 0x3020122

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 110
    const v2, 0x3020522

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 111
    const v2, 0x3010324

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 112
    const v2, 0x3010328

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 113
    const v2, 0x301032c

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 114
    const v2, 0x63010333

    aput v2, v0, v1

    .line 85
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_01;->mObjects:[I

    .line 117
    return-void

    .line 14
    nop

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
