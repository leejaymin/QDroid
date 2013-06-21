.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_02.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xa000800

    const v6, 0x1000200

    const v5, 0x10a0200

    const v4, 0x1000800

    const v3, 0x1000600

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mMaxTime:I

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
    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x6b

    .line 37
    aput v6, v0, v1

    const/16 v1, 0x6c

    aput v6, v0, v1

    const/16 v1, 0x6d

    aput v6, v0, v1

    const/16 v1, 0x72

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v6, v0, v1

    const/16 v1, 0x88

    aput v6, v0, v1

    const/16 v1, 0x89

    aput v6, v0, v1

    const/16 v1, 0x8e

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x90

    aput v3, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v5, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    aput v5, v0, v1

    const/16 v1, 0x9c

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xa4

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0xa5

    aput v4, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v5, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v5, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbf

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc0

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0xc1

    aput v4, v0, v1

    const/16 v1, 0xc6

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc8

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v5, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v5, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xdb

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdc

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0xdd

    aput v4, v0, v1

    const/16 v1, 0xe2

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v5, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v5, v0, v1

    const/16 v1, 0xf0

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf7

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xf8

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0xf9

    aput v4, v0, v1

    const/16 v1, 0xfe

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v5, v0, v1

    const/16 v1, 0x105

    aput v3, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x108

    aput v5, v0, v1

    const/16 v1, 0x10c

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10d

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x113

    aput v4, v0, v1

    const/16 v1, 0x114

    aput v4, v0, v1

    const/16 v1, 0x115

    aput v4, v0, v1

    const/16 v1, 0x116

    aput v4, v0, v1

    const/16 v1, 0x119

    .line 62
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v7, v0, v1

    const/16 v1, 0x121

    .line 63
    aput v4, v0, v1

    const/16 v1, 0x122

    aput v4, v0, v1

    const/16 v1, 0x123

    aput v4, v0, v1

    const/16 v1, 0x128

    .line 64
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x129

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v7, v0, v1

    const/16 v1, 0x130

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x137

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x13d

    .line 67
    aput v5, v0, v1

    const/16 v1, 0x13e

    aput v6, v0, v1

    const/16 v1, 0x13f

    aput v5, v0, v1

    const/16 v1, 0x145

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x14c

    aput v3, v0, v1

    const/16 v1, 0x14e

    aput v4, v0, v1

    const/16 v1, 0x153

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x159

    .line 71
    aput v5, v0, v1

    const/16 v1, 0x15a

    aput v6, v0, v1

    const/16 v1, 0x15b

    aput v5, v0, v1

    const/16 v1, 0x161

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x168

    aput v3, v0, v1

    const/16 v1, 0x16a

    aput v4, v0, v1

    const/16 v1, 0x16f

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v5, v0, v1

    const/16 v1, 0x176

    aput v6, v0, v1

    const/16 v1, 0x177

    aput v5, v0, v1

    const/16 v1, 0x17d

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x182

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v4, v0, v1

    const/16 v1, 0x18b

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v5, v0, v1

    const/16 v1, 0x192

    aput v6, v0, v1

    const/16 v1, 0x193

    aput v5, v0, v1

    const/16 v1, 0x199

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v5, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1a8

    aput v5, v0, v1

    const/16 v1, 0x1ad

    .line 83
    aput v4, v0, v1

    const/16 v1, 0x1ae

    aput v4, v0, v1

    const/16 v1, 0x1af

    aput v4, v0, v1

    const/16 v1, 0x1b4

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x1b6

    aput v3, v0, v1

    const/16 v1, 0x1bb

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v3, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v5, v0, v1

    const/16 v1, 0x1c2

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v3, v0, v1

    const/16 v1, 0x1c5

    aput v5, v0, v1

    const/16 v1, 0x1c8

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x1c9

    aput v4, v0, v1

    const/16 v1, 0x1cb

    aput v4, v0, v1

    const/16 v1, 0x1cc

    aput v4, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d0

    aput v7, v0, v1

    const/16 v1, 0x1d2

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1da

    aput v3, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1e1

    aput v3, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v4, v0, v1

    const/16 v1, 0x1e5

    aput v5, v0, v1

    const/16 v1, 0x1e7

    aput v5, v0, v1

    const/16 v1, 0x1e8

    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ec

    aput v4, v0, v1

    const/16 v1, 0x1ee

    aput v4, v0, v1

    const/16 v1, 0x1ef

    aput v3, v0, v1

    const/16 v1, 0x1f2

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x1f3

    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1f6

    aput v4, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fa

    aput v4, v0, v1

    const/16 v1, 0x1fc

    aput v4, v0, v1

    const/16 v1, 0x1fd

    aput v3, v0, v1

    const/16 v1, 0x200

    .line 95
    aput v6, v0, v1

    const/16 v1, 0x201

    aput v6, v0, v1

    const/16 v1, 0x203

    aput v6, v0, v1

    const/16 v1, 0x204

    aput v6, v0, v1

    const/16 v1, 0x207

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x208

    aput v4, v0, v1

    const/16 v1, 0x20a

    aput v4, v0, v1

    const/16 v1, 0x20b

    aput v3, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x20f

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x212

    aput v4, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x216

    aput v4, v0, v1

    const/16 v1, 0x218

    aput v4, v0, v1

    const/16 v1, 0x219

    aput v3, v0, v1

    const/16 v1, 0x21c

    .line 99
    aput v6, v0, v1

    const/16 v1, 0x21d

    aput v6, v0, v1

    const/16 v1, 0x21f

    aput v6, v0, v1

    const/16 v1, 0x220

    aput v6, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x22b

    aput v3, v0, v1

    const/16 v1, 0x22d

    aput v3, v0, v1

    const/16 v1, 0x22e

    aput v4, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x232

    aput v4, v0, v1

    const/16 v1, 0x234

    aput v4, v0, v1

    const/16 v1, 0x235

    aput v3, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v6, v0, v1

    const/16 v1, 0x239

    aput v6, v0, v1

    const/16 v1, 0x23b

    aput v6, v0, v1

    const/16 v1, 0x23c

    aput v6, v0, v1

    const/16 v1, 0x23f

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x240

    aput v4, v0, v1

    const/16 v1, 0x242

    aput v4, v0, v1

    const/16 v1, 0x243

    aput v3, v0, v1

    const/16 v1, 0x246

    .line 105
    aput v4, v0, v1

    const/16 v1, 0x247

    aput v3, v0, v1

    const/16 v1, 0x249

    aput v3, v0, v1

    const/16 v1, 0x24a

    aput v4, v0, v1

    const/16 v1, 0x24d

    .line 106
    aput v4, v0, v1

    const/16 v1, 0x24e

    aput v4, v0, v1

    const/16 v1, 0x250

    aput v4, v0, v1

    const/16 v1, 0x251

    aput v4, v0, v1

    const/16 v1, 0x254

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x258

    aput v3, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x25d

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x25f

    aput v3, v0, v1

    const/16 v1, 0x262

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x264

    aput v4, v0, v1

    const/16 v1, 0x266

    aput v3, v0, v1

    const/16 v1, 0x269

    .line 110
    aput v4, v0, v1

    const/16 v1, 0x26b

    aput v4, v0, v1

    const/16 v1, 0x26d

    aput v4, v0, v1

    const/16 v1, 0x270

    .line 111
    aput v4, v0, v1

    const/16 v1, 0x272

    aput v4, v0, v1

    const/16 v1, 0x274

    aput v4, v0, v1

    const/16 v1, 0x277

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x279

    aput v7, v0, v1

    const/16 v1, 0x27b

    aput v3, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x282

    aput v3, v0, v1

    const/16 v1, 0x285

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x289

    aput v3, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v4, v0, v1

    const/16 v1, 0x28d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x28f

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x290

    aput v4, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v5, v0, v1

    const/16 v1, 0x294

    aput v3, v0, v1

    const/16 v1, 0x296

    aput v3, v0, v1

    const/16 v1, 0x297

    aput v5, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x29b

    aput v7, v0, v1

    const/16 v1, 0x29d

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x29e

    aput v4, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2aa

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2ac

    aput v3, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v4, v0, v1

    const/16 v1, 0x2b3

    aput v3, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v4, v0, v1

    const/16 v1, 0x2b8

    aput v4, v0, v1

    const/16 v1, 0x2ba

    aput v4, v0, v1

    const/16 v1, 0x2bd

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x2bf

    aput v4, v0, v1

    const/16 v1, 0x2c1

    aput v4, v0, v1

    const/16 v1, 0x2c4

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x2c6

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x2c8

    aput v3, v0, v1

    const/16 v1, 0x2cb

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x2cf

    aput v3, v0, v1

    const/16 v1, 0x2d2

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x2d3

    aput v5, v0, v1

    const/16 v1, 0x2d4

    aput v5, v0, v1

    const/16 v1, 0x2d5

    aput v5, v0, v1

    const/16 v1, 0x2d6

    aput v3, v0, v1

    const/16 v1, 0x2d9

    .line 126
    aput v4, v0, v1

    const/16 v1, 0x2da

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2db

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x2dc

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2dd

    aput v4, v0, v1

    const/16 v1, 0x2e2

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x2e9

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x2f0

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x2f7

    .line 130
    aput v4, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mTiles:[I

    .line 135
    const/16 v0, 0x30

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x1201010a

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x1201050a

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x3201011a

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x3201051a

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 141
    const v2, 0x12010121

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const v2, 0x12010521

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x3201012c

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x3201052c

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x22010346

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 146
    const v2, 0x3201024a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 147
    const v2, 0x4001044a

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 150
    const v2, 0x3020206

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 151
    const v2, 0x3020306

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 152
    const v2, 0x3020406

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 153
    const v2, 0x301030a

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x302010f

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x302050f

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x3010315

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x3010219

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x3010419

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x301021d

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x301041d

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x3010221

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x3010421

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x3010225

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x3010425

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x302012d

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x302052d

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x3010330

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x3010136

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x3010536

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x301013a

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x301053a

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x301013e

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x301053e

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 174
    const v2, 0x3010244

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 175
    const v2, 0x3010444

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 176
    const v2, 0x3010146

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 177
    const v2, 0x3010546

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 178
    const v2, 0x302034a

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 179
    const v2, 0x302034e

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 180
    const v2, 0x3020352

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 181
    const v2, 0x3020356

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const v2, 0x301035a

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 183
    const v2, 0x301025e

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 184
    const v2, 0x301045e

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 185
    const v2, 0x63010365

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_02;->mObjects:[I

    .line 188
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
