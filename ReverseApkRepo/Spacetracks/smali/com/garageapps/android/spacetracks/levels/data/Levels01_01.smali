.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_01.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1001300

    const v6, 0x1000a00

    const v5, 0x1000b00

    const v4, 0x1000800

    const v3, 0x1000900

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mSizeX:I

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mMaxTime:I

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
    aput v7, v0, v1

    const/16 v1, 0x57

    aput v7, v0, v1

    const/16 v1, 0x58

    aput v7, v0, v1

    const/16 v1, 0x5d

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v4, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x6b

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x72

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v3, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x8e

    .line 42
    aput v6, v0, v1

    const/16 v1, 0x8f

    aput v5, v0, v1

    const/16 v1, 0x90

    aput v6, v0, v1

    const/16 v1, 0x95

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x9c

    .line 44
    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0xa3

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v4, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v6, v0, v1

    const/16 v1, 0xab

    aput v5, v0, v1

    const/16 v1, 0xac

    aput v6, v0, v1

    const/16 v1, 0xb1

    .line 47
    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v4, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v4, v0, v1

    const/16 v1, 0xbf

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v4, v0, v1

    const/16 v1, 0xc6

    .line 50
    aput v6, v0, v1

    const/16 v1, 0xc7

    aput v5, v0, v1

    const/16 v1, 0xc8

    aput v6, v0, v1

    const/16 v1, 0xcd

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v4, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xdb

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe2

    aput v3, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe5

    aput v4, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xea

    aput v3, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v4, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v4, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf1

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v4, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0xff

    aput v4, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x105

    aput v3, v0, v1

    const/16 v1, 0x106

    const v2, 0x1000300

    aput v2, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v5, v0, v1

    const/16 v1, 0x10c

    aput v5, v0, v1

    const/16 v1, 0x10d

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v5, v0, v1

    const/16 v1, 0x10f

    aput v5, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x113

    aput v3, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v4, v0, v1

    const/16 v1, 0x121

    aput v4, v0, v1

    const/16 v1, 0x123

    aput v4, v0, v1

    const/16 v1, 0x124

    aput v4, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x128

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

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
    aput v5, v0, v1

    const/16 v1, 0x136

    aput v5, v0, v1

    const/16 v1, 0x137

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x138

    aput v5, v0, v1

    const/16 v1, 0x139

    aput v5, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x144

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x14b

    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v4, v0, v1

    const/16 v1, 0x14e

    aput v4, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x152

    aput v3, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x155

    aput v3, v0, v1

    const/16 v1, 0x158

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v3, v0, v1

    const/16 v1, 0x15f

    .line 72
    aput v5, v0, v1

    const/16 v1, 0x160

    aput v5, v0, v1

    const/16 v1, 0x161

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x162

    aput v5, v0, v1

    const/16 v1, 0x163

    aput v5, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x167

    aput v3, v0, v1

    const/16 v1, 0x168

    aput v7, v0, v1

    const/16 v1, 0x169

    aput v3, v0, v1

    const/16 v1, 0x16a

    aput v3, v0, v1

    const/16 v1, 0x16d

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v3, v0, v1

    const/16 v1, 0x16f

    aput v4, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x171

    aput v3, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x176

    aput v4, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x17f

    aput v4, v0, v1

    const/16 v1, 0x182

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x183

    aput v3, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v4, v0, v1

    const/16 v1, 0x189

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x18a

    aput v4, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v4, v0, v1

    const/16 v1, 0x18d

    aput v4, v0, v1

    const/16 v1, 0x190

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x191

    aput v4, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v4, v0, v1

    const/16 v1, 0x194

    aput v4, v0, v1

    const/16 v1, 0x197

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x198

    aput v4, v0, v1

    const/16 v1, 0x199

    aput v4, v0, v1

    const/16 v1, 0x19a

    aput v4, v0, v1

    const/16 v1, 0x19b

    aput v4, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mTiles:[I

    .line 85
    const/16 v0, 0x1c

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    const v2, 0x1001010c

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    const v2, 0x1001050c

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 89
    const v2, 0x10010112

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 90
    const v2, 0x10010512

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 91
    const v2, 0x30010318

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 94
    const v2, 0x1010101

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 95
    const v2, 0x1010501

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 96
    const v2, 0x1010103

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 97
    const v2, 0x1010503

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 98
    const v2, 0x1010105

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 99
    const v2, 0x1010505

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 100
    const v2, 0x1010309

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const v2, 0x101030f

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 102
    const v2, 0x1010315

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 103
    const v2, 0x1010117

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 104
    const v2, 0x1010517

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 105
    const v2, 0x1010119

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 106
    const v2, 0x1010519

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 107
    const v2, 0x101011b

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 108
    const v2, 0x101051b

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 109
    const v2, 0x101021f

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 110
    const v2, 0x101041f

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 111
    const v2, 0x1010223

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 112
    const v2, 0x1010423

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 113
    const v2, 0x1010227

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 114
    const v2, 0x1010427

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 115
    const v2, 0x63010333

    aput v2, v0, v1

    .line 85
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_01;->mObjects:[I

    .line 118
    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
