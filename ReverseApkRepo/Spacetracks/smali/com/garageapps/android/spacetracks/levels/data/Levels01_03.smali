.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_03.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x1000b00

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mSizeX:I

    .line 11
    const/16 v0, 0x55

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mTileMapId:I

    .line 14
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mNebulaColor:[F

    .line 15
    new-array v0, v7, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mMaxTime:I

    .line 21
    const/16 v0, 0x253

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

    const/16 v1, 0x55

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x56

    aput v4, v0, v1

    const/16 v1, 0x57

    aput v3, v0, v1

    const/16 v1, 0x58

    aput v4, v0, v1

    const/16 v1, 0x59

    aput v3, v0, v1

    const/16 v1, 0x5c

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x60

    aput v4, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x64

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x6b

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x71

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x72

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x75

    aput v3, v0, v1

    const/16 v1, 0x78

    .line 39
    aput v6, v0, v1

    const/16 v1, 0x79

    aput v6, v0, v1

    const/16 v1, 0x7a

    aput v5, v0, v1

    const/16 v1, 0x7b

    aput v6, v0, v1

    const/16 v1, 0x7c

    aput v6, v0, v1

    const/16 v1, 0x7f

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x80

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v4, v0, v1

    const/16 v1, 0x86

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x87

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8d

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v3, v0, v1

    const/16 v1, 0x90

    aput v3, v0, v1

    const/16 v1, 0x91

    aput v3, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x95

    aput v4, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x98

    aput v3, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v4, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v4, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc7

    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcd

    .line 51
    aput v3, v0, v1

    const/16 v1, 0xce

    aput v4, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v4, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xdc

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xe3

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xea

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xf0

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf1

    aput v4, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf7

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfe

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xff

    aput v4, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x105

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10d

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

    aput v4, v0, v1

    const/16 v1, 0x123

    aput v4, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v6, v0, v1

    const/16 v1, 0x128

    aput v6, v0, v1

    const/16 v1, 0x129

    aput v5, v0, v1

    const/16 v1, 0x12a

    aput v6, v0, v1

    const/16 v1, 0x12b

    aput v6, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x136

    aput v3, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v3, v0, v1

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

    const/16 v1, 0x144

    aput v4, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v4, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

    const/16 v1, 0x14b

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x14c

    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v3, v0, v1

    const/16 v1, 0x153

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x15a

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x161

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x168

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16f

    aput v4, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x176

    aput v5, v0, v1

    const/16 v1, 0x177

    aput v4, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v4, v0, v1

    const/16 v1, 0x17d

    aput v5, v0, v1

    const/16 v1, 0x17e

    aput v4, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x182

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x183

    aput v4, v0, v1

    const/16 v1, 0x185

    aput v4, v0, v1

    const/16 v1, 0x186

    aput v3, v0, v1

    const/16 v1, 0x189

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18a

    aput v4, v0, v1

    const/16 v1, 0x18c

    aput v4, v0, v1

    const/16 v1, 0x18d

    aput v3, v0, v1

    const/16 v1, 0x190

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x191

    aput v4, v0, v1

    const/16 v1, 0x192

    aput v5, v0, v1

    const/16 v1, 0x193

    aput v4, v0, v1

    const/16 v1, 0x194

    aput v3, v0, v1

    const/16 v1, 0x197

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x199

    aput v5, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    const/16 v1, 0x19e

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x19f

    aput v4, v0, v1

    const/16 v1, 0x1a1

    aput v4, v0, v1

    const/16 v1, 0x1a2

    aput v3, v0, v1

    const/16 v1, 0x1a5

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x1a6

    aput v4, v0, v1

    const/16 v1, 0x1a8

    aput v4, v0, v1

    const/16 v1, 0x1a9

    aput v3, v0, v1

    const/16 v1, 0x1ac

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1ad

    aput v4, v0, v1

    const/16 v1, 0x1ae

    aput v5, v0, v1

    const/16 v1, 0x1af

    aput v4, v0, v1

    const/16 v1, 0x1b0

    aput v3, v0, v1

    const/16 v1, 0x1b3

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x1b4

    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v5, v0, v1

    const/16 v1, 0x1b6

    aput v4, v0, v1

    const/16 v1, 0x1b7

    aput v3, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v3, v0, v1

    const/16 v1, 0x1be

    aput v4, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x1c2

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v3, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c8

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x1c9

    aput v3, v0, v1

    const/16 v1, 0x1ca

    aput v5, v0, v1

    const/16 v1, 0x1cb

    aput v3, v0, v1

    const/16 v1, 0x1cc

    aput v4, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d0

    aput v3, v0, v1

    const/16 v1, 0x1d1

    aput v5, v0, v1

    const/16 v1, 0x1d2

    aput v3, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v4, v0, v1

    const/16 v1, 0x1d7

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v3, v0, v1

    const/16 v1, 0x1da

    aput v4, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1de

    aput v3, v0, v1

    const/16 v1, 0x1e0

    aput v3, v0, v1

    const/16 v1, 0x1e1

    aput v3, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v4, v0, v1

    const/16 v1, 0x1e5

    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v3, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1e8

    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ec

    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1ef

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x1f4

    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v4, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v5, v0, v1

    const/16 v1, 0x202

    aput v5, v0, v1

    const/16 v1, 0x203

    aput v5, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20f

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v4, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x21d

    .line 99
    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v4, v0, v1

    const/16 v1, 0x224

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v4, v0, v1

    const/16 v1, 0x22c

    aput v4, v0, v1

    const/16 v1, 0x22d

    aput v4, v0, v1

    const/16 v1, 0x232

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x234

    aput v3, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v5, v0, v1

    const/16 v1, 0x23a

    aput v5, v0, v1

    const/16 v1, 0x23b

    aput v5, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x241

    aput v4, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x248

    aput v4, v0, v1

    const/16 v1, 0x249

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mTiles:[I

    .line 110
    const/16 v0, 0x30

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 112
    const v2, 0x1001020b

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 113
    const v2, 0x1001040b

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 114
    const v2, 0x3001030f

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 115
    const v2, 0x10010220

    aput v2, v0, v1

    .line 116
    const v1, 0x10010420

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 117
    const v2, 0x20010323

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 118
    const v2, 0x3001022f

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 119
    const v2, 0x1001042f

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 120
    const v2, 0x1001023a

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 121
    const v2, 0x3001043a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 124
    const v2, 0x1010202

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 125
    const v2, 0x1010402

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 126
    const v2, 0x1010204

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 127
    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 128
    const v2, 0x1010206

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 129
    const v2, 0x1010406

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 130
    const v2, 0x1010309

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 131
    const v2, 0x101010e

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 132
    const v2, 0x101050e

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 133
    const v2, 0x1010116

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 134
    const v2, 0x1010516

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 135
    const v2, 0x1010117

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 136
    const v2, 0x1010517

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 137
    const v2, 0x101011f

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 138
    const v2, 0x101051f

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 139
    const v2, 0x1010225

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 140
    const v2, 0x1010425

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 141
    const v2, 0x1010126

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 142
    const v2, 0x1010526

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 143
    const v2, 0x101012e

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 144
    const v2, 0x101052e

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 145
    const v2, 0x1010232

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 146
    const v2, 0x1010432

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 147
    const v2, 0x1010236

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 148
    const v2, 0x1010436

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 149
    const v2, 0x1010138

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 150
    const v2, 0x1010538

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 151
    const v2, 0x101013b

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 152
    const v2, 0x101053b

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 153
    const v2, 0x101013e

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 154
    const v2, 0x101053e

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 155
    const v2, 0x101033f

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 156
    const v2, 0x1010343

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 157
    const v2, 0x1010347

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 158
    const v2, 0x1010148

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 159
    const v2, 0x1010548

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 160
    const v2, 0x6301034c

    aput v2, v0, v1

    .line 110
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_03;->mObjects:[I

    .line 163
    return-void

    .line 14
    nop

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
