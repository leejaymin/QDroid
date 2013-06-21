.class public Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels05_06.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000200

    const v6, 0x10a0800

    const v5, 0x1000700

    const v4, 0x1000600

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0x9

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mSizeX:I

    .line 11
    const/16 v0, 0xd2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mNebulaId:I

    .line 13
    const/16 v0, 0x2f

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mFogColor:[F

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mMaxTime:I

    .line 21
    const/16 v0, 0x762

    new-array v0, v0, [I

    const/16 v1, 0x5d

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 33
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x6f

    .line 34
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x79

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x82

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x8a

    .line 37
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x8b

    aput v4, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x93

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x94

    aput v4, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x9c

    .line 39
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x9d

    aput v4, v0, v1

    const/16 v1, 0x9e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xa6

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xae

    .line 41
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xaf

    aput v4, v0, v1

    const/16 v1, 0xb0

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xb7

    .line 42
    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xc0

    .line 43
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xc1

    aput v4, v0, v1

    const/16 v1, 0xc2

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xca

    .line 44
    aput v3, v0, v1

    const/16 v1, 0xd3

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xd9

    .line 46
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xde

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xe2

    .line 47
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xe5

    aput v4, v0, v1

    const/16 v1, 0xe7

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xee

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xf7

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xfd

    .line 50
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v4, v0, v1

    const/16 v1, 0x102

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x103

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x106

    .line 51
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x107

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x109

    aput v4, v0, v1

    const/16 v1, 0x10b

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x10c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x112

    .line 52
    aput v3, v0, v1

    const/16 v1, 0x11b

    .line 53
    aput v4, v0, v1

    const/16 v1, 0x121

    .line 54
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x122

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x124

    aput v4, v0, v1

    const/16 v1, 0x126

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x127

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x12a

    .line 55
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x12b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x12d

    aput v4, v0, v1

    const/16 v1, 0x12f

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x130

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x136

    .line 56
    aput v3, v0, v1

    const/16 v1, 0x13f

    .line 57
    aput v4, v0, v1

    const/16 v1, 0x145

    .line 58
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x146

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x148

    aput v4, v0, v1

    const/16 v1, 0x14a

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x14b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x14e

    .line 59
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x14f

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x151

    aput v4, v0, v1

    const/16 v1, 0x153

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x154

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x15a

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x163

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x169

    .line 62
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x16a

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x16c

    aput v4, v0, v1

    const/16 v1, 0x16e

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x16f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x172

    .line 63
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x173

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x175

    aput v4, v0, v1

    const/16 v1, 0x177

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x178

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x17e

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x186

    .line 65
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x187

    aput v3, v0, v1

    const/16 v1, 0x188

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x18f

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x198

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x1a1

    .line 68
    aput v4, v0, v1

    const/16 v1, 0x1a3

    aput v4, v0, v1

    const/16 v1, 0x1aa

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x1ac

    aput v4, v0, v1

    const/16 v1, 0x1b3

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v4, v0, v1

    const/16 v1, 0x1bc

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x1be

    aput v3, v0, v1

    const/16 v1, 0x1c4

    .line 72
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c7

    aput v3, v0, v1

    const/16 v1, 0x1c8

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1cd

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x1ce

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x1d0

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x1d1

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x1da

    aput v3, v0, v1

    const/16 v1, 0x1df

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x1e3

    aput v4, v0, v1

    const/16 v1, 0x1e8

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x1ec

    aput v4, v0, v1

    const/16 v1, 0x1f1

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x1f5

    aput v4, v0, v1

    const/16 v1, 0x1f9

    .line 78
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1fa

    aput v3, v0, v1

    const/16 v1, 0x1fb

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1fd

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1fe

    aput v3, v0, v1

    const/16 v1, 0x1ff

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x202

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x203

    aput v3, v0, v1

    const/16 v1, 0x204

    aput v3, v0, v1

    const/16 v1, 0x206

    aput v3, v0, v1

    const/16 v1, 0x207

    aput v3, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x20b

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x20d

    aput v4, v0, v1

    const/16 v1, 0x20f

    aput v4, v0, v1

    const/16 v1, 0x211

    aput v4, v0, v1

    const/16 v1, 0x214

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x215

    aput v6, v0, v1

    const/16 v1, 0x216

    aput v4, v0, v1

    const/16 v1, 0x217

    aput v6, v0, v1

    const/16 v1, 0x218

    aput v4, v0, v1

    const/16 v1, 0x219

    aput v6, v0, v1

    const/16 v1, 0x21a

    aput v4, v0, v1

    const/16 v1, 0x21d

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v4, v0, v1

    const/16 v1, 0x221

    aput v4, v0, v1

    const/16 v1, 0x223

    aput v4, v0, v1

    const/16 v1, 0x226

    .line 83
    aput v7, v0, v1

    const/16 v1, 0x228

    aput v7, v0, v1

    const/16 v1, 0x22a

    aput v7, v0, v1

    const/16 v1, 0x22c

    aput v7, v0, v1

    const/16 v1, 0x22f

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x231

    aput v4, v0, v1

    const/16 v1, 0x233

    aput v4, v0, v1

    const/16 v1, 0x235

    aput v4, v0, v1

    const/16 v1, 0x238

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x239

    aput v6, v0, v1

    const/16 v1, 0x23a

    aput v4, v0, v1

    const/16 v1, 0x23b

    aput v6, v0, v1

    const/16 v1, 0x23c

    aput v4, v0, v1

    const/16 v1, 0x23d

    aput v6, v0, v1

    const/16 v1, 0x23e

    aput v4, v0, v1

    const/16 v1, 0x241

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x243

    aput v4, v0, v1

    const/16 v1, 0x245

    aput v4, v0, v1

    const/16 v1, 0x247

    aput v4, v0, v1

    const/16 v1, 0x24a

    .line 87
    aput v7, v0, v1

    const/16 v1, 0x24c

    aput v7, v0, v1

    const/16 v1, 0x24e

    aput v7, v0, v1

    const/16 v1, 0x250

    aput v7, v0, v1

    const/16 v1, 0x253

    .line 88
    aput v4, v0, v1

    const/16 v1, 0x255

    aput v4, v0, v1

    const/16 v1, 0x257

    aput v4, v0, v1

    const/16 v1, 0x259

    aput v4, v0, v1

    const/16 v1, 0x25c

    .line 89
    aput v4, v0, v1

    const/16 v1, 0x25d

    aput v6, v0, v1

    const/16 v1, 0x25e

    aput v4, v0, v1

    const/16 v1, 0x25f

    aput v6, v0, v1

    const/16 v1, 0x260

    aput v4, v0, v1

    const/16 v1, 0x261

    aput v6, v0, v1

    const/16 v1, 0x262

    aput v4, v0, v1

    const/16 v1, 0x265

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x267

    aput v4, v0, v1

    const/16 v1, 0x269

    aput v4, v0, v1

    const/16 v1, 0x26b

    aput v4, v0, v1

    const/16 v1, 0x26e

    .line 91
    aput v7, v0, v1

    const/16 v1, 0x270

    aput v7, v0, v1

    const/16 v1, 0x272

    aput v7, v0, v1

    const/16 v1, 0x274

    aput v7, v0, v1

    const/16 v1, 0x277

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x279

    aput v4, v0, v1

    const/16 v1, 0x27b

    aput v4, v0, v1

    const/16 v1, 0x27d

    aput v4, v0, v1

    const/16 v1, 0x280

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x281

    aput v6, v0, v1

    const/16 v1, 0x282

    aput v4, v0, v1

    const/16 v1, 0x283

    aput v6, v0, v1

    const/16 v1, 0x284

    aput v4, v0, v1

    const/16 v1, 0x285

    aput v6, v0, v1

    const/16 v1, 0x286

    aput v4, v0, v1

    const/16 v1, 0x289

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x28b

    aput v4, v0, v1

    const/16 v1, 0x28d

    aput v4, v0, v1

    const/16 v1, 0x28f

    aput v4, v0, v1

    const/16 v1, 0x292

    .line 95
    aput v7, v0, v1

    const/16 v1, 0x294

    aput v7, v0, v1

    const/16 v1, 0x296

    aput v7, v0, v1

    const/16 v1, 0x298

    aput v7, v0, v1

    const/16 v1, 0x29b

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x29d

    aput v4, v0, v1

    const/16 v1, 0x29f

    aput v4, v0, v1

    const/16 v1, 0x2a1

    aput v4, v0, v1

    const/16 v1, 0x2a4

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x2a5

    aput v6, v0, v1

    const/16 v1, 0x2a6

    aput v4, v0, v1

    const/16 v1, 0x2a7

    aput v6, v0, v1

    const/16 v1, 0x2a8

    aput v4, v0, v1

    const/16 v1, 0x2a9

    aput v6, v0, v1

    const/16 v1, 0x2aa

    aput v4, v0, v1

    const/16 v1, 0x2ad

    .line 98
    aput v4, v0, v1

    const/16 v1, 0x2af

    aput v4, v0, v1

    const/16 v1, 0x2b1

    aput v4, v0, v1

    const/16 v1, 0x2b3

    aput v4, v0, v1

    const/16 v1, 0x2b6

    .line 99
    aput v7, v0, v1

    const/16 v1, 0x2b8

    aput v7, v0, v1

    const/16 v1, 0x2ba

    aput v7, v0, v1

    const/16 v1, 0x2bc

    aput v7, v0, v1

    const/16 v1, 0x2bf

    .line 100
    aput v4, v0, v1

    const/16 v1, 0x2c1

    aput v4, v0, v1

    const/16 v1, 0x2c3

    aput v4, v0, v1

    const/16 v1, 0x2c5

    aput v4, v0, v1

    const/16 v1, 0x2c8

    .line 101
    aput v4, v0, v1

    const/16 v1, 0x2c9

    aput v6, v0, v1

    const/16 v1, 0x2ca

    aput v4, v0, v1

    const/16 v1, 0x2cb

    aput v6, v0, v1

    const/16 v1, 0x2cc

    aput v4, v0, v1

    const/16 v1, 0x2cd

    aput v6, v0, v1

    const/16 v1, 0x2ce

    aput v4, v0, v1

    const/16 v1, 0x2d1

    .line 102
    aput v4, v0, v1

    const/16 v1, 0x2d3

    aput v4, v0, v1

    const/16 v1, 0x2d5

    aput v4, v0, v1

    const/16 v1, 0x2d7

    aput v4, v0, v1

    const/16 v1, 0x2da

    .line 103
    aput v7, v0, v1

    const/16 v1, 0x2dc

    aput v7, v0, v1

    const/16 v1, 0x2de

    aput v7, v0, v1

    const/16 v1, 0x2e0

    aput v7, v0, v1

    const/16 v1, 0x2e3

    .line 104
    aput v4, v0, v1

    const/16 v1, 0x2e5

    aput v4, v0, v1

    const/16 v1, 0x2e7

    aput v4, v0, v1

    const/16 v1, 0x2e9

    aput v4, v0, v1

    const/16 v1, 0x2ec

    .line 105
    aput v4, v0, v1

    const/16 v1, 0x2ed

    aput v6, v0, v1

    const/16 v1, 0x2ee

    aput v4, v0, v1

    const/16 v1, 0x2ef

    aput v6, v0, v1

    const/16 v1, 0x2f0

    aput v4, v0, v1

    const/16 v1, 0x2f1

    aput v6, v0, v1

    const/16 v1, 0x2f2

    aput v4, v0, v1

    const/16 v1, 0x2f5

    .line 106
    aput v4, v0, v1

    const/16 v1, 0x2f7

    aput v4, v0, v1

    const/16 v1, 0x2f9

    aput v4, v0, v1

    const/16 v1, 0x2fb

    aput v4, v0, v1

    const/16 v1, 0x2fe

    .line 107
    aput v7, v0, v1

    const/16 v1, 0x300

    aput v7, v0, v1

    const/16 v1, 0x302

    aput v7, v0, v1

    const/16 v1, 0x304

    aput v7, v0, v1

    const/16 v1, 0x307

    .line 108
    aput v4, v0, v1

    const/16 v1, 0x309

    aput v4, v0, v1

    const/16 v1, 0x30b

    aput v4, v0, v1

    const/16 v1, 0x30d

    aput v4, v0, v1

    const/16 v1, 0x310

    .line 109
    aput v4, v0, v1

    const/16 v1, 0x311

    aput v6, v0, v1

    const/16 v1, 0x312

    aput v4, v0, v1

    const/16 v1, 0x313

    aput v6, v0, v1

    const/16 v1, 0x314

    aput v4, v0, v1

    const/16 v1, 0x315

    aput v6, v0, v1

    const/16 v1, 0x316

    aput v4, v0, v1

    const/16 v1, 0x319

    .line 110
    aput v4, v0, v1

    const/16 v1, 0x31b

    aput v4, v0, v1

    const/16 v1, 0x31d

    aput v4, v0, v1

    const/16 v1, 0x31f

    aput v4, v0, v1

    const/16 v1, 0x322

    .line 111
    aput v7, v0, v1

    const/16 v1, 0x324

    aput v7, v0, v1

    const/16 v1, 0x326

    aput v7, v0, v1

    const/16 v1, 0x328

    aput v7, v0, v1

    const/16 v1, 0x32b

    .line 112
    aput v4, v0, v1

    const/16 v1, 0x32d

    aput v4, v0, v1

    const/16 v1, 0x32f

    aput v4, v0, v1

    const/16 v1, 0x331

    aput v4, v0, v1

    const/16 v1, 0x334

    .line 113
    aput v4, v0, v1

    const/16 v1, 0x335

    aput v6, v0, v1

    const/16 v1, 0x336

    aput v4, v0, v1

    const/16 v1, 0x337

    aput v6, v0, v1

    const/16 v1, 0x338

    aput v4, v0, v1

    const/16 v1, 0x339

    aput v6, v0, v1

    const/16 v1, 0x33a

    aput v4, v0, v1

    const/16 v1, 0x33d

    .line 114
    aput v4, v0, v1

    const/16 v1, 0x33f

    aput v4, v0, v1

    const/16 v1, 0x341

    aput v4, v0, v1

    const/16 v1, 0x343

    aput v4, v0, v1

    const/16 v1, 0x346

    .line 115
    aput v7, v0, v1

    const/16 v1, 0x348

    aput v7, v0, v1

    const/16 v1, 0x34a

    aput v7, v0, v1

    const/16 v1, 0x34c

    aput v7, v0, v1

    const/16 v1, 0x34f

    .line 116
    aput v4, v0, v1

    const/16 v1, 0x351

    aput v4, v0, v1

    const/16 v1, 0x353

    aput v4, v0, v1

    const/16 v1, 0x355

    aput v4, v0, v1

    const/16 v1, 0x358

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x359

    aput v6, v0, v1

    const/16 v1, 0x35a

    aput v4, v0, v1

    const/16 v1, 0x35b

    aput v6, v0, v1

    const/16 v1, 0x35c

    aput v4, v0, v1

    const/16 v1, 0x35d

    aput v6, v0, v1

    const/16 v1, 0x35e

    aput v4, v0, v1

    const/16 v1, 0x361

    .line 118
    aput v4, v0, v1

    const/16 v1, 0x363

    aput v4, v0, v1

    const/16 v1, 0x365

    aput v4, v0, v1

    const/16 v1, 0x367

    aput v4, v0, v1

    const/16 v1, 0x36a

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x36b

    aput v3, v0, v1

    const/16 v1, 0x36c

    aput v3, v0, v1

    const/16 v1, 0x36e

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x370

    aput v3, v0, v1

    const/16 v1, 0x373

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x374

    aput v3, v0, v1

    const/16 v1, 0x375

    aput v3, v0, v1

    const/16 v1, 0x377

    aput v3, v0, v1

    const/16 v1, 0x378

    aput v3, v0, v1

    const/16 v1, 0x379

    aput v3, v0, v1

    const/16 v1, 0x37c

    .line 121
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x37d

    aput v4, v0, v1

    const/16 v1, 0x37e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x380

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x381

    aput v4, v0, v1

    const/16 v1, 0x382

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x386

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x38a

    aput v4, v0, v1

    const/16 v1, 0x38f

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x393

    aput v4, v0, v1

    const/16 v1, 0x398

    .line 124
    aput v7, v0, v1

    const/16 v1, 0x39c

    aput v7, v0, v1

    const/16 v1, 0x3a1

    .line 125
    aput v4, v0, v1

    const/16 v1, 0x3a5

    aput v4, v0, v1

    const/16 v1, 0x3aa

    .line 126
    aput v4, v0, v1

    const/16 v1, 0x3ae

    aput v4, v0, v1

    const/16 v1, 0x3b3

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x3b7

    aput v4, v0, v1

    const/16 v1, 0x3bc

    .line 128
    aput v7, v0, v1

    const/16 v1, 0x3c0

    aput v7, v0, v1

    const/16 v1, 0x3c5

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x3c9

    aput v4, v0, v1

    const/16 v1, 0x3ce

    .line 130
    aput v4, v0, v1

    const/16 v1, 0x3d2

    aput v4, v0, v1

    const/16 v1, 0x3d7

    .line 131
    aput v4, v0, v1

    const/16 v1, 0x3d8

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x3da

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3db

    aput v4, v0, v1

    const/16 v1, 0x3e0

    .line 132
    aput v3, v0, v1

    const/16 v1, 0x3e1

    aput v3, v0, v1

    const/16 v1, 0x3e3

    aput v3, v0, v1

    const/16 v1, 0x3e4

    aput v3, v0, v1

    const/16 v1, 0x3e9

    .line 133
    aput v3, v0, v1

    const/16 v1, 0x3ea

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3ec

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3f2

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x3f3

    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v3, v0, v1

    const/16 v1, 0x3f6

    aput v3, v0, v1

    const/16 v1, 0x3fb

    .line 135
    aput v4, v0, v1

    const/16 v1, 0x3fc

    aput v4, v0, v1

    const/16 v1, 0x3fe

    aput v4, v0, v1

    const/16 v1, 0x3ff

    aput v4, v0, v1

    const/16 v1, 0x404

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x405

    aput v3, v0, v1

    const/16 v1, 0x406

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x407

    aput v3, v0, v1

    const/16 v1, 0x408

    aput v3, v0, v1

    const/16 v1, 0x40d

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x40e

    aput v3, v0, v1

    const/16 v1, 0x40f

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x410

    aput v3, v0, v1

    const/16 v1, 0x411

    aput v3, v0, v1

    const/16 v1, 0x416

    .line 138
    aput v4, v0, v1

    const/16 v1, 0x417

    aput v4, v0, v1

    const/16 v1, 0x419

    aput v4, v0, v1

    const/16 v1, 0x41a

    aput v4, v0, v1

    const/16 v1, 0x41f

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x420

    aput v3, v0, v1

    const/16 v1, 0x421

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x422

    aput v3, v0, v1

    const/16 v1, 0x423

    aput v3, v0, v1

    const/16 v1, 0x428

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x429

    aput v3, v0, v1

    const/16 v1, 0x42a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v3, v0, v1

    const/16 v1, 0x431

    .line 141
    aput v4, v0, v1

    const/16 v1, 0x432

    aput v4, v0, v1

    const/16 v1, 0x434

    aput v4, v0, v1

    const/16 v1, 0x435

    aput v4, v0, v1

    const/16 v1, 0x43a

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x43b

    aput v3, v0, v1

    const/16 v1, 0x43c

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x43d

    aput v3, v0, v1

    const/16 v1, 0x43e

    aput v3, v0, v1

    const/16 v1, 0x443

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x444

    aput v3, v0, v1

    const/16 v1, 0x445

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x446

    aput v3, v0, v1

    const/16 v1, 0x447

    aput v3, v0, v1

    const/16 v1, 0x44c

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x44d

    aput v4, v0, v1

    const/16 v1, 0x44f

    aput v4, v0, v1

    const/16 v1, 0x450

    aput v4, v0, v1

    const/16 v1, 0x455

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    const/16 v1, 0x457

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x458

    aput v3, v0, v1

    const/16 v1, 0x459

    aput v3, v0, v1

    const/16 v1, 0x45e

    .line 146
    aput v3, v0, v1

    const/16 v1, 0x45f

    aput v3, v0, v1

    const/16 v1, 0x460

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x461

    aput v3, v0, v1

    const/16 v1, 0x462

    aput v3, v0, v1

    const/16 v1, 0x467

    .line 147
    aput v4, v0, v1

    const/16 v1, 0x468

    aput v4, v0, v1

    const/16 v1, 0x46a

    aput v4, v0, v1

    const/16 v1, 0x46b

    aput v4, v0, v1

    const/16 v1, 0x470

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x471

    aput v3, v0, v1

    const/16 v1, 0x472

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x473

    aput v3, v0, v1

    const/16 v1, 0x474

    aput v3, v0, v1

    const/16 v1, 0x479

    .line 149
    aput v3, v0, v1

    const/16 v1, 0x47a

    aput v3, v0, v1

    const/16 v1, 0x47b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x47c

    aput v3, v0, v1

    const/16 v1, 0x47d

    aput v3, v0, v1

    const/16 v1, 0x482

    .line 150
    aput v4, v0, v1

    const/16 v1, 0x483

    aput v4, v0, v1

    const/16 v1, 0x485

    aput v4, v0, v1

    const/16 v1, 0x486

    aput v4, v0, v1

    const/16 v1, 0x48b

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x48c

    aput v3, v0, v1

    const/16 v1, 0x48d

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x48e

    aput v3, v0, v1

    const/16 v1, 0x48f

    aput v3, v0, v1

    const/16 v1, 0x494

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x495

    aput v3, v0, v1

    const/16 v1, 0x496

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x497

    aput v3, v0, v1

    const/16 v1, 0x498

    aput v3, v0, v1

    const/16 v1, 0x49d

    .line 153
    aput v4, v0, v1

    const/16 v1, 0x49e

    aput v4, v0, v1

    const/16 v1, 0x4a0

    aput v4, v0, v1

    const/16 v1, 0x4a1

    aput v4, v0, v1

    const/16 v1, 0x4a6

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x4a7

    aput v3, v0, v1

    const/16 v1, 0x4a8

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4a9

    aput v3, v0, v1

    const/16 v1, 0x4aa

    aput v3, v0, v1

    const/16 v1, 0x4af

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x4b0

    aput v3, v0, v1

    const/16 v1, 0x4b1

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4b2

    aput v3, v0, v1

    const/16 v1, 0x4b3

    aput v3, v0, v1

    const/16 v1, 0x4b8

    .line 156
    aput v4, v0, v1

    const/16 v1, 0x4b9

    aput v4, v0, v1

    const/16 v1, 0x4bb

    aput v4, v0, v1

    const/16 v1, 0x4bc

    aput v4, v0, v1

    const/16 v1, 0x4c1

    .line 157
    aput v3, v0, v1

    const/16 v1, 0x4c2

    aput v3, v0, v1

    const/16 v1, 0x4c3

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4c4

    aput v3, v0, v1

    const/16 v1, 0x4c5

    aput v3, v0, v1

    const/16 v1, 0x4ca

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x4cb

    aput v3, v0, v1

    const/16 v1, 0x4cc

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4cd

    aput v3, v0, v1

    const/16 v1, 0x4ce

    aput v3, v0, v1

    const/16 v1, 0x4d3

    .line 159
    aput v4, v0, v1

    const/16 v1, 0x4d4

    aput v4, v0, v1

    const/16 v1, 0x4d6

    aput v4, v0, v1

    const/16 v1, 0x4d7

    aput v4, v0, v1

    const/16 v1, 0x4dc

    .line 160
    aput v3, v0, v1

    const/16 v1, 0x4dd

    aput v3, v0, v1

    const/16 v1, 0x4de

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4df

    aput v3, v0, v1

    const/16 v1, 0x4e0

    aput v3, v0, v1

    const/16 v1, 0x4e5

    .line 161
    aput v3, v0, v1

    const/16 v1, 0x4e6

    aput v3, v0, v1

    const/16 v1, 0x4e7

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4e8

    aput v3, v0, v1

    const/16 v1, 0x4e9

    aput v3, v0, v1

    const/16 v1, 0x4ee

    .line 162
    aput v4, v0, v1

    const/16 v1, 0x4ef

    aput v4, v0, v1

    const/16 v1, 0x4f1

    aput v4, v0, v1

    const/16 v1, 0x4f2

    aput v4, v0, v1

    const/16 v1, 0x4f7

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x4f8

    aput v3, v0, v1

    const/16 v1, 0x4f9

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4fa

    aput v3, v0, v1

    const/16 v1, 0x4fb

    aput v3, v0, v1

    const/16 v1, 0x500

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x501

    aput v3, v0, v1

    const/16 v1, 0x502

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x503

    aput v3, v0, v1

    const/16 v1, 0x504

    aput v3, v0, v1

    const/16 v1, 0x509

    .line 165
    aput v5, v0, v1

    const/16 v1, 0x50a

    aput v3, v0, v1

    const/16 v1, 0x50c

    aput v3, v0, v1

    const/16 v1, 0x50d

    aput v5, v0, v1

    const/16 v1, 0x512

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x513

    aput v5, v0, v1

    const/16 v1, 0x514

    aput v6, v0, v1

    const/16 v1, 0x515

    aput v5, v0, v1

    const/16 v1, 0x516

    aput v3, v0, v1

    const/16 v1, 0x51b

    .line 167
    aput v5, v0, v1

    const/16 v1, 0x51c

    aput v3, v0, v1

    const/16 v1, 0x51e

    aput v3, v0, v1

    const/16 v1, 0x51f

    aput v5, v0, v1

    const/16 v1, 0x524

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x525

    aput v5, v0, v1

    const/16 v1, 0x526

    aput v6, v0, v1

    const/16 v1, 0x527

    aput v5, v0, v1

    const/16 v1, 0x528

    aput v3, v0, v1

    const/16 v1, 0x52d

    .line 169
    aput v5, v0, v1

    const/16 v1, 0x52e

    aput v3, v0, v1

    const/16 v1, 0x530

    aput v3, v0, v1

    const/16 v1, 0x531

    aput v5, v0, v1

    const/16 v1, 0x536

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x537

    aput v5, v0, v1

    const/16 v1, 0x538

    aput v6, v0, v1

    const/16 v1, 0x539

    aput v5, v0, v1

    const/16 v1, 0x53a

    aput v3, v0, v1

    const/16 v1, 0x53f

    .line 171
    aput v5, v0, v1

    const/16 v1, 0x540

    aput v3, v0, v1

    const/16 v1, 0x542

    aput v3, v0, v1

    const/16 v1, 0x543

    aput v5, v0, v1

    const/16 v1, 0x548

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x549

    aput v5, v0, v1

    const/16 v1, 0x54a

    aput v6, v0, v1

    const/16 v1, 0x54b

    aput v5, v0, v1

    const/16 v1, 0x54c

    aput v3, v0, v1

    const/16 v1, 0x551

    .line 173
    aput v5, v0, v1

    const/16 v1, 0x552

    aput v3, v0, v1

    const/16 v1, 0x554

    aput v3, v0, v1

    const/16 v1, 0x555

    aput v5, v0, v1

    const/16 v1, 0x55a

    .line 174
    aput v3, v0, v1

    const/16 v1, 0x55b

    aput v5, v0, v1

    const/16 v1, 0x55c

    aput v6, v0, v1

    const/16 v1, 0x55d

    aput v5, v0, v1

    const/16 v1, 0x55e

    aput v3, v0, v1

    const/16 v1, 0x563

    .line 175
    aput v5, v0, v1

    const/16 v1, 0x564

    aput v3, v0, v1

    const/16 v1, 0x566

    aput v3, v0, v1

    const/16 v1, 0x567

    aput v5, v0, v1

    const/16 v1, 0x56c

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x56d

    aput v5, v0, v1

    const/16 v1, 0x56e

    aput v6, v0, v1

    const/16 v1, 0x56f

    aput v5, v0, v1

    const/16 v1, 0x570

    aput v3, v0, v1

    const/16 v1, 0x575

    .line 177
    aput v5, v0, v1

    const/16 v1, 0x576

    aput v3, v0, v1

    const/16 v1, 0x578

    aput v3, v0, v1

    const/16 v1, 0x579

    aput v5, v0, v1

    const/16 v1, 0x57e

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x57f

    aput v5, v0, v1

    const/16 v1, 0x580

    aput v6, v0, v1

    const/16 v1, 0x581

    aput v5, v0, v1

    const/16 v1, 0x582

    aput v3, v0, v1

    const/16 v1, 0x587

    .line 179
    aput v5, v0, v1

    const/16 v1, 0x588

    aput v3, v0, v1

    const/16 v1, 0x58a

    aput v3, v0, v1

    const/16 v1, 0x58b

    aput v5, v0, v1

    const/16 v1, 0x590

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x591

    aput v5, v0, v1

    const/16 v1, 0x592

    aput v6, v0, v1

    const/16 v1, 0x593

    aput v5, v0, v1

    const/16 v1, 0x594

    aput v3, v0, v1

    const/16 v1, 0x599

    .line 181
    aput v5, v0, v1

    const/16 v1, 0x59a

    aput v3, v0, v1

    const/16 v1, 0x59c

    aput v3, v0, v1

    const/16 v1, 0x59d

    aput v5, v0, v1

    const/16 v1, 0x5a2

    .line 182
    aput v3, v0, v1

    const/16 v1, 0x5a3

    aput v5, v0, v1

    const/16 v1, 0x5a4

    aput v6, v0, v1

    const/16 v1, 0x5a5

    aput v5, v0, v1

    const/16 v1, 0x5a6

    aput v3, v0, v1

    const/16 v1, 0x5ab

    .line 183
    aput v5, v0, v1

    const/16 v1, 0x5ac

    aput v3, v0, v1

    const/16 v1, 0x5ae

    aput v3, v0, v1

    const/16 v1, 0x5af

    aput v5, v0, v1

    const/16 v1, 0x5b4

    .line 184
    aput v3, v0, v1

    const/16 v1, 0x5b5

    aput v5, v0, v1

    const/16 v1, 0x5b6

    aput v6, v0, v1

    const/16 v1, 0x5b7

    aput v5, v0, v1

    const/16 v1, 0x5b8

    aput v3, v0, v1

    const/16 v1, 0x5bc

    .line 185
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5bd

    aput v5, v0, v1

    const/16 v1, 0x5be

    aput v3, v0, v1

    const/16 v1, 0x5c0

    aput v3, v0, v1

    const/16 v1, 0x5c1

    aput v5, v0, v1

    const/16 v1, 0x5c2

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x5c5

    .line 186
    aput v6, v0, v1

    const/16 v1, 0x5c6

    aput v3, v0, v1

    const/16 v1, 0x5c7

    aput v5, v0, v1

    const/16 v1, 0x5c8

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x5c9

    aput v5, v0, v1

    const/16 v1, 0x5ca

    aput v3, v0, v1

    const/16 v1, 0x5cb

    aput v6, v0, v1

    const/16 v1, 0x5cf

    .line 187
    aput v5, v0, v1

    const/16 v1, 0x5d0

    aput v3, v0, v1

    const/16 v1, 0x5d2

    aput v3, v0, v1

    const/16 v1, 0x5d3

    aput v5, v0, v1

    const/16 v1, 0x5d7

    .line 188
    aput v6, v0, v1

    const/16 v1, 0x5d8

    aput v3, v0, v1

    const/16 v1, 0x5d9

    aput v5, v0, v1

    const/16 v1, 0x5da

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x5db

    aput v5, v0, v1

    const/16 v1, 0x5dc

    aput v3, v0, v1

    const/16 v1, 0x5dd

    aput v6, v0, v1

    const/16 v1, 0x5e1

    .line 189
    aput v5, v0, v1

    const/16 v1, 0x5e2

    aput v3, v0, v1

    const/16 v1, 0x5e4

    aput v3, v0, v1

    const/16 v1, 0x5e5

    aput v5, v0, v1

    const/16 v1, 0x5e9

    .line 190
    aput v6, v0, v1

    const/16 v1, 0x5ea

    aput v3, v0, v1

    const/16 v1, 0x5eb

    aput v5, v0, v1

    const/16 v1, 0x5ec

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x5ed

    aput v5, v0, v1

    const/16 v1, 0x5ee

    aput v3, v0, v1

    const/16 v1, 0x5ef

    aput v6, v0, v1

    const/16 v1, 0x5f3

    .line 191
    aput v5, v0, v1

    const/16 v1, 0x5f4

    aput v3, v0, v1

    const/16 v1, 0x5f6

    aput v3, v0, v1

    const/16 v1, 0x5f7

    aput v5, v0, v1

    const/16 v1, 0x5fb

    .line 192
    aput v6, v0, v1

    const/16 v1, 0x5fc

    aput v3, v0, v1

    const/16 v1, 0x5fd

    aput v5, v0, v1

    const/16 v1, 0x5fe

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x5ff

    aput v5, v0, v1

    const/16 v1, 0x600

    aput v3, v0, v1

    const/16 v1, 0x601

    aput v6, v0, v1

    const/16 v1, 0x605

    .line 193
    aput v5, v0, v1

    const/16 v1, 0x606

    aput v3, v0, v1

    const/16 v1, 0x608

    aput v3, v0, v1

    const/16 v1, 0x609

    aput v5, v0, v1

    const/16 v1, 0x60d

    .line 194
    aput v6, v0, v1

    const/16 v1, 0x60e

    aput v3, v0, v1

    const/16 v1, 0x60f

    aput v5, v0, v1

    const/16 v1, 0x610

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x611

    aput v5, v0, v1

    const/16 v1, 0x612

    aput v3, v0, v1

    const/16 v1, 0x613

    aput v6, v0, v1

    const/16 v1, 0x617

    .line 195
    aput v5, v0, v1

    const/16 v1, 0x618

    aput v3, v0, v1

    const/16 v1, 0x61a

    aput v3, v0, v1

    const/16 v1, 0x61b

    aput v5, v0, v1

    const/16 v1, 0x61f

    .line 196
    aput v6, v0, v1

    const/16 v1, 0x620

    aput v3, v0, v1

    const/16 v1, 0x621

    aput v5, v0, v1

    const/16 v1, 0x622

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x623

    aput v5, v0, v1

    const/16 v1, 0x624

    aput v3, v0, v1

    const/16 v1, 0x625

    aput v6, v0, v1

    const/16 v1, 0x629

    .line 197
    aput v5, v0, v1

    const/16 v1, 0x62a

    aput v3, v0, v1

    const/16 v1, 0x62c

    aput v3, v0, v1

    const/16 v1, 0x62d

    aput v5, v0, v1

    const/16 v1, 0x631

    .line 198
    aput v6, v0, v1

    const/16 v1, 0x632

    aput v3, v0, v1

    const/16 v1, 0x633

    aput v5, v0, v1

    const/16 v1, 0x634

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x635

    aput v5, v0, v1

    const/16 v1, 0x636

    aput v3, v0, v1

    const/16 v1, 0x637

    aput v6, v0, v1

    const/16 v1, 0x63b

    .line 199
    aput v5, v0, v1

    const/16 v1, 0x63c

    aput v3, v0, v1

    const/16 v1, 0x63e

    aput v3, v0, v1

    const/16 v1, 0x63f

    aput v5, v0, v1

    const/16 v1, 0x643

    .line 200
    aput v6, v0, v1

    const/16 v1, 0x644

    aput v3, v0, v1

    const/16 v1, 0x645

    aput v5, v0, v1

    const/16 v1, 0x646

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x647

    aput v5, v0, v1

    const/16 v1, 0x648

    aput v3, v0, v1

    const/16 v1, 0x649

    aput v6, v0, v1

    const/16 v1, 0x64d

    .line 201
    aput v5, v0, v1

    const/16 v1, 0x64e

    aput v3, v0, v1

    const/16 v1, 0x650

    aput v3, v0, v1

    const/16 v1, 0x651

    aput v5, v0, v1

    const/16 v1, 0x655

    .line 202
    aput v6, v0, v1

    const/16 v1, 0x656

    aput v3, v0, v1

    const/16 v1, 0x657

    aput v3, v0, v1

    const/16 v1, 0x658

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x659

    aput v5, v0, v1

    const/16 v1, 0x65a

    aput v3, v0, v1

    const/16 v1, 0x65b

    aput v6, v0, v1

    const/16 v1, 0x65f

    .line 203
    aput v5, v0, v1

    const/16 v1, 0x660

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x662

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x663

    aput v5, v0, v1

    const/16 v1, 0x667

    .line 204
    aput v6, v0, v1

    const/16 v1, 0x668

    aput v3, v0, v1

    const/16 v1, 0x669

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x66a

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x66b

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x66c

    aput v3, v0, v1

    const/16 v1, 0x66d

    aput v6, v0, v1

    const/16 v1, 0x671

    .line 205
    aput v5, v0, v1

    const/16 v1, 0x675

    aput v5, v0, v1

    const/16 v1, 0x679

    .line 206
    aput v6, v0, v1

    const/16 v1, 0x67a

    aput v3, v0, v1

    const/16 v1, 0x67b

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x67d

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x67e

    aput v3, v0, v1

    const/16 v1, 0x67f

    aput v6, v0, v1

    const/16 v1, 0x683

    .line 207
    aput v5, v0, v1

    const/16 v1, 0x685

    aput v3, v0, v1

    const/16 v1, 0x687

    aput v5, v0, v1

    const/16 v1, 0x68b

    .line 208
    aput v6, v0, v1

    const/16 v1, 0x68c

    aput v3, v0, v1

    const/16 v1, 0x68d

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x68f

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x690

    aput v3, v0, v1

    const/16 v1, 0x691

    aput v6, v0, v1

    const/16 v1, 0x695

    .line 209
    aput v5, v0, v1

    const/16 v1, 0x699

    aput v5, v0, v1

    const/16 v1, 0x69d

    .line 210
    aput v6, v0, v1

    const/16 v1, 0x69e

    aput v3, v0, v1

    const/16 v1, 0x69f

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6a1

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6a2

    aput v3, v0, v1

    const/16 v1, 0x6a3

    aput v6, v0, v1

    const/16 v1, 0x6a7

    .line 211
    aput v5, v0, v1

    const/16 v1, 0x6a9

    aput v3, v0, v1

    const/16 v1, 0x6ab

    aput v5, v0, v1

    const/16 v1, 0x6af

    .line 212
    aput v6, v0, v1

    const/16 v1, 0x6b0

    aput v3, v0, v1

    const/16 v1, 0x6b1

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6b3

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6b4

    aput v3, v0, v1

    const/16 v1, 0x6b5

    aput v6, v0, v1

    const/16 v1, 0x6b9

    .line 213
    aput v5, v0, v1

    const/16 v1, 0x6bd

    aput v5, v0, v1

    const/16 v1, 0x6c1

    .line 214
    aput v6, v0, v1

    const/16 v1, 0x6c2

    aput v3, v0, v1

    const/16 v1, 0x6c3

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6c5

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6c6

    aput v3, v0, v1

    const/16 v1, 0x6c7

    aput v6, v0, v1

    const/16 v1, 0x6cb

    .line 215
    aput v5, v0, v1

    const/16 v1, 0x6cd

    aput v3, v0, v1

    const/16 v1, 0x6cf

    aput v5, v0, v1

    const/16 v1, 0x6d3

    .line 216
    aput v6, v0, v1

    const/16 v1, 0x6d4

    aput v3, v0, v1

    const/16 v1, 0x6d5

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6d7

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6d8

    aput v3, v0, v1

    const/16 v1, 0x6d9

    aput v6, v0, v1

    const/16 v1, 0x6dd

    .line 217
    aput v5, v0, v1

    const/16 v1, 0x6e1

    aput v5, v0, v1

    const/16 v1, 0x6e5

    .line 218
    aput v6, v0, v1

    const/16 v1, 0x6e6

    aput v3, v0, v1

    const/16 v1, 0x6e7

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6e9

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6ea

    aput v3, v0, v1

    const/16 v1, 0x6eb

    aput v6, v0, v1

    const/16 v1, 0x6ef

    .line 219
    aput v5, v0, v1

    const/16 v1, 0x6f1

    aput v3, v0, v1

    const/16 v1, 0x6f3

    aput v5, v0, v1

    const/16 v1, 0x6f7

    .line 220
    aput v6, v0, v1

    const/16 v1, 0x6f8

    aput v3, v0, v1

    const/16 v1, 0x6f9

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6fb

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x6fc

    aput v3, v0, v1

    const/16 v1, 0x6fd

    aput v6, v0, v1

    const/16 v1, 0x701

    .line 221
    aput v5, v0, v1

    const/16 v1, 0x705

    aput v5, v0, v1

    const/16 v1, 0x709

    .line 222
    aput v6, v0, v1

    const/16 v1, 0x70a

    aput v3, v0, v1

    const/16 v1, 0x70b

    aput v6, v0, v1

    const/16 v1, 0x70c

    const v2, 0x10a0100

    aput v2, v0, v1

    const/16 v1, 0x70d

    aput v6, v0, v1

    const/16 v1, 0x70e

    aput v3, v0, v1

    const/16 v1, 0x70f

    aput v6, v0, v1

    const/16 v1, 0x712

    .line 223
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x713

    aput v4, v0, v1

    const/16 v1, 0x714

    aput v3, v0, v1

    const/16 v1, 0x715

    aput v3, v0, v1

    const/16 v1, 0x716

    aput v3, v0, v1

    const/16 v1, 0x717

    aput v4, v0, v1

    const/16 v1, 0x718

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x71c

    .line 224
    aput v3, v0, v1

    const/16 v1, 0x71d

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x71e

    aput v3, v0, v1

    const/16 v1, 0x71f

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x720

    aput v3, v0, v1

    const/16 v1, 0x725

    .line 225
    aput v4, v0, v1

    const/16 v1, 0x726

    aput v3, v0, v1

    const/16 v1, 0x727

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x728

    aput v3, v0, v1

    const/16 v1, 0x729

    aput v4, v0, v1

    const/16 v1, 0x72e

    .line 226
    aput v3, v0, v1

    const/16 v1, 0x72f

    aput v4, v0, v1

    const/16 v1, 0x730

    aput v3, v0, v1

    const/16 v1, 0x731

    aput v4, v0, v1

    const/16 v1, 0x732

    aput v3, v0, v1

    const/16 v1, 0x737

    .line 227
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x738

    aput v3, v0, v1

    const/16 v1, 0x739

    aput v4, v0, v1

    const/16 v1, 0x73a

    aput v3, v0, v1

    const/16 v1, 0x73b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x741

    .line 228
    aput v4, v0, v1

    const/16 v1, 0x742

    aput v3, v0, v1

    const/16 v1, 0x743

    aput v4, v0, v1

    const/16 v1, 0x74a

    .line 229
    aput v3, v0, v1

    const/16 v1, 0x74b

    aput v4, v0, v1

    const/16 v1, 0x74c

    aput v3, v0, v1

    const/16 v1, 0x753

    .line 230
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x754

    aput v3, v0, v1

    const/16 v1, 0x755

    const v2, 0xa000800

    aput v2, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mTiles:[I

    .line 235
    const/16 v0, 0x7f

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 237
    const v2, 0x40010207

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 238
    const v2, 0x32010607

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 239
    const v2, 0x1201021d

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 240
    const v2, 0x1201061d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 241
    const v2, 0x22010330

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 242
    const v2, 0x22010530

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 243
    const v2, 0x22010235

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 244
    const v2, 0x22010635

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 245
    const v2, 0x32010342

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 246
    const v2, 0x32010542

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 247
    const v2, 0x40010346

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 248
    const v2, 0x40010546

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 249
    const v2, 0x3201035f

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 250
    const v2, 0x3201055f

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 251
    const v2, 0x12010269

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, 0x12010669

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 253
    const v2, 0x12010298

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const v2, 0x32010698

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 255
    const v2, 0x1201029d

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 256
    const v2, 0x3201069d

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 257
    const v2, 0x120103a4

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 258
    const v2, 0x120105a4

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 259
    const v2, 0x400104ab

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 262
    const v2, 0x3010302

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 263
    const v2, 0x3010502

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 264
    const v2, 0x3010304

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 265
    const v2, 0x3010504

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 266
    const v2, 0x3010408

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 267
    const v2, 0x302010b

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 268
    const v2, 0x302070b

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 269
    const v2, 0x301040c

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 270
    const v2, 0x302010f

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 271
    const v2, 0x302070f

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 272
    const v2, 0x3010410

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 273
    const v2, 0x3020113

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 274
    const v2, 0x3020713

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 275
    const v2, 0x3010414

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 276
    const v2, 0x3020117

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 277
    const v2, 0x3020717

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 278
    const v2, 0x3010418

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 279
    const v2, 0x302011b

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 280
    const v2, 0x302071b

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 281
    const v2, 0x302011f

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 282
    const v2, 0x302071f

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 283
    const v2, 0x3020123

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 284
    const v2, 0x3020723

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 285
    const v2, 0x3020127

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 286
    const v2, 0x3020727

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 287
    const v2, 0x302012b

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 288
    const v2, 0x302072b

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 289
    const v2, 0x302042f

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 290
    const v2, 0x3020433

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 291
    const v2, 0x3020437

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 292
    const v2, 0x302043b

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 293
    const v2, 0x302043f

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 294
    const v2, 0x3010244

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 295
    const v2, 0x3010644

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 296
    const v2, 0x3010247

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 297
    const v2, 0x3010647

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 298
    const v2, 0x301024a

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 299
    const v2, 0x301064a

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 300
    const v2, 0x301024d

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 301
    const v2, 0x301064d

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 302
    const v2, 0x3010250

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 303
    const v2, 0x3010650

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 304
    const v2, 0x3010253

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 305
    const v2, 0x3010653

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 306
    const v2, 0x3010256

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 307
    const v2, 0x3010656

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 308
    const v2, 0x3010259

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 309
    const v2, 0x3010659

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 310
    const v2, 0x301025c

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 311
    const v2, 0x301065c

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 312
    const v2, 0x301025f

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 313
    const v2, 0x301065f

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 314
    const v2, 0x3010364

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 315
    const v2, 0x3010564

    aput v2, v0, v1

    const/16 v1, 0x4d

    .line 316
    const v2, 0x301016f

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 317
    const v2, 0x301036f

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 318
    const v2, 0x301056f

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 319
    const v2, 0x301076f

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 320
    const v2, 0x3010270

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 321
    const v2, 0x3010670

    aput v2, v0, v1

    const/16 v1, 0x53

    .line 322
    const v2, 0x3020272

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 323
    const v2, 0x3020672

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 324
    const v2, 0x3020276

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 325
    const v2, 0x3020676

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 326
    const v2, 0x302027a

    aput v2, v0, v1

    const/16 v1, 0x58

    .line 327
    const v2, 0x302067a

    aput v2, v0, v1

    const/16 v1, 0x59

    .line 328
    const v2, 0x302027e

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 329
    const v2, 0x302067e

    aput v2, v0, v1

    const/16 v1, 0x5b

    .line 330
    const v2, 0x3020282

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 331
    const v2, 0x3020682

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 332
    const v2, 0x3020286

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 333
    const v2, 0x3020686

    aput v2, v0, v1

    const/16 v1, 0x5f

    .line 334
    const v2, 0x302028a

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 335
    const v2, 0x302068a

    aput v2, v0, v1

    const/16 v1, 0x61

    .line 336
    const v2, 0x302028e

    aput v2, v0, v1

    const/16 v1, 0x62

    .line 337
    const v2, 0x302068e

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 338
    const v2, 0x3020292

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 339
    const v2, 0x3020692

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 340
    const v2, 0x3020296

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 341
    const v2, 0x3020696

    aput v2, v0, v1

    const/16 v1, 0x67

    .line 342
    const v2, 0x3010199

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 343
    const v2, 0x3010399

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 344
    const v2, 0x3010599

    aput v2, v0, v1

    const/16 v1, 0x6a

    .line 345
    const v2, 0x3010799

    aput v2, v0, v1

    const/16 v1, 0x6b

    .line 346
    const v2, 0x301029f

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 347
    const v2, 0x301069f

    aput v2, v0, v1

    const/16 v1, 0x6d

    .line 348
    const v2, 0x30103a6

    aput v2, v0, v1

    const/16 v1, 0x6e

    .line 349
    const v2, 0x30105a6

    aput v2, v0, v1

    const/16 v1, 0x6f

    .line 350
    const v2, 0x30101a9

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 351
    const v2, 0x30107a9

    aput v2, v0, v1

    const/16 v1, 0x71

    .line 352
    const v2, 0x30101ad

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 353
    const v2, 0x30107ad

    aput v2, v0, v1

    const/16 v1, 0x73

    .line 354
    const v2, 0x30101b1

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 355
    const v2, 0x30107b1

    aput v2, v0, v1

    const/16 v1, 0x75

    .line 356
    const v2, 0x30101b5

    aput v2, v0, v1

    const/16 v1, 0x76

    .line 357
    const v2, 0x30107b5

    aput v2, v0, v1

    const/16 v1, 0x77

    .line 358
    const v2, 0x30101b9

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 359
    const v2, 0x30107b9

    aput v2, v0, v1

    const/16 v1, 0x79

    .line 360
    const v2, 0x30103bd

    aput v2, v0, v1

    const/16 v1, 0x7a

    .line 361
    const v2, 0x30105bd

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 362
    const v2, 0x30103c1

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 363
    const v2, 0x30105c1

    aput v2, v0, v1

    const/16 v1, 0x7d

    .line 364
    const v2, 0x630104c9

    aput v2, v0, v1

    .line 235
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_06;->mObjects:[I

    .line 367
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
