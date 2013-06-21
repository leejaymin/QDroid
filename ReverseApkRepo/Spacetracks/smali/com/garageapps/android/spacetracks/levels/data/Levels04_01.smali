.class public Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels04_01.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xb000800

    const v6, 0xd000800

    const v5, 0xc000800

    const v4, 0x1000e00

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mRenderMode:I

    .line 17
    const/16 v0, 0x320

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mMaxTime:I

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

    const/16 v1, 0x57

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x5e

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x65

    aput v3, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x6c

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x72

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x7a

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x8e

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x90

    aput v4, v0, v1

    const/16 v1, 0x96

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x9c

    .line 44
    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0xa4

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v4, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v4, v0, v1

    const/16 v1, 0xb2

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v4, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v6, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v5, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc6

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xc8

    aput v7, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xd0

    aput v4, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd4

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xd6

    aput v7, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xe2

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xe4

    aput v7, v0, v1

    const/16 v1, 0xe5

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xec

    aput v4, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf0

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v7, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v7, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x108

    aput v4, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v7, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x116

    aput v4, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x11c

    aput v7, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v4, v0, v1

    const/16 v1, 0x124

    aput v4, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x128

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x12a

    aput v7, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x12e

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x132

    aput v4, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x136

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x138

    aput v7, v0, v1

    const/16 v1, 0x139

    aput v3, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v4, v0, v1

    const/16 v1, 0x140

    aput v4, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x144

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x146

    aput v7, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

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
    aput v7, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v5, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x161

    aput v7, v0, v1

    const/16 v1, 0x162

    aput v4, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v6, v0, v1

    const/16 v1, 0x167

    aput v3, v0, v1

    const/16 v1, 0x168

    aput v3, v0, v1

    const/16 v1, 0x169

    aput v3, v0, v1

    const/16 v1, 0x16a

    aput v5, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16f

    aput v5, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x176

    aput v7, v0, v1

    const/16 v1, 0x177

    aput v4, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v6, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x17f

    aput v5, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x184

    aput v5, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x18b

    aput v7, v0, v1

    const/16 v1, 0x18c

    aput v4, v0, v1

    const/16 v1, 0x190

    .line 79
    aput v6, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x194

    aput v5, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x199

    aput v5, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19f

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x1a0

    aput v7, v0, v1

    const/16 v1, 0x1a1

    aput v4, v0, v1

    const/16 v1, 0x1a5

    .line 82
    aput v6, v0, v1

    const/16 v1, 0x1a6

    aput v3, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1a9

    aput v5, v0, v1

    const/16 v1, 0x1ad

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1ae

    aput v5, v0, v1

    const/16 v1, 0x1af

    aput v3, v0, v1

    const/16 v1, 0x1b4

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v7, v0, v1

    const/16 v1, 0x1b6

    aput v4, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v6, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v3, v0, v1

    const/16 v1, 0x1be

    aput v5, v0, v1

    const/16 v1, 0x1c2

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x1c3

    aput v5, v0, v1

    const/16 v1, 0x1c4

    aput v3, v0, v1

    const/16 v1, 0x1c9

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x1ca

    aput v7, v0, v1

    const/16 v1, 0x1cb

    aput v4, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v6, v0, v1

    const/16 v1, 0x1d0

    aput v3, v0, v1

    const/16 v1, 0x1d1

    aput v3, v0, v1

    const/16 v1, 0x1d2

    aput v3, v0, v1

    const/16 v1, 0x1d3

    aput v5, v0, v1

    const/16 v1, 0x1d7

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1d8

    aput v5, v0, v1

    const/16 v1, 0x1d9

    aput v3, v0, v1

    const/16 v1, 0x1de

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x1df

    aput v7, v0, v1

    const/16 v1, 0x1e0

    aput v4, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v6, v0, v1

    const/16 v1, 0x1e5

    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v3, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1e8

    aput v5, v0, v1

    const/16 v1, 0x1ec

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v5, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x1f4

    aput v7, v0, v1

    const/16 v1, 0x1f5

    aput v4, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v6, v0, v1

    const/16 v1, 0x1fa

    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x1fd

    aput v5, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x202

    aput v5, v0, v1

    const/16 v1, 0x203

    aput v3, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x209

    aput v7, v0, v1

    const/16 v1, 0x20a

    aput v4, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v6, v0, v1

    const/16 v1, 0x20f

    aput v3, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x212

    aput v5, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x217

    aput v5, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x21d

    .line 99
    aput v4, v0, v1

    const/16 v1, 0x21e

    aput v7, v0, v1

    const/16 v1, 0x21f

    aput v4, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v6, v0, v1

    const/16 v1, 0x224

    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x227

    aput v5, v0, v1

    const/16 v1, 0x22c

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x233

    .line 102
    aput v4, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v6, v0, v1

    const/16 v1, 0x23a

    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v5, v0, v1

    const/16 v1, 0x241

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x248

    .line 105
    aput v4, v0, v1

    const/16 v1, 0x24e

    .line 106
    aput v6, v0, v1

    const/16 v1, 0x24f

    aput v3, v0, v1

    const/16 v1, 0x250

    aput v5, v0, v1

    const/16 v1, 0x256

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x25d

    .line 108
    aput v4, v0, v1

    const/16 v1, 0x263

    .line 109
    aput v6, v0, v1

    const/16 v1, 0x264

    aput v3, v0, v1

    const/16 v1, 0x265

    aput v5, v0, v1

    const/16 v1, 0x26b

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x272

    .line 111
    aput v4, v0, v1

    const/16 v1, 0x278

    .line 112
    aput v6, v0, v1

    const/16 v1, 0x279

    aput v3, v0, v1

    const/16 v1, 0x27a

    aput v5, v0, v1

    const/16 v1, 0x280

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x287

    .line 114
    aput v4, v0, v1

    const/16 v1, 0x28d

    .line 115
    aput v6, v0, v1

    const/16 v1, 0x28e

    aput v3, v0, v1

    const/16 v1, 0x28f

    aput v5, v0, v1

    const/16 v1, 0x295

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x29c

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x2a2

    .line 118
    aput v6, v0, v1

    const/16 v1, 0x2a3

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v5, v0, v1

    const/16 v1, 0x2aa

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2b1

    .line 120
    aput v4, v0, v1

    const/16 v1, 0x2b7

    .line 121
    aput v6, v0, v1

    const/16 v1, 0x2b8

    aput v3, v0, v1

    const/16 v1, 0x2b9

    aput v5, v0, v1

    const/16 v1, 0x2bf

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x2c6

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x2cc

    .line 124
    aput v6, v0, v1

    const/16 v1, 0x2cd

    aput v3, v0, v1

    const/16 v1, 0x2ce

    aput v5, v0, v1

    const/16 v1, 0x2d4

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x2db

    .line 126
    aput v4, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v6, v0, v1

    const/16 v1, 0x2e2

    aput v3, v0, v1

    const/16 v1, 0x2e3

    aput v5, v0, v1

    const/16 v1, 0x2e9

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x2f0

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v6, v0, v1

    const/16 v1, 0x2f7

    aput v3, v0, v1

    const/16 v1, 0x2f8

    aput v5, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mTiles:[I

    .line 135
    const/16 v0, 0x4a

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x13010312

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x3301021f

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x1301041f

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x1301022d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 141
    const v2, 0x1341042d

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const v2, 0x33010145

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x13010545

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x33010147

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x13010547

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 146
    const v2, 0x33010149

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 147
    const v2, 0x13010549

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 148
    const v2, 0x40010354

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 151
    const v2, 0x4010201

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 152
    const v2, 0x4010404

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 153
    const v2, 0x4010207

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x401040a

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x401020d

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x4010410

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x4010213

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x4010416

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x4010219

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x401041c

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x401011f

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x401051f

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x4010122

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x4010522

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x4010125

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x4010525

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x4010128

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x4010528

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x401012b

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x401052b

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x401012e

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x401052e

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x4010131

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 174
    const v2, 0x4010531

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 175
    const v2, 0x4010134

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 176
    const v2, 0x4010534

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 177
    const v2, 0x4010137

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 178
    const v2, 0x4010537

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 179
    const v2, 0x401013a

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 180
    const v2, 0x401053a

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 181
    const v2, 0x401023f

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const v2, 0x401043f

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 183
    const v2, 0x4010241

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 184
    const v2, 0x4010441

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 185
    const v2, 0x4010243

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 186
    const v2, 0x4010443

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 187
    const v2, 0x4010245

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 188
    const v2, 0x4010445

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 189
    const v2, 0x4010247

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 190
    const v2, 0x4010447

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 191
    const v2, 0x4010249

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 192
    const v2, 0x4010449

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 193
    const v2, 0x401024b

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 194
    const v2, 0x401044b

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 195
    const v2, 0x401024d

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 196
    const v2, 0x401044d

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 197
    const v2, 0x401024f

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 198
    const v2, 0x401044f

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 199
    const v2, 0x4010251

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 200
    const v2, 0x4010451

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 201
    const v2, 0x4010257

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 202
    const v2, 0x4010457

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 203
    const v2, 0x4010259

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 204
    const v2, 0x4010459

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 205
    const v2, 0x401025b

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 206
    const v2, 0x401045b

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 207
    const v2, 0x401025d

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 208
    const v2, 0x401045d

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 209
    const v2, 0x401025f

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 210
    const v2, 0x401045f

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 211
    const v2, 0x63010365

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_01;->mObjects:[I

    .line 214
    return-void

    .line 14
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
