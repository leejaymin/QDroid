.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_05.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x1000200

    const v5, 0x1000b00

    const v4, 0x1000800

    const v3, 0x1000900

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mTileMapId:I

    .line 14
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mNebulaColor:[F

    .line 15
    new-array v0, v7, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mMaxTime:I

    .line 21
    const/16 v0, 0x302

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
    aput v3, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    aput v3, v0, v1

    const/16 v1, 0x5d

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x6b

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

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

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x86

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x87

    aput v3, v0, v1

    const/16 v1, 0x88

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v4, v0, v1

    const/16 v1, 0x8d

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v4, v0, v1

    const/16 v1, 0x90

    aput v4, v0, v1

    const/16 v1, 0x91

    aput v4, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x95

    aput v4, v0, v1

    const/16 v1, 0x96

    aput v4, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa2

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v4, v0, v1

    const/16 v1, 0xc7

    aput v3, v0, v1

    const/16 v1, 0xc8

    aput v4, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v3, v0, v1

    const/16 v1, 0xcd

    aput v4, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v4, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdb

    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xdd

    aput v4, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe2

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

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v4, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v4, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v4, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v4, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v4, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x105

    aput v3, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x108

    aput v4, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v4, v0, v1

    const/16 v1, 0x113

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x11a

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x121

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x123

    aput v3, v0, v1

    const/16 v1, 0x128

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12f

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x131

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
    aput v4, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v4, v0, v1

    const/16 v1, 0x144

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x14b

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x14c

    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v3, v0, v1

    const/16 v1, 0x152

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x153

    aput v4, v0, v1

    const/16 v1, 0x154

    aput v4, v0, v1

    const/16 v1, 0x15a

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x161

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x168

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x16f

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x176

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x17d

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x184

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x18b

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x192

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x199

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1a8

    aput v4, v0, v1

    const/16 v1, 0x1ad

    .line 83
    aput v4, v0, v1

    const/16 v1, 0x1ae

    aput v3, v0, v1

    const/16 v1, 0x1af

    aput v4, v0, v1

    const/16 v1, 0x1b4

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v3, v0, v1

    const/16 v1, 0x1b6

    aput v4, v0, v1

    const/16 v1, 0x1bb

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v4, v0, v1

    const/16 v1, 0x1c2

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x1c3

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v4, v0, v1

    const/16 v1, 0x1c8

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x1c9

    aput v3, v0, v1

    const/16 v1, 0x1ca

    aput v3, v0, v1

    const/16 v1, 0x1cb

    aput v3, v0, v1

    const/16 v1, 0x1cc

    aput v4, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d0

    aput v3, v0, v1

    const/16 v1, 0x1d2

    aput v3, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v4, v0, v1

    const/16 v1, 0x1d7

    aput v4, v0, v1

    const/16 v1, 0x1d9

    aput v4, v0, v1

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

    aput v4, v0, v1

    const/16 v1, 0x1e7

    aput v4, v0, v1

    const/16 v1, 0x1e8

    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x1ec

    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1ef

    aput v4, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f4

    aput v4, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x1fb

    aput v4, v0, v1

    const/16 v1, 0x1fc

    aput v4, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v4, v0, v1

    const/16 v1, 0x202

    aput v4, v0, v1

    const/16 v1, 0x203

    aput v4, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x209

    aput v4, v0, v1

    const/16 v1, 0x20a

    aput v4, v0, v1

    const/16 v1, 0x20f

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x210

    aput v4, v0, v1

    const/16 v1, 0x211

    aput v4, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v4, v0, v1

    const/16 v1, 0x217

    aput v4, v0, v1

    const/16 v1, 0x218

    aput v4, v0, v1

    const/16 v1, 0x21c

    .line 99
    aput v4, v0, v1

    const/16 v1, 0x21d

    aput v3, v0, v1

    const/16 v1, 0x21e

    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v3, v0, v1

    const/16 v1, 0x220

    aput v4, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x224

    aput v4, v0, v1

    const/16 v1, 0x226

    aput v4, v0, v1

    const/16 v1, 0x227

    aput v3, v0, v1

    const/16 v1, 0x22a

    .line 101
    aput v5, v0, v1

    const/16 v1, 0x22b

    aput v5, v0, v1

    const/16 v1, 0x22c

    aput v6, v0, v1

    const/16 v1, 0x22d

    aput v5, v0, v1

    const/16 v1, 0x22e

    aput v5, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x232

    aput v3, v0, v1

    const/16 v1, 0x234

    aput v3, v0, v1

    const/16 v1, 0x235

    aput v3, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v5, v0, v1

    const/16 v1, 0x239

    aput v5, v0, v1

    const/16 v1, 0x23a

    aput v6, v0, v1

    const/16 v1, 0x23b

    aput v5, v0, v1

    const/16 v1, 0x23c

    aput v5, v0, v1

    const/16 v1, 0x23f

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x240

    aput v3, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x243

    aput v3, v0, v1

    const/16 v1, 0x246

    .line 105
    aput v5, v0, v1

    const/16 v1, 0x247

    aput v5, v0, v1

    const/16 v1, 0x248

    aput v6, v0, v1

    const/16 v1, 0x249

    aput v5, v0, v1

    const/16 v1, 0x24a

    aput v5, v0, v1

    const/16 v1, 0x24d

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x24e

    aput v3, v0, v1

    const/16 v1, 0x250

    aput v3, v0, v1

    const/16 v1, 0x251

    aput v3, v0, v1

    const/16 v1, 0x254

    .line 107
    aput v5, v0, v1

    const/16 v1, 0x255

    aput v4, v0, v1

    const/16 v1, 0x256

    aput v6, v0, v1

    const/16 v1, 0x257

    aput v4, v0, v1

    const/16 v1, 0x258

    aput v5, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v5, v0, v1

    const/16 v1, 0x25d

    aput v6, v0, v1

    const/16 v1, 0x25f

    aput v5, v0, v1

    const/16 v1, 0x262

    .line 109
    aput v5, v0, v1

    const/16 v1, 0x264

    aput v6, v0, v1

    const/16 v1, 0x266

    aput v5, v0, v1

    const/16 v1, 0x269

    .line 110
    aput v5, v0, v1

    const/16 v1, 0x26a

    aput v6, v0, v1

    const/16 v1, 0x26b

    aput v6, v0, v1

    const/16 v1, 0x26c

    aput v6, v0, v1

    const/16 v1, 0x26d

    aput v5, v0, v1

    const/16 v1, 0x270

    .line 111
    aput v5, v0, v1

    const/16 v1, 0x272

    aput v6, v0, v1

    const/16 v1, 0x274

    aput v5, v0, v1

    const/16 v1, 0x277

    .line 112
    aput v5, v0, v1

    const/16 v1, 0x279

    aput v6, v0, v1

    const/16 v1, 0x27b

    aput v5, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v5, v0, v1

    const/16 v1, 0x27f

    aput v6, v0, v1

    const/16 v1, 0x280

    aput v6, v0, v1

    const/16 v1, 0x281

    aput v6, v0, v1

    const/16 v1, 0x282

    aput v5, v0, v1

    const/16 v1, 0x285

    .line 114
    aput v5, v0, v1

    const/16 v1, 0x289

    aput v5, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x28d

    aput v4, v0, v1

    const/16 v1, 0x28f

    aput v4, v0, v1

    const/16 v1, 0x290

    aput v3, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v4, v0, v1

    const/16 v1, 0x294

    aput v3, v0, v1

    const/16 v1, 0x296

    aput v3, v0, v1

    const/16 v1, 0x297

    aput v4, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29b

    aput v4, v0, v1

    const/16 v1, 0x29d

    aput v4, v0, v1

    const/16 v1, 0x29e

    aput v3, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v4, v0, v1

    const/16 v1, 0x2a2

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v4, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2a9

    aput v4, v0, v1

    const/16 v1, 0x2ab

    aput v4, v0, v1

    const/16 v1, 0x2ac

    aput v3, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v4, v0, v1

    const/16 v1, 0x2b0

    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v3, v0, v1

    const/16 v1, 0x2b3

    aput v4, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x2b7

    aput v4, v0, v1

    const/16 v1, 0x2b9

    aput v4, v0, v1

    const/16 v1, 0x2ba

    aput v3, v0, v1

    const/16 v1, 0x2be

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x2c0

    aput v3, v0, v1

    const/16 v1, 0x2c5

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x2c7

    aput v4, v0, v1

    const/16 v1, 0x2cc

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2d3

    .line 125
    aput v4, v0, v1

    const/16 v1, 0x2d5

    aput v4, v0, v1

    const/16 v1, 0x2da

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x2db

    aput v4, v0, v1

    const/16 v1, 0x2dc

    aput v3, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x2e2

    aput v4, v0, v1

    const/16 v1, 0x2e3

    aput v4, v0, v1

    const/16 v1, 0x2e8

    .line 128
    aput v4, v0, v1

    const/16 v1, 0x2e9

    aput v4, v0, v1

    const/16 v1, 0x2ea

    aput v4, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x2f0

    aput v4, v0, v1

    const/16 v1, 0x2f1

    aput v4, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v4, v0, v1

    const/16 v1, 0x2f7

    aput v4, v0, v1

    const/16 v1, 0x2f8

    aput v4, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mTiles:[I

    .line 135
    const/16 v0, 0x36

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x10010305

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x40010218

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x30010418

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x10010323

    aput v2, v0, v1

    .line 141
    const v1, 0x3001022f

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 142
    const v2, 0x2001042f

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x30010549

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x10010149

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x10010359

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 146
    const v2, 0x2001035a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 149
    const v2, 0x1010201

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 150
    const v2, 0x1010401

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 151
    const v2, 0x1010203

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 152
    const v2, 0x1010403

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 153
    const v2, 0x101010b

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x101050b

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x101010d

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x101050d

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x101010f

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x101050f

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x1010312

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x1010315

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x101031a

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x101031c

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x101031e

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x1010120

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x1010520

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x1010223

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x1010423

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x1010127

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x1010527

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x101012c

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x101052c

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x1010231

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x1010431

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 174
    const v2, 0x101023d

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 175
    const v2, 0x101043d

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 176
    const v2, 0x101033e

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 177
    const v2, 0x1010140

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 178
    const v2, 0x1010540

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 179
    const v2, 0x1010141

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 180
    const v2, 0x1010541

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 181
    const v2, 0x1010147

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const v2, 0x1010547

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 183
    const v2, 0x101034e

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 184
    const v2, 0x1010251

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 185
    const v2, 0x1010451

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 186
    const v2, 0x1010258

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 187
    const v2, 0x1010458

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 188
    const v2, 0x101015a

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 189
    const v2, 0x101055a

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 190
    const v2, 0x101035f

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 191
    const v2, 0x63010365

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_05;->mObjects:[I

    .line 194
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
