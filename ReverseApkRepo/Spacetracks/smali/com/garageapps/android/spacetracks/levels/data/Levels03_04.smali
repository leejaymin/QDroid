.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_04.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xd000800

    const v6, 0xb000800

    const v5, 0xa000800

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0x9

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mMaxTime:I

    .line 21
    const/16 v0, 0x3de

    new-array v0, v0, [I

    const/16 v1, 0x5e

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x67

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 35
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x79

    aput v3, v0, v1

    const/16 v1, 0x7a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 36
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x84

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x89

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8c

    aput v3, v0, v1

    const/16 v1, 0x8d

    aput v3, v0, v1

    const/16 v1, 0x92

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x9a

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x9b

    aput v3, v0, v1

    const/16 v1, 0x9c

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa0

    aput v3, v0, v1

    const/16 v1, 0xa3

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xa9

    aput v3, v0, v1

    const/16 v1, 0xac

    .line 41
    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xae

    aput v3, v0, v1

    const/16 v1, 0xaf

    aput v3, v0, v1

    const/16 v1, 0xb0

    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb5

    .line 42
    aput v4, v0, v1

    const/16 v1, 0xb7

    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbe

    .line 43
    aput v3, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc4

    aput v3, v0, v1

    const/16 v1, 0xc7

    .line 44
    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v4, v0, v1

    const/16 v1, 0xcd

    aput v4, v0, v1

    const/16 v1, 0xd0

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xd1

    aput v3, v0, v1

    const/16 v1, 0xd2

    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd9

    .line 46
    aput v6, v0, v1

    const/16 v1, 0xda

    aput v3, v0, v1

    const/16 v1, 0xdb

    aput v5, v0, v1

    const/16 v1, 0xdd

    aput v6, v0, v1

    const/16 v1, 0xde

    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v5, v0, v1

    const/16 v1, 0xe3

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xe7

    aput v3, v0, v1

    const/16 v1, 0xec

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf5

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 50
    aput v7, v0, v1

    const/16 v1, 0xfe

    aput v4, v0, v1

    const/16 v1, 0xff

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x101

    aput v7, v0, v1

    const/16 v1, 0x102

    aput v4, v0, v1

    const/16 v1, 0x103

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x106

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x10a

    aput v3, v0, v1

    const/16 v1, 0x10b

    aput v3, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10f

    .line 52
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x111

    aput v4, v0, v1

    const/16 v1, 0x113

    aput v4, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x118

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11e

    aput v4, v0, v1

    const/16 v1, 0x121

    .line 54
    aput v3, v0, v1

    const/16 v1, 0x123

    aput v3, v0, v1

    const/16 v1, 0x125

    aput v3, v0, v1

    const/16 v1, 0x127

    aput v3, v0, v1

    const/16 v1, 0x12a

    .line 55
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x12c

    aput v4, v0, v1

    const/16 v1, 0x12e

    aput v4, v0, v1

    const/16 v1, 0x12f

    aput v7, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x133

    .line 56
    aput v6, v0, v1

    const/16 v1, 0x134

    aput v3, v0, v1

    const/16 v1, 0x135

    aput v3, v0, v1

    const/16 v1, 0x137

    aput v3, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v5, v0, v1

    const/16 v1, 0x13d

    .line 57
    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x141

    aput v5, v0, v1

    const/16 v1, 0x146

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x147

    aput v4, v0, v1

    const/16 v1, 0x148

    aput v3, v0, v1

    const/16 v1, 0x149

    aput v5, v0, v1

    const/16 v1, 0x14f

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x150

    aput v3, v0, v1

    const/16 v1, 0x151

    aput v5, v0, v1

    const/16 v1, 0x158

    .line 60
    aput v6, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15a

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x162

    .line 61
    aput v6, v0, v1

    const/16 v1, 0x163

    aput v3, v0, v1

    const/16 v1, 0x164

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x16c

    .line 62
    aput v6, v0, v1

    const/16 v1, 0x16d

    aput v3, v0, v1

    const/16 v1, 0x16e

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x176

    .line 63
    aput v6, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x178

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x17f

    .line 64
    aput v7, v0, v1

    const/16 v1, 0x180

    aput v3, v0, v1

    const/16 v1, 0x181

    aput v5, v0, v1

    const/16 v1, 0x187

    .line 65
    aput v7, v0, v1

    const/16 v1, 0x188

    aput v3, v0, v1

    const/16 v1, 0x189

    aput v5, v0, v1

    const/16 v1, 0x18f

    .line 66
    aput v7, v0, v1

    const/16 v1, 0x190

    aput v3, v0, v1

    const/16 v1, 0x191

    aput v5, v0, v1

    const/16 v1, 0x197

    .line 67
    aput v7, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x199

    aput v5, v0, v1

    const/16 v1, 0x1a0

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x1a1

    aput v5, v0, v1

    const/16 v1, 0x1a9

    .line 69
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1b2

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x1bb

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x1bc

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x1c3

    .line 72
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1c4

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c6

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x1cc

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x1cd

    aput v3, v0, v1

    const/16 v1, 0x1ce

    aput v3, v0, v1

    const/16 v1, 0x1cf

    aput v3, v0, v1

    const/16 v1, 0x1d0

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x1d5

    .line 74
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1d6

    aput v5, v0, v1

    const/16 v1, 0x1d7

    aput v6, v0, v1

    const/16 v1, 0x1d8

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v3, v0, v1

    const/16 v1, 0x1da

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x1de

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x1df

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1e1

    aput v6, v0, v1

    const/16 v1, 0x1e2

    aput v3, v0, v1

    const/16 v1, 0x1e3

    aput v3, v0, v1

    const/16 v1, 0x1e7

    .line 76
    aput v6, v0, v1

    const/16 v1, 0x1e8

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1eb

    aput v6, v0, v1

    const/16 v1, 0x1ec

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1f1

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1fa

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x1fe

    aput v3, v0, v1

    const/16 v1, 0x202

    .line 79
    aput v7, v0, v1

    const/16 v1, 0x203

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x207

    aput v3, v0, v1

    const/16 v1, 0x20b

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x20c

    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v7, v0, v1

    const/16 v1, 0x210

    aput v4, v0, v1

    const/16 v1, 0x211

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x214

    .line 81
    aput v6, v0, v1

    const/16 v1, 0x215

    aput v3, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x219

    aput v3, v0, v1

    const/16 v1, 0x21a

    aput v3, v0, v1

    const/16 v1, 0x21e

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x220

    aput v7, v0, v1

    const/16 v1, 0x221

    aput v3, v0, v1

    const/16 v1, 0x223

    aput v3, v0, v1

    const/16 v1, 0x226

    .line 83
    aput v7, v0, v1

    const/16 v1, 0x227

    aput v3, v0, v1

    const/16 v1, 0x228

    aput v7, v0, v1

    const/16 v1, 0x229

    aput v3, v0, v1

    const/16 v1, 0x22a

    aput v3, v0, v1

    const/16 v1, 0x22c

    aput v3, v0, v1

    const/16 v1, 0x22f

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x230

    aput v3, v0, v1

    const/16 v1, 0x231

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x232

    aput v3, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x234

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x235

    aput v5, v0, v1

    const/16 v1, 0x238

    .line 85
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x23a

    aput v3, v0, v1

    const/16 v1, 0x23c

    aput v4, v0, v1

    const/16 v1, 0x23d

    aput v3, v0, v1

    const/16 v1, 0x241

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x243

    aput v3, v0, v1

    const/16 v1, 0x244

    aput v3, v0, v1

    const/16 v1, 0x245

    aput v3, v0, v1

    const/16 v1, 0x246

    aput v3, v0, v1

    const/16 v1, 0x247

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x24a

    .line 87
    aput v6, v0, v1

    const/16 v1, 0x24b

    aput v3, v0, v1

    const/16 v1, 0x24c

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x24d

    aput v3, v0, v1

    const/16 v1, 0x24e

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x24f

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x250

    aput v3, v0, v1

    const/16 v1, 0x254

    .line 88
    aput v6, v0, v1

    const/16 v1, 0x255

    aput v3, v0, v1

    const/16 v1, 0x257

    aput v3, v0, v1

    const/16 v1, 0x258

    aput v3, v0, v1

    const/16 v1, 0x259

    aput v5, v0, v1

    const/16 v1, 0x25e

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x25f

    aput v3, v0, v1

    const/16 v1, 0x260

    aput v3, v0, v1

    const/16 v1, 0x261

    aput v3, v0, v1

    const/16 v1, 0x267

    .line 90
    aput v6, v0, v1

    const/16 v1, 0x268

    aput v3, v0, v1

    const/16 v1, 0x269

    aput v3, v0, v1

    const/16 v1, 0x26a

    aput v5, v0, v1

    const/16 v1, 0x272

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x27a

    .line 92
    aput v7, v0, v1

    const/16 v1, 0x27b

    aput v4, v0, v1

    const/16 v1, 0x282

    .line 93
    aput v7, v0, v1

    const/16 v1, 0x283

    aput v3, v0, v1

    const/16 v1, 0x284

    aput v5, v0, v1

    const/16 v1, 0x28a

    .line 94
    aput v7, v0, v1

    const/16 v1, 0x28b

    aput v3, v0, v1

    const/16 v1, 0x28c

    aput v3, v0, v1

    const/16 v1, 0x28d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x292

    .line 95
    aput v7, v0, v1

    const/16 v1, 0x293

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x294

    aput v5, v0, v1

    const/16 v1, 0x295

    aput v6, v0, v1

    const/16 v1, 0x296

    aput v3, v0, v1

    const/16 v1, 0x297

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x29b

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x29c

    aput v5, v0, v1

    const/16 v1, 0x29f

    aput v6, v0, v1

    const/16 v1, 0x2a0

    aput v3, v0, v1

    const/16 v1, 0x2a4

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x2a9

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2ad

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x2ae

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2b1

    aput v7, v0, v1

    const/16 v1, 0x2b2

    aput v3, v0, v1

    const/16 v1, 0x2b6

    .line 99
    aput v6, v0, v1

    const/16 v1, 0x2b7

    aput v3, v0, v1

    const/16 v1, 0x2b8

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2b9

    aput v7, v0, v1

    const/16 v1, 0x2ba

    aput v3, v0, v1

    const/16 v1, 0x2bb

    aput v5, v0, v1

    const/16 v1, 0x2c0

    .line 100
    aput v6, v0, v1

    const/16 v1, 0x2c1

    aput v3, v0, v1

    const/16 v1, 0x2c2

    aput v3, v0, v1

    const/16 v1, 0x2c3

    aput v5, v0, v1

    const/16 v1, 0x2ca

    .line 101
    aput v6, v0, v1

    const/16 v1, 0x2cb

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x2d4

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x2dd

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x2e6

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x2ef

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x2f8

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x300

    .line 107
    aput v7, v0, v1

    const/16 v1, 0x301

    aput v3, v0, v1

    const/16 v1, 0x302

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x309

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x30a

    aput v4, v0, v1

    const/16 v1, 0x30b

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x30c

    const v2, 0xc0a0200

    aput v2, v0, v1

    const/16 v1, 0x312

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x315

    aput v3, v0, v1

    const/16 v1, 0x316

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x31b

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x31d

    aput v3, v0, v1

    const/16 v1, 0x31e

    aput v3, v0, v1

    const/16 v1, 0x31f

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x323

    .line 111
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x324

    aput v3, v0, v1

    const/16 v1, 0x326

    aput v3, v0, v1

    const/16 v1, 0x328

    aput v3, v0, v1

    const/16 v1, 0x32b

    .line 112
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x32c

    aput v3, v0, v1

    const/16 v1, 0x32d

    aput v3, v0, v1

    const/16 v1, 0x32f

    aput v3, v0, v1

    const/16 v1, 0x331

    aput v3, v0, v1

    const/16 v1, 0x334

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x336

    aput v5, v0, v1

    const/16 v1, 0x338

    aput v4, v0, v1

    const/16 v1, 0x33a

    aput v4, v0, v1

    const/16 v1, 0x33d

    .line 114
    aput v4, v0, v1

    const/16 v1, 0x33e

    aput v5, v0, v1

    const/16 v1, 0x341

    aput v3, v0, v1

    const/16 v1, 0x343

    aput v3, v0, v1

    const/16 v1, 0x346

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x349

    aput v7, v0, v1

    const/16 v1, 0x34a

    aput v3, v0, v1

    const/16 v1, 0x34c

    aput v3, v0, v1

    const/16 v1, 0x34f

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x352

    aput v3, v0, v1

    const/16 v1, 0x353

    aput v5, v0, v1

    const/16 v1, 0x355

    aput v4, v0, v1

    const/16 v1, 0x358

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x359

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x35b

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x35d

    aput v7, v0, v1

    const/16 v1, 0x35e

    aput v3, v0, v1

    const/16 v1, 0x361

    .line 118
    aput v6, v0, v1

    const/16 v1, 0x362

    aput v3, v0, v1

    const/16 v1, 0x364

    aput v3, v0, v1

    const/16 v1, 0x366

    aput v3, v0, v1

    const/16 v1, 0x367

    aput v5, v0, v1

    const/16 v1, 0x36b

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x36d

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x374

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x378

    aput v3, v0, v1

    const/16 v1, 0x37d

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x37f

    aput v4, v0, v1

    const/16 v1, 0x381

    aput v4, v0, v1

    const/16 v1, 0x386

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x388

    aput v3, v0, v1

    const/16 v1, 0x38a

    aput v3, v0, v1

    const/16 v1, 0x38f

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x391

    aput v3, v0, v1

    const/16 v1, 0x393

    aput v3, v0, v1

    const/16 v1, 0x398

    .line 124
    aput v4, v0, v1

    const/16 v1, 0x39a

    aput v4, v0, v1

    const/16 v1, 0x39c

    aput v4, v0, v1

    const/16 v1, 0x3a1

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x3a3

    aput v3, v0, v1

    const/16 v1, 0x3a5

    aput v3, v0, v1

    const/16 v1, 0x3aa

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x3ac

    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3b3

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x3b4

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x3b5

    aput v4, v0, v1

    const/16 v1, 0x3b6

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x3b7

    aput v4, v0, v1

    const/16 v1, 0x3bc

    .line 128
    aput v6, v0, v1

    const/16 v1, 0x3bd

    aput v3, v0, v1

    const/16 v1, 0x3be

    aput v3, v0, v1

    const/16 v1, 0x3bf

    aput v3, v0, v1

    const/16 v1, 0x3c0

    aput v5, v0, v1

    const/16 v1, 0x3c6

    .line 129
    aput v6, v0, v1

    const/16 v1, 0x3c7

    aput v3, v0, v1

    const/16 v1, 0x3c8

    aput v5, v0, v1

    const/16 v1, 0x3d0

    .line 130
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mTiles:[I

    .line 135
    const/16 v0, 0x34

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x12010403

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x1201040c

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x3201020d

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x3201060d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 141
    const v2, 0x12010514

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const v2, 0x3201041b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x32010220

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x32010524

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x12010528

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 146
    const v2, 0x2201022f

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 147
    const v2, 0x32010635

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 148
    const v2, 0x3201023d

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 149
    const v2, 0x12010644

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 150
    const v2, 0x2201034a

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 151
    const v2, 0x12010253

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 152
    const v2, 0x32010653

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 153
    const v2, 0x2201045a

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x3020304

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x3020504

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x301020d

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x301060d

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x3010318

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x3020518

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x3010120

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x3010620

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x3010424

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x301012c

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x301062b

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x3010533

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x3010733

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x3010134

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x301013b

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x3010240

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x3010744

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x301014b

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 174
    const v2, 0x301074b

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 175
    const v2, 0x3010151

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 176
    const v2, 0x3010351

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 177
    const v2, 0x3010551

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 178
    const v2, 0x3010751

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 179
    const v2, 0x3010155

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 180
    const v2, 0x3010355

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 181
    const v2, 0x3010555

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const v2, 0x3010755

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 183
    const v2, 0x301015c

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 184
    const v2, 0x301035c

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 185
    const v2, 0x301055c

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 186
    const v2, 0x301075c

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 187
    const v2, 0x3010360

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 188
    const v2, 0x3010560

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 189
    const v2, 0x63010465

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_04;->mObjects:[I

    .line 192
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
