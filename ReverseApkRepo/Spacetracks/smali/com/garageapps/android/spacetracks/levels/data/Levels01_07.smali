.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_07.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x63000f00

    const v6, 0x1000b00

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mMaxTime:I

    .line 21
    const/16 v0, 0x460

    new-array v0, v0, [I

    const/16 v1, 0x47

    .line 32
    aput v7, v0, v1

    const/16 v1, 0x48

    aput v7, v0, v1

    const/16 v1, 0x49

    aput v7, v0, v1

    const/16 v1, 0x4a

    aput v7, v0, v1

    const/16 v1, 0x4b

    aput v7, v0, v1

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
    aput v5, v0, v1

    const/16 v1, 0x57

    aput v5, v0, v1

    const/16 v1, 0x58

    aput v5, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x73

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x81

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x8f

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x95

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x9c

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v4, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xab

    .line 46
    aput v4, v0, v1

    const/16 v1, 0xb2

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v4, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v5, v0, v1

    const/16 v1, 0xc6

    aput v5, v0, v1

    const/16 v1, 0xc7

    aput v5, v0, v1

    const/16 v1, 0xc8

    aput v5, v0, v1

    const/16 v1, 0xc9

    aput v5, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v3, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v4, v0, v1

    const/16 v1, 0xd7

    aput v4, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe3

    aput v4, v0, v1

    const/16 v1, 0xe5

    aput v4, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v3, v0, v1

    const/16 v1, 0xea

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v3, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v5, v0, v1

    const/16 v1, 0xf0

    aput v5, v0, v1

    const/16 v1, 0xf1

    aput v5, v0, v1

    const/16 v1, 0xf2

    aput v5, v0, v1

    const/16 v1, 0xf3

    aput v5, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v4, v0, v1

    const/16 v1, 0xff

    aput v4, v0, v1

    const/16 v1, 0x101

    aput v4, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x108

    aput v4, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x10d

    aput v4, v0, v1

    const/16 v1, 0x10f

    aput v4, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v5, v0, v1

    const/16 v1, 0x11a

    aput v5, v0, v1

    const/16 v1, 0x11b

    aput v5, v0, v1

    const/16 v1, 0x11c

    aput v5, v0, v1

    const/16 v1, 0x11d

    aput v5, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x129

    aput v4, v0, v1

    const/16 v1, 0x12b

    aput v4, v0, v1

    const/16 v1, 0x12e

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x130

    aput v4, v0, v1

    const/16 v1, 0x132

    aput v4, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x137

    aput v4, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v5, v0, v1

    const/16 v1, 0x144

    aput v5, v0, v1

    const/16 v1, 0x145

    aput v5, v0, v1

    const/16 v1, 0x146

    aput v5, v0, v1

    const/16 v1, 0x147

    aput v5, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x14c

    aput v3, v0, v1

    const/16 v1, 0x14e

    aput v3, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x153

    aput v4, v0, v1

    const/16 v1, 0x155

    aput v4, v0, v1

    const/16 v1, 0x158

    .line 71
    aput v4, v0, v1

    const/16 v1, 0x15a

    aput v4, v0, v1

    const/16 v1, 0x15c

    aput v4, v0, v1

    const/16 v1, 0x15f

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x160

    aput v3, v0, v1

    const/16 v1, 0x161

    aput v4, v0, v1

    const/16 v1, 0x162

    aput v3, v0, v1

    const/16 v1, 0x163

    aput v4, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x167

    aput v4, v0, v1

    const/16 v1, 0x168

    aput v3, v0, v1

    const/16 v1, 0x169

    aput v4, v0, v1

    const/16 v1, 0x16a

    aput v3, v0, v1

    const/16 v1, 0x16d

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v4, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    aput v4, v0, v1

    const/16 v1, 0x171

    aput v3, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x175

    aput v4, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v4, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v4, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x184

    aput v4, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x18b

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x19f

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x1a8

    aput v7, v0, v1

    const/16 v1, 0x1a9

    aput v7, v0, v1

    const/16 v1, 0x1ac

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1ad

    aput v3, v0, v1

    const/16 v1, 0x1af

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x1b0

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x1b3

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x1b4

    aput v4, v0, v1

    const/16 v1, 0x1b6

    aput v5, v0, v1

    const/16 v1, 0x1b7

    aput v5, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v5, v0, v1

    const/16 v1, 0x1be

    aput v5, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c5

    aput v5, v0, v1

    const/16 v1, 0x1c8

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x1cc

    aput v5, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v4, v0, v1

    const/16 v1, 0x1d2

    aput v5, v0, v1

    const/16 v1, 0x1d3

    aput v5, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1d7

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v5, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x1de

    aput v3, v0, v1

    const/16 v1, 0x1e0

    aput v5, v0, v1

    const/16 v1, 0x1e1

    aput v5, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e5

    aput v3, v0, v1

    const/16 v1, 0x1e8

    aput v5, v0, v1

    const/16 v1, 0x1ec

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x1ee

    aput v5, v0, v1

    const/16 v1, 0x1ef

    aput v5, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v5, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x1fc

    aput v5, v0, v1

    const/16 v1, 0x1fd

    aput v5, v0, v1

    const/16 v1, 0x200

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x201

    aput v3, v0, v1

    const/16 v1, 0x204

    aput v5, v0, v1

    const/16 v1, 0x207

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x208

    aput v4, v0, v1

    const/16 v1, 0x20a

    aput v5, v0, v1

    const/16 v1, 0x20b

    aput v5, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v5, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v4, v0, v1

    const/16 v1, 0x218

    aput v5, v0, v1

    const/16 v1, 0x219

    aput v5, v0, v1

    const/16 v1, 0x21c

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x220

    aput v5, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v4, v0, v1

    const/16 v1, 0x226

    aput v5, v0, v1

    const/16 v1, 0x227

    aput v5, v0, v1

    const/16 v1, 0x22a

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x22b

    aput v3, v0, v1

    const/16 v1, 0x22d

    aput v5, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v4, v0, v1

    const/16 v1, 0x232

    aput v3, v0, v1

    const/16 v1, 0x234

    aput v5, v0, v1

    const/16 v1, 0x235

    aput v5, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x239

    aput v3, v0, v1

    const/16 v1, 0x23c

    aput v5, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v4, v0, v1

    const/16 v1, 0x242

    aput v5, v0, v1

    const/16 v1, 0x243

    aput v5, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x249

    aput v5, v0, v1

    const/16 v1, 0x24e

    .line 106
    aput v4, v0, v1

    const/16 v1, 0x250

    aput v5, v0, v1

    const/16 v1, 0x251

    aput v5, v0, v1

    const/16 v1, 0x255

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x258

    aput v5, v0, v1

    const/16 v1, 0x25c

    .line 108
    aput v4, v0, v1

    const/16 v1, 0x25e

    aput v5, v0, v1

    const/16 v1, 0x25f

    aput v5, v0, v1

    const/16 v1, 0x263

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x265

    aput v5, v0, v1

    const/16 v1, 0x26a

    .line 110
    aput v4, v0, v1

    const/16 v1, 0x26c

    aput v5, v0, v1

    const/16 v1, 0x26d

    aput v5, v0, v1

    const/16 v1, 0x271

    .line 111
    aput v3, v0, v1

    const/16 v1, 0x274

    aput v5, v0, v1

    const/16 v1, 0x278

    .line 112
    aput v4, v0, v1

    const/16 v1, 0x27a

    aput v5, v0, v1

    const/16 v1, 0x27b

    aput v5, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x27f

    aput v3, v0, v1

    const/16 v1, 0x281

    aput v5, v0, v1

    const/16 v1, 0x285

    .line 114
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x288

    aput v5, v0, v1

    const/16 v1, 0x289

    aput v5, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x290

    aput v5, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v4, v0, v1

    const/16 v1, 0x296

    aput v5, v0, v1

    const/16 v1, 0x297

    aput v5, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29d

    aput v5, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v4, v0, v1

    const/16 v1, 0x2a4

    aput v5, v0, v1

    const/16 v1, 0x2a5

    aput v5, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2ac

    aput v5, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v4, v0, v1

    const/16 v1, 0x2b2

    aput v5, v0, v1

    const/16 v1, 0x2b3

    aput v5, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x2b9

    aput v5, v0, v1

    const/16 v1, 0x2bd

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x2c0

    aput v5, v0, v1

    const/16 v1, 0x2c1

    aput v5, v0, v1

    const/16 v1, 0x2c4

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x2c5

    aput v3, v0, v1

    const/16 v1, 0x2c8

    aput v5, v0, v1

    const/16 v1, 0x2cc

    .line 124
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2ce

    aput v5, v0, v1

    const/16 v1, 0x2cf

    aput v5, v0, v1

    const/16 v1, 0x2d3

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x2d5

    aput v5, v0, v1

    const/16 v1, 0x2da

    .line 126
    aput v4, v0, v1

    const/16 v1, 0x2dc

    aput v5, v0, v1

    const/16 v1, 0x2dd

    aput v5, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v3, v0, v1

    const/16 v1, 0x2e4

    aput v5, v0, v1

    const/16 v1, 0x2e8

    .line 128
    aput v4, v0, v1

    const/16 v1, 0x2ea

    aput v5, v0, v1

    const/16 v1, 0x2eb

    aput v5, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x2f1

    aput v5, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v4, v0, v1

    const/16 v1, 0x2f8

    aput v5, v0, v1

    const/16 v1, 0x2f9

    aput v5, v0, v1

    const/16 v1, 0x2fd

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x300

    aput v5, v0, v1

    const/16 v1, 0x304

    .line 132
    aput v4, v0, v1

    const/16 v1, 0x306

    aput v5, v0, v1

    const/16 v1, 0x307

    aput v5, v0, v1

    const/16 v1, 0x30a

    .line 133
    aput v3, v0, v1

    const/16 v1, 0x30b

    aput v3, v0, v1

    const/16 v1, 0x30d

    aput v5, v0, v1

    const/16 v1, 0x311

    .line 134
    aput v4, v0, v1

    const/16 v1, 0x312

    aput v4, v0, v1

    const/16 v1, 0x314

    aput v5, v0, v1

    const/16 v1, 0x315

    aput v5, v0, v1

    const/16 v1, 0x318

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x319

    aput v3, v0, v1

    const/16 v1, 0x31b

    aput v5, v0, v1

    const/16 v1, 0x31c

    aput v5, v0, v1

    const/16 v1, 0x31f

    .line 136
    aput v4, v0, v1

    const/16 v1, 0x320

    aput v4, v0, v1

    const/16 v1, 0x322

    aput v5, v0, v1

    const/16 v1, 0x323

    aput v5, v0, v1

    const/16 v1, 0x326

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x327

    aput v3, v0, v1

    const/16 v1, 0x329

    aput v5, v0, v1

    const/16 v1, 0x32a

    aput v5, v0, v1

    const/16 v1, 0x32d

    .line 138
    aput v4, v0, v1

    const/16 v1, 0x32e

    aput v4, v0, v1

    const/16 v1, 0x330

    aput v5, v0, v1

    const/16 v1, 0x331

    aput v5, v0, v1

    const/16 v1, 0x334

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x337

    aput v5, v0, v1

    const/16 v1, 0x338

    aput v5, v0, v1

    const/16 v1, 0x33b

    .line 140
    aput v4, v0, v1

    const/16 v1, 0x33c

    aput v4, v0, v1

    const/16 v1, 0x33e

    aput v5, v0, v1

    const/16 v1, 0x33f

    aput v5, v0, v1

    const/16 v1, 0x342

    .line 141
    aput v3, v0, v1

    const/16 v1, 0x343

    aput v3, v0, v1

    const/16 v1, 0x345

    aput v5, v0, v1

    const/16 v1, 0x346

    aput v5, v0, v1

    const/16 v1, 0x349

    .line 142
    aput v4, v0, v1

    const/16 v1, 0x34a

    aput v4, v0, v1

    const/16 v1, 0x34c

    aput v5, v0, v1

    const/16 v1, 0x34d

    aput v5, v0, v1

    const/16 v1, 0x350

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x351

    aput v3, v0, v1

    const/16 v1, 0x353

    aput v5, v0, v1

    const/16 v1, 0x354

    aput v5, v0, v1

    const/16 v1, 0x357

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x35b

    aput v5, v0, v1

    const/16 v1, 0x35e

    .line 145
    aput v6, v0, v1

    const/16 v1, 0x362

    aput v5, v0, v1

    const/16 v1, 0x365

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x369

    aput v5, v0, v1

    const/16 v1, 0x36c

    .line 147
    aput v6, v0, v1

    const/16 v1, 0x36e

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x370

    aput v5, v0, v1

    const/16 v1, 0x373

    .line 148
    aput v4, v0, v1

    const/16 v1, 0x375

    aput v3, v0, v1

    const/16 v1, 0x377

    aput v5, v0, v1

    const/16 v1, 0x37a

    .line 149
    aput v6, v0, v1

    const/16 v1, 0x37c

    aput v3, v0, v1

    const/16 v1, 0x37e

    aput v5, v0, v1

    const/16 v1, 0x381

    .line 150
    aput v4, v0, v1

    const/16 v1, 0x383

    aput v4, v0, v1

    const/16 v1, 0x385

    aput v5, v0, v1

    const/16 v1, 0x388

    .line 151
    aput v6, v0, v1

    const/16 v1, 0x38a

    aput v4, v0, v1

    const/16 v1, 0x38f

    .line 152
    aput v4, v0, v1

    const/16 v1, 0x391

    aput v3, v0, v1

    const/16 v1, 0x396

    .line 153
    aput v6, v0, v1

    const/16 v1, 0x398

    aput v3, v0, v1

    const/16 v1, 0x39d

    .line 154
    aput v4, v0, v1

    const/16 v1, 0x39f

    aput v4, v0, v1

    const/16 v1, 0x3a0

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3a4

    .line 155
    aput v6, v0, v1

    const/16 v1, 0x3a7

    aput v3, v0, v1

    const/16 v1, 0x3ab

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x3ac

    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3b3

    .line 157
    aput v6, v0, v1

    const/16 v1, 0x3b5

    aput v4, v0, v1

    const/16 v1, 0x3ba

    .line 158
    aput v4, v0, v1

    const/16 v1, 0x3bc

    aput v3, v0, v1

    const/16 v1, 0x3c1

    .line 159
    aput v6, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c8

    .line 160
    aput v4, v0, v1

    const/16 v1, 0x3ca

    aput v4, v0, v1

    const/16 v1, 0x3cb

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3cf

    .line 161
    aput v6, v0, v1

    const/16 v1, 0x3d2

    aput v3, v0, v1

    const/16 v1, 0x3d6

    .line 162
    aput v4, v0, v1

    const/16 v1, 0x3d9

    aput v3, v0, v1

    const/16 v1, 0x3dd

    .line 163
    aput v6, v0, v1

    const/16 v1, 0x3e0

    aput v4, v0, v1

    const/16 v1, 0x3e4

    .line 164
    aput v4, v0, v1

    const/16 v1, 0x3e7

    aput v3, v0, v1

    const/16 v1, 0x3eb

    .line 165
    aput v6, v0, v1

    const/16 v1, 0x3ee

    aput v3, v0, v1

    const/16 v1, 0x3f1

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x3f2

    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v4, v0, v1

    const/16 v1, 0x3f8

    .line 167
    aput v6, v0, v1

    const/16 v1, 0x3fc

    aput v3, v0, v1

    const/16 v1, 0x3ff

    .line 168
    aput v4, v0, v1

    const/16 v1, 0x403

    aput v3, v0, v1

    const/16 v1, 0x406

    .line 169
    aput v6, v0, v1

    const/16 v1, 0x40a

    aput v6, v0, v1

    const/16 v1, 0x40d

    .line 170
    aput v4, v0, v1

    const/16 v1, 0x40e

    aput v3, v0, v1

    const/16 v1, 0x410

    aput v3, v0, v1

    const/16 v1, 0x411

    aput v4, v0, v1

    const/16 v1, 0x414

    .line 171
    aput v6, v0, v1

    const/16 v1, 0x415

    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x417

    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x418

    aput v6, v0, v1

    const/16 v1, 0x41b

    .line 172
    aput v4, v0, v1

    const/16 v1, 0x41c

    aput v3, v0, v1

    const/16 v1, 0x41e

    aput v3, v0, v1

    const/16 v1, 0x41f

    aput v4, v0, v1

    const/16 v1, 0x422

    .line 173
    aput v6, v0, v1

    const/16 v1, 0x423

    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x425

    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x426

    aput v6, v0, v1

    const/16 v1, 0x429

    .line 174
    aput v4, v0, v1

    const/16 v1, 0x42a

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v4, v0, v1

    const/16 v1, 0x430

    .line 175
    aput v3, v0, v1

    const/16 v1, 0x431

    aput v4, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v4, v0, v1

    const/16 v1, 0x434

    aput v3, v0, v1

    const/16 v1, 0x437

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x438

    aput v4, v0, v1

    const/16 v1, 0x439

    aput v3, v0, v1

    const/16 v1, 0x43a

    aput v4, v0, v1

    const/16 v1, 0x43b

    aput v3, v0, v1

    const/16 v1, 0x43e

    .line 177
    aput v3, v0, v1

    const/16 v1, 0x43f

    aput v4, v0, v1

    const/16 v1, 0x440

    aput v3, v0, v1

    const/16 v1, 0x441

    aput v4, v0, v1

    const/16 v1, 0x442

    aput v3, v0, v1

    const/16 v1, 0x445

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x446

    aput v3, v0, v1

    const/16 v1, 0x447

    aput v4, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x449

    aput v3, v0, v1

    const/16 v1, 0x44d

    .line 179
    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v4, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x455

    .line 180
    aput v4, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mTiles:[I

    .line 185
    const/16 v0, 0x3a

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x10010305

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x30010514

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x40010119

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x1001012c

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x1001022c

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x1001042c

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x1001052c

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x3001013a

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x30010244

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x30010152

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x30010258

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x4001036a

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x10010370

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x10010372

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x10010376

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x21010378

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 205
    const v2, 0x1010202

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 206
    const v2, 0x1010402

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 207
    const v2, 0x1010103

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 208
    const v2, 0x1010503

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 209
    const v2, 0x1010105

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 210
    const v2, 0x1010505

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 211
    const v2, 0x101020b

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 212
    const v2, 0x101040b

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 213
    const v2, 0x101010f

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 214
    const v2, 0x1010219

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 215
    const v2, 0x101051f

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 216
    const v2, 0x1010521

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x1010226

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x1010426

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x101012a

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x101022a

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x1010130

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x101023a

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x1010144

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x1010250

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x1010156

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x101025c

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x1010162

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x1010268

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x1010468

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x101026d

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x101046d

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x1010271

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x1010471

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x1010277

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x1010477

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x101027d

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x101047d

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x1010283

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x1010483

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x1010288

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x1010488

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x1010292

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x1010492

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x63010565

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x63010397

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_07;->mObjects:[I

    .line 248
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
