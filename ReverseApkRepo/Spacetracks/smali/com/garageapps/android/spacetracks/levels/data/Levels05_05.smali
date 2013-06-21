.class public Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels05_05.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xd000800

    const v6, 0x1000b00

    const v5, 0x10a0200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mSizeX:I

    .line 11
    const/16 v0, 0xd2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mNebulaId:I

    .line 13
    const/16 v0, 0x2f

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mFogColor:[F

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mMaxTime:I

    .line 21
    const/16 v0, 0x5be

    new-array v0, v0, [I

    const/16 v1, 0x49

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 34
    aput v7, v0, v1

    const/16 v1, 0x57

    aput v3, v0, v1

    const/16 v1, 0x58

    const v2, 0xc000800

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
    aput v3, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x6b

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x72

    .line 38
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x7a

    .line 39
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v7, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0xa2

    .line 45
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v6, v0, v1

    const/16 v1, 0xaa

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0xad

    aput v6, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v6, v0, v1

    const/16 v1, 0xb4

    aput v6, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v6, v0, v1

    const/16 v1, 0xbb

    aput v6, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v6, v0, v1

    const/16 v1, 0xc2

    aput v6, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xc8

    aput v7, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v3, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v3, v0, v1

    const/16 v1, 0xdb

    aput v3, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    aput v3, v0, v1

    const/16 v1, 0xde

    aput v3, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v5, v0, v1

    const/16 v1, 0xe2

    aput v5, v0, v1

    const/16 v1, 0xe3

    aput v4, v0, v1

    const/16 v1, 0xe4

    aput v5, v0, v1

    const/16 v1, 0xe5

    aput v5, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v3, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xea

    aput v4, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v3, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf1

    aput v4, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v4, v0, v1

    const/16 v1, 0xf6

    .line 57
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v4, v0, v1

    const/16 v1, 0xfa

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xfe

    .line 58
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xff

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x106

    .line 59
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x10d

    .line 60
    aput v7, v0, v1

    const/16 v1, 0x10e

    aput v4, v0, v1

    const/16 v1, 0x10f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x114

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x11b

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x122

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x129

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x130

    .line 65
    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x131

    aput v3, v0, v1

    const/16 v1, 0x132

    aput v3, v0, v1

    const/16 v1, 0x137

    .line 66
    aput v7, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v3, v0, v1

    const/16 v1, 0x13e

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x145

    .line 68
    aput v4, v0, v1

    const/16 v1, 0x146

    aput v4, v0, v1

    const/16 v1, 0x147

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x14c

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v4, v0, v1

    const/16 v1, 0x152

    .line 70
    aput v7, v0, v1

    const/16 v1, 0x153

    aput v3, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x155

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x159

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v6, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x161

    aput v3, v0, v1

    const/16 v1, 0x162

    aput v3, v0, v1

    const/16 v1, 0x163

    aput v3, v0, v1

    const/16 v1, 0x167

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x168

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x169

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x16a

    aput v6, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v4, v0, v1

    const/16 v1, 0x171

    aput v3, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x178

    aput v6, v0, v1

    const/16 v1, 0x17c

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x17e

    aput v7, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v6, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x18d

    aput v3, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x193

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x194

    aput v6, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x19a

    aput v7, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    const/16 v1, 0x19e

    .line 81
    aput v7, v0, v1

    const/16 v1, 0x19f

    aput v4, v0, v1

    const/16 v1, 0x1a1

    aput v3, v0, v1

    const/16 v1, 0x1a2

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x1a5

    .line 82
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1a6

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1ac

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1ad

    aput v3, v0, v1

    const/16 v1, 0x1ae

    aput v3, v0, v1

    const/16 v1, 0x1af

    aput v3, v0, v1

    const/16 v1, 0x1b3

    .line 84
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x1b4

    aput v3, v0, v1

    const/16 v1, 0x1b5

    aput v3, v0, v1

    const/16 v1, 0x1b6

    aput v3, v0, v1

    const/16 v1, 0x1bb

    .line 85
    aput v5, v0, v1

    const/16 v1, 0x1bc

    aput v6, v0, v1

    const/16 v1, 0x1bd

    aput v5, v0, v1

    const/16 v1, 0x1c2

    .line 86
    aput v5, v0, v1

    const/16 v1, 0x1c3

    aput v6, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c9

    .line 87
    aput v5, v0, v1

    const/16 v1, 0x1ca

    aput v6, v0, v1

    const/16 v1, 0x1cb

    aput v5, v0, v1

    const/16 v1, 0x1d0

    .line 88
    aput v5, v0, v1

    const/16 v1, 0x1d1

    aput v6, v0, v1

    const/16 v1, 0x1d2

    aput v5, v0, v1

    const/16 v1, 0x1d7

    .line 89
    aput v5, v0, v1

    const/16 v1, 0x1d8

    aput v6, v0, v1

    const/16 v1, 0x1d9

    aput v5, v0, v1

    const/16 v1, 0x1de

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1df

    aput v3, v0, v1

    const/16 v1, 0x1e0

    aput v3, v0, v1

    const/16 v1, 0x1e5

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v3, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1ec

    .line 92
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1ed

    aput v5, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f4

    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v5, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x202

    aput v5, v0, v1

    const/16 v1, 0x203

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v5, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20f

    .line 97
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x210

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x217

    aput v5, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x21d

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x21e

    aput v3, v0, v1

    const/16 v1, 0x21f

    aput v5, v0, v1

    const/16 v1, 0x224

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x22c

    aput v5, v0, v1

    const/16 v1, 0x22d

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x231

    .line 102
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x232

    aput v5, v0, v1

    const/16 v1, 0x233

    aput v4, v0, v1

    const/16 v1, 0x234

    aput v3, v0, v1

    const/16 v1, 0x235

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x239

    aput v3, v0, v1

    const/16 v1, 0x23a

    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x23c

    aput v3, v0, v1

    const/16 v1, 0x23f

    .line 104
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x240

    aput v3, v0, v1

    const/16 v1, 0x241

    aput v3, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x243

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x249

    aput v4, v0, v1

    const/16 v1, 0x24e

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x250

    aput v4, v0, v1

    const/16 v1, 0x255

    .line 107
    aput v4, v0, v1

    const/16 v1, 0x256

    aput v3, v0, v1

    const/16 v1, 0x257

    aput v4, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v7, v0, v1

    const/16 v1, 0x25c

    aput v3, v0, v1

    const/16 v1, 0x25d

    aput v3, v0, v1

    const/16 v1, 0x25e

    aput v3, v0, v1

    const/16 v1, 0x25f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x262

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x265

    aput v3, v0, v1

    const/16 v1, 0x266

    aput v3, v0, v1

    const/16 v1, 0x269

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x26c

    aput v4, v0, v1

    const/16 v1, 0x26d

    aput v3, v0, v1

    const/16 v1, 0x270

    .line 111
    aput v3, v0, v1

    const/16 v1, 0x272

    aput v7, v0, v1

    const/16 v1, 0x273

    aput v3, v0, v1

    const/16 v1, 0x274

    aput v3, v0, v1

    const/16 v1, 0x277

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x279

    aput v3, v0, v1

    const/16 v1, 0x27a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x27b

    aput v3, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v4, v0, v1

    const/16 v1, 0x280

    aput v4, v0, v1

    const/16 v1, 0x282

    aput v4, v0, v1

    const/16 v1, 0x285

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x287

    aput v3, v0, v1

    const/16 v1, 0x289

    aput v3, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x28d

    aput v3, v0, v1

    const/16 v1, 0x28e

    aput v3, v0, v1

    const/16 v1, 0x290

    aput v3, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v4, v0, v1

    const/16 v1, 0x294

    aput v3, v0, v1

    const/16 v1, 0x295

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x297

    aput v4, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x29d

    aput v7, v0, v1

    const/16 v1, 0x29e

    aput v3, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2a3

    aput v7, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v4, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ab

    aput v3, v0, v1

    const/16 v1, 0x2ac

    aput v4, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v3, v0, v1

    const/16 v1, 0x2b3

    aput v3, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x2b7

    aput v3, v0, v1

    const/16 v1, 0x2b8

    aput v3, v0, v1

    const/16 v1, 0x2b9

    aput v3, v0, v1

    const/16 v1, 0x2ba

    aput v3, v0, v1

    const/16 v1, 0x2bd

    .line 122
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x2be

    aput v3, v0, v1

    const/16 v1, 0x2bf

    aput v3, v0, v1

    const/16 v1, 0x2c0

    aput v3, v0, v1

    const/16 v1, 0x2c1

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x2c5

    .line 123
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x2c6

    aput v3, v0, v1

    const/16 v1, 0x2c7

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x2cd

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x2d4

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x2da

    .line 126
    aput v7, v0, v1

    const/16 v1, 0x2db

    aput v4, v0, v1

    const/16 v1, 0x2dc

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2e0

    .line 127
    aput v7, v0, v1

    const/16 v1, 0x2e1

    aput v3, v0, v1

    const/16 v1, 0x2e2

    aput v3, v0, v1

    const/16 v1, 0x2e3

    aput v3, v0, v1

    const/16 v1, 0x2e4

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2e7

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x2e8

    aput v3, v0, v1

    const/16 v1, 0x2ea

    aput v4, v0, v1

    const/16 v1, 0x2eb

    aput v3, v0, v1

    const/16 v1, 0x2ee

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x2ef

    aput v5, v0, v1

    const/16 v1, 0x2f1

    aput v3, v0, v1

    const/16 v1, 0x2f2

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2f5

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x2f6

    aput v3, v0, v1

    const/16 v1, 0x2f8

    aput v3, v0, v1

    const/16 v1, 0x2f9

    aput v3, v0, v1

    const/16 v1, 0x2fc

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x2fd

    aput v4, v0, v1

    const/16 v1, 0x2ff

    aput v3, v0, v1

    const/16 v1, 0x300

    aput v3, v0, v1

    const/16 v1, 0x303

    .line 132
    aput v5, v0, v1

    const/16 v1, 0x304

    aput v3, v0, v1

    const/16 v1, 0x306

    aput v5, v0, v1

    const/16 v1, 0x307

    aput v4, v0, v1

    const/16 v1, 0x30a

    .line 133
    aput v3, v0, v1

    const/16 v1, 0x30b

    aput v3, v0, v1

    const/16 v1, 0x30c

    aput v3, v0, v1

    const/16 v1, 0x30d

    aput v3, v0, v1

    const/16 v1, 0x30e

    aput v3, v0, v1

    const/16 v1, 0x311

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x312

    aput v3, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x315

    aput v3, v0, v1

    const/16 v1, 0x318

    .line 135
    aput v4, v0, v1

    const/16 v1, 0x31a

    aput v6, v0, v1

    const/16 v1, 0x31c

    aput v3, v0, v1

    const/16 v1, 0x31f

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x321

    aput v6, v0, v1

    const/16 v1, 0x323

    aput v4, v0, v1

    const/16 v1, 0x326

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x328

    aput v6, v0, v1

    const/16 v1, 0x32a

    aput v3, v0, v1

    const/16 v1, 0x32d

    .line 138
    aput v4, v0, v1

    const/16 v1, 0x32f

    aput v6, v0, v1

    const/16 v1, 0x331

    aput v3, v0, v1

    const/16 v1, 0x334

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x336

    aput v6, v0, v1

    const/16 v1, 0x338

    aput v4, v0, v1

    const/16 v1, 0x33b

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x33d

    aput v6, v0, v1

    const/16 v1, 0x33f

    aput v3, v0, v1

    const/16 v1, 0x342

    .line 141
    aput v4, v0, v1

    const/16 v1, 0x344

    aput v6, v0, v1

    const/16 v1, 0x346

    aput v3, v0, v1

    const/16 v1, 0x349

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x34b

    aput v6, v0, v1

    const/16 v1, 0x34d

    aput v4, v0, v1

    const/16 v1, 0x350

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x351

    aput v5, v0, v1

    const/16 v1, 0x352

    aput v6, v0, v1

    const/16 v1, 0x354

    aput v3, v0, v1

    const/16 v1, 0x357

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x358

    aput v3, v0, v1

    const/16 v1, 0x359

    aput v6, v0, v1

    const/16 v1, 0x35b

    aput v3, v0, v1

    const/16 v1, 0x35e

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x35f

    aput v3, v0, v1

    const/16 v1, 0x360

    aput v3, v0, v1

    const/16 v1, 0x361

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x362

    aput v4, v0, v1

    const/16 v1, 0x365

    .line 146
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x366

    aput v4, v0, v1

    const/16 v1, 0x367

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x368

    aput v3, v0, v1

    const/16 v1, 0x369

    aput v3, v0, v1

    const/16 v1, 0x36d

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x370

    aput v3, v0, v1

    const/16 v1, 0x374

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x377

    aput v3, v0, v1

    const/16 v1, 0x37b

    .line 149
    aput v4, v0, v1

    const/16 v1, 0x37d

    aput v3, v0, v1

    const/16 v1, 0x37e

    aput v3, v0, v1

    const/16 v1, 0x382

    .line 150
    aput v3, v0, v1

    const/16 v1, 0x384

    aput v3, v0, v1

    const/16 v1, 0x385

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x388

    .line 151
    aput v7, v0, v1

    const/16 v1, 0x389

    aput v3, v0, v1

    const/16 v1, 0x38b

    aput v3, v0, v1

    const/16 v1, 0x38f

    .line 152
    aput v5, v0, v1

    const/16 v1, 0x390

    aput v4, v0, v1

    const/16 v1, 0x392

    aput v3, v0, v1

    const/16 v1, 0x396

    .line 153
    aput v3, v0, v1

    const/16 v1, 0x397

    aput v3, v0, v1

    const/16 v1, 0x399

    aput v4, v0, v1

    const/16 v1, 0x39d

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x39e

    aput v3, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a1

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x3a4

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x3a5

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x3a7

    aput v4, v0, v1

    const/16 v1, 0x3a8

    aput v3, v0, v1

    const/16 v1, 0x3ab

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3af

    aput v3, v0, v1

    const/16 v1, 0x3b2

    .line 157
    aput v4, v0, v1

    const/16 v1, 0x3b3

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x3b4

    aput v7, v0, v1

    const/16 v1, 0x3b5

    aput v5, v0, v1

    const/16 v1, 0x3b6

    aput v4, v0, v1

    const/16 v1, 0x3b9

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x3ba

    aput v3, v0, v1

    const/16 v1, 0x3bb

    aput v3, v0, v1

    const/16 v1, 0x3bc

    aput v3, v0, v1

    const/16 v1, 0x3bd

    aput v3, v0, v1

    const/16 v1, 0x3c0

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x3c1

    aput v3, v0, v1

    const/16 v1, 0x3c2

    aput v3, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c4

    aput v3, v0, v1

    const/16 v1, 0x3c7

    .line 160
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x3c8

    aput v3, v0, v1

    const/16 v1, 0x3c9

    aput v3, v0, v1

    const/16 v1, 0x3ca

    aput v3, v0, v1

    const/16 v1, 0x3cb

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x3cf

    .line 161
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3d0

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x3d1

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3d6

    .line 162
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3d7

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x3d8

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3dd

    .line 163
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3de

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x3df

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3e4

    .line 164
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3e5

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x3e6

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3eb

    .line 165
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3ec

    aput v4, v0, v1

    const/16 v1, 0x3ed

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3f2

    .line 166
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3f3

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x3f4

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3f9

    .line 167
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3fa

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x3fb

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x400

    .line 168
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x401

    aput v4, v0, v1

    const/16 v1, 0x402

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x407

    .line 169
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x408

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x409

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x40e

    .line 170
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x40f

    aput v5, v0, v1

    const/16 v1, 0x410

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x415

    .line 171
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x416

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x417

    aput v5, v0, v1

    const/16 v1, 0x41c

    .line 172
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x41d

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x41e

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x423

    .line 173
    aput v3, v0, v1

    const/16 v1, 0x424

    aput v5, v0, v1

    const/16 v1, 0x425

    aput v3, v0, v1

    const/16 v1, 0x42a

    .line 174
    aput v5, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v3, v0, v1

    const/16 v1, 0x431

    .line 175
    aput v3, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x438

    .line 176
    aput v5, v0, v1

    const/16 v1, 0x439

    aput v3, v0, v1

    const/16 v1, 0x43a

    aput v5, v0, v1

    const/16 v1, 0x43f

    .line 177
    aput v3, v0, v1

    const/16 v1, 0x440

    aput v3, v0, v1

    const/16 v1, 0x441

    aput v3, v0, v1

    const/16 v1, 0x446

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x447

    aput v3, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x44d

    .line 179
    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v5, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x454

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x455

    aput v3, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    const/16 v1, 0x45b

    .line 181
    aput v3, v0, v1

    const/16 v1, 0x45c

    aput v5, v0, v1

    const/16 v1, 0x45d

    aput v3, v0, v1

    const/16 v1, 0x462

    .line 182
    aput v3, v0, v1

    const/16 v1, 0x463

    aput v3, v0, v1

    const/16 v1, 0x464

    aput v3, v0, v1

    const/16 v1, 0x469

    .line 183
    aput v5, v0, v1

    const/16 v1, 0x46a

    aput v3, v0, v1

    const/16 v1, 0x46b

    aput v5, v0, v1

    const/16 v1, 0x470

    .line 184
    aput v3, v0, v1

    const/16 v1, 0x471

    aput v3, v0, v1

    const/16 v1, 0x472

    aput v3, v0, v1

    const/16 v1, 0x477

    .line 185
    aput v3, v0, v1

    const/16 v1, 0x478

    aput v5, v0, v1

    const/16 v1, 0x479

    aput v3, v0, v1

    const/16 v1, 0x47e

    .line 186
    aput v3, v0, v1

    const/16 v1, 0x47f

    aput v3, v0, v1

    const/16 v1, 0x480

    aput v3, v0, v1

    const/16 v1, 0x485

    .line 187
    aput v5, v0, v1

    const/16 v1, 0x486

    aput v3, v0, v1

    const/16 v1, 0x487

    aput v5, v0, v1

    const/16 v1, 0x48c

    .line 188
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x48d

    aput v3, v0, v1

    const/16 v1, 0x48e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x494

    .line 189
    aput v3, v0, v1

    const/16 v1, 0x49b

    .line 190
    aput v4, v0, v1

    const/16 v1, 0x4a1

    .line 191
    aput v7, v0, v1

    const/16 v1, 0x4a2

    aput v3, v0, v1

    const/16 v1, 0x4a3

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x4a7

    .line 192
    aput v7, v0, v1

    const/16 v1, 0x4a8

    aput v3, v0, v1

    const/16 v1, 0x4a9

    aput v3, v0, v1

    const/16 v1, 0x4aa

    aput v3, v0, v1

    const/16 v1, 0x4ab

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x4ae

    .line 193
    aput v3, v0, v1

    const/16 v1, 0x4af

    aput v3, v0, v1

    const/16 v1, 0x4b0

    aput v3, v0, v1

    const/16 v1, 0x4b1

    aput v3, v0, v1

    const/16 v1, 0x4b2

    aput v3, v0, v1

    const/16 v1, 0x4b5

    .line 194
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x4b6

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4b8

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x4b9

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x4bc

    .line 195
    aput v3, v0, v1

    const/16 v1, 0x4c0

    aput v3, v0, v1

    const/16 v1, 0x4c3

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x4c4

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x4c7

    aput v3, v0, v1

    const/16 v1, 0x4ca

    .line 197
    aput v3, v0, v1

    const/16 v1, 0x4cb

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x4cc

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x4ce

    aput v3, v0, v1

    const/16 v1, 0x4d1

    .line 198
    aput v3, v0, v1

    const/16 v1, 0x4d2

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x4d3

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x4d4

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x4d5

    aput v3, v0, v1

    const/16 v1, 0x4d8

    .line 199
    aput v3, v0, v1

    const/16 v1, 0x4da

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x4db

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x4dc

    aput v3, v0, v1

    const/16 v1, 0x4df

    .line 200
    aput v4, v0, v1

    const/16 v1, 0x4e2

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x4e3

    aput v4, v0, v1

    const/16 v1, 0x4e6

    .line 201
    aput v3, v0, v1

    const/16 v1, 0x4ea

    aput v3, v0, v1

    const/16 v1, 0x4ed

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x4f0

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x4f1

    aput v3, v0, v1

    const/16 v1, 0x4f4

    .line 203
    aput v3, v0, v1

    const/16 v1, 0x4f6

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x4f7

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x4f8

    aput v3, v0, v1

    const/16 v1, 0x4fb

    .line 204
    aput v4, v0, v1

    const/16 v1, 0x4fc

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x4fd

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x4fe

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x4ff

    aput v4, v0, v1

    const/16 v1, 0x502

    .line 205
    aput v3, v0, v1

    const/16 v1, 0x503

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x504

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x506

    aput v3, v0, v1

    const/16 v1, 0x509

    .line 206
    aput v3, v0, v1

    const/16 v1, 0x50a

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x50d

    aput v3, v0, v1

    const/16 v1, 0x510

    .line 207
    aput v3, v0, v1

    const/16 v1, 0x514

    aput v3, v0, v1

    const/16 v1, 0x517

    .line 208
    aput v4, v0, v1

    const/16 v1, 0x518

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x51a

    aput v7, v0, v1

    const/16 v1, 0x51b

    aput v4, v0, v1

    const/16 v1, 0x51e

    .line 209
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x51f

    aput v3, v0, v1

    const/16 v1, 0x521

    aput v3, v0, v1

    const/16 v1, 0x522

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x526

    .line 210
    aput v3, v0, v1

    const/16 v1, 0x528

    aput v3, v0, v1

    const/16 v1, 0x52d

    .line 211
    aput v4, v0, v1

    const/16 v1, 0x52f

    aput v4, v0, v1

    const/16 v1, 0x534

    .line 212
    aput v3, v0, v1

    const/16 v1, 0x536

    aput v3, v0, v1

    const/16 v1, 0x53b

    .line 213
    aput v4, v0, v1

    const/16 v1, 0x53d

    aput v4, v0, v1

    const/16 v1, 0x542

    .line 214
    aput v4, v0, v1

    const/16 v1, 0x544

    aput v4, v0, v1

    const/16 v1, 0x549

    .line 215
    aput v3, v0, v1

    const/16 v1, 0x54b

    aput v3, v0, v1

    const/16 v1, 0x550

    .line 216
    aput v3, v0, v1

    const/16 v1, 0x552

    aput v3, v0, v1

    const/16 v1, 0x557

    .line 217
    aput v4, v0, v1

    const/16 v1, 0x559

    aput v4, v0, v1

    const/16 v1, 0x55e

    .line 218
    aput v4, v0, v1

    const/16 v1, 0x560

    aput v4, v0, v1

    const/16 v1, 0x565

    .line 219
    aput v3, v0, v1

    const/16 v1, 0x566

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x567

    aput v3, v0, v1

    const/16 v1, 0x56c

    .line 220
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x56d

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x56e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x574

    .line 221
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x57b

    .line 222
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x582

    .line 223
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x589

    .line 224
    aput v4, v0, v1

    const/16 v1, 0x590

    .line 225
    aput v4, v0, v1

    const/16 v1, 0x597

    .line 226
    aput v4, v0, v1

    const/16 v1, 0x59e

    .line 227
    aput v4, v0, v1

    const/16 v1, 0x5a4

    .line 228
    aput v7, v0, v1

    const/16 v1, 0x5a5

    aput v4, v0, v1

    const/16 v1, 0x5a6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x5aa

    .line 229
    aput v7, v0, v1

    const/16 v1, 0x5ab

    aput v3, v0, v1

    const/16 v1, 0x5ac

    aput v4, v0, v1

    const/16 v1, 0x5ad

    aput v3, v0, v1

    const/16 v1, 0x5ae

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x5b1

    .line 230
    aput v3, v0, v1

    const/16 v1, 0x5b2

    aput v3, v0, v1

    const/16 v1, 0x5b3

    aput v4, v0, v1

    const/16 v1, 0x5b4

    aput v3, v0, v1

    const/16 v1, 0x5b5

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mTiles:[I

    .line 235
    const/16 v0, 0x4b

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 237
    const v2, 0x13010306

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 238
    const v2, 0x1301020c

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 239
    const v2, 0x1301040c

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 240
    const v2, 0x13010216

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 241
    const v2, 0x33010416

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 242
    const v2, 0x1301011e

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 243
    const v2, 0x1301051e

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 244
    const v2, 0x13010124

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 245
    const v2, 0x33010524

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 246
    const v2, 0x2301032a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 247
    const v2, 0x3301032c

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 248
    const v2, 0x33010233

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 249
    const v2, 0x13010341

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 250
    const v2, 0x13010248

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 251
    const v2, 0x4001024d

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, 0x33010451

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 253
    const v2, 0x1301015c

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const v2, 0x3301035c

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 255
    const v2, 0x1301055c

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 256
    const v2, 0x33010165

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 257
    const v2, 0x13010565

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 258
    const v2, 0x2301036e

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 259
    const v2, 0x13010175

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 260
    const v2, 0x33010375

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 261
    const v2, 0x13010575

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 262
    const v2, 0x1301027f

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 263
    const v2, 0x1301047f

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 264
    const v2, 0x33010486

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 265
    const v2, 0x33010289

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 266
    const v2, 0x13010390

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 267
    const v2, 0x23010393

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 268
    const v2, 0x330103a0

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 269
    const v2, 0x330104a7

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 270
    const v2, 0x230104ad

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 271
    const v2, 0x330103b3

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 272
    const v2, 0x130101b5

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 273
    const v2, 0x130105b5

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 274
    const v2, 0x130102bc

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 275
    const v2, 0x130104bc

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 278
    const v2, 0x3010101

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 279
    const v2, 0x3010501

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 280
    const v2, 0x301020b

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 281
    const v2, 0x301040b

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 282
    const v2, 0x3010116

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 283
    const v2, 0x3010516

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 284
    const v2, 0x302031a

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 285
    const v2, 0x3020320

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 286
    const v2, 0x3010127

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 287
    const v2, 0x3010527

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 288
    const v2, 0x301022b

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 289
    const v2, 0x301042b

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 290
    const v2, 0x3010147

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 291
    const v2, 0x3010547

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 292
    const v2, 0x3010168

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 293
    const v2, 0x3010568

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 294
    const v2, 0x301016d

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 295
    const v2, 0x301056d

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 296
    const v2, 0x301017b

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 297
    const v2, 0x301057b

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 298
    const v2, 0x3010180

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 299
    const v2, 0x3010580

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 300
    const v2, 0x3010196

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 301
    const v2, 0x3010596

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 302
    const v2, 0x30101ae

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 303
    const v2, 0x30105ae

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 304
    const v2, 0x30101ba

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 305
    const v2, 0x30105ba

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 306
    const v2, 0x30102bf

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 307
    const v2, 0x30104bf

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 308
    const v2, 0x30102c1

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 309
    const v2, 0x30104c1

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 310
    const v2, 0x30102c5

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 311
    const v2, 0x30104c5

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 312
    const v2, 0x630103c9

    aput v2, v0, v1

    .line 235
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_05;->mObjects:[I

    .line 315
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
