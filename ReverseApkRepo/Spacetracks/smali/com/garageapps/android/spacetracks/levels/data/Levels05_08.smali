.class public Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels05_08.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xc0a0200

    const v6, 0x1000d00

    const v5, 0x1000c00

    const v4, 0x10a0200

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0xb

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mSizeX:I

    .line 11
    const/16 v0, 0x104

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mNebulaId:I

    .line 13
    const/16 v0, 0x2f

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mFogColor:[F

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mRenderMode:I

    .line 17
    const/16 v0, 0x320

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mMaxTime:I

    .line 21
    const/16 v0, 0xb2c

    new-array v0, v0, [I

    const/16 v1, 0x71

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x87

    .line 34
    aput v6, v0, v1

    const/16 v1, 0x88

    aput v6, v0, v1

    const/16 v1, 0x8a

    aput v6, v0, v1

    const/16 v1, 0x8b

    aput v6, v0, v1

    const/16 v1, 0x92

    .line 35
    aput v6, v0, v1

    const/16 v1, 0x93

    aput v6, v0, v1

    const/16 v1, 0x95

    aput v6, v0, v1

    const/16 v1, 0x96

    aput v6, v0, v1

    const/16 v1, 0x9d

    .line 36
    aput v6, v0, v1

    const/16 v1, 0x9e

    aput v6, v0, v1

    const/16 v1, 0xa0

    aput v6, v0, v1

    const/16 v1, 0xa1

    aput v6, v0, v1

    const/16 v1, 0xa8

    .line 37
    aput v6, v0, v1

    const/16 v1, 0xa9

    aput v6, v0, v1

    const/16 v1, 0xab

    aput v6, v0, v1

    const/16 v1, 0xac

    aput v6, v0, v1

    const/16 v1, 0xb3

    .line 38
    aput v6, v0, v1

    const/16 v1, 0xb4

    aput v6, v0, v1

    const/16 v1, 0xb6

    aput v6, v0, v1

    const/16 v1, 0xb7

    aput v6, v0, v1

    const/16 v1, 0xbe

    .line 39
    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc9

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcc

    aput v3, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xd4

    .line 41
    aput v6, v0, v1

    const/16 v1, 0xd5

    aput v6, v0, v1

    const/16 v1, 0xd7

    aput v6, v0, v1

    const/16 v1, 0xd8

    aput v6, v0, v1

    const/16 v1, 0xdf

    .line 42
    aput v6, v0, v1

    const/16 v1, 0xe0

    aput v6, v0, v1

    const/16 v1, 0xe2

    aput v6, v0, v1

    const/16 v1, 0xe3

    aput v6, v0, v1

    const/16 v1, 0xea

    .line 43
    aput v3, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xed

    aput v3, v0, v1

    const/16 v1, 0xee

    aput v3, v0, v1

    const/16 v1, 0xf5

    .line 44
    aput v3, v0, v1

    const/16 v1, 0xf6

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0x100

    .line 45
    aput v6, v0, v1

    const/16 v1, 0x101

    aput v6, v0, v1

    const/16 v1, 0x103

    aput v6, v0, v1

    const/16 v1, 0x104

    aput v6, v0, v1

    const/16 v1, 0x10b

    .line 46
    aput v6, v0, v1

    const/16 v1, 0x10c

    aput v6, v0, v1

    const/16 v1, 0x10e

    aput v6, v0, v1

    const/16 v1, 0x10f

    aput v6, v0, v1

    const/16 v1, 0x116

    .line 47
    aput v3, v0, v1

    const/16 v1, 0x117

    aput v3, v0, v1

    const/16 v1, 0x119

    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x121

    .line 48
    aput v3, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x125

    aput v3, v0, v1

    const/16 v1, 0x12c

    .line 49
    aput v6, v0, v1

    const/16 v1, 0x12d

    aput v6, v0, v1

    const/16 v1, 0x12f

    aput v6, v0, v1

    const/16 v1, 0x130

    aput v6, v0, v1

    const/16 v1, 0x137

    .line 50
    aput v3, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x13a

    aput v3, v0, v1

    const/16 v1, 0x13b

    aput v3, v0, v1

    const/16 v1, 0x142

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x143

    aput v3, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x14d

    .line 52
    aput v6, v0, v1

    const/16 v1, 0x14e

    aput v6, v0, v1

    const/16 v1, 0x150

    aput v6, v0, v1

    const/16 v1, 0x151

    aput v6, v0, v1

    const/16 v1, 0x158

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v3, v0, v1

    const/16 v1, 0x163

    .line 54
    aput v3, v0, v1

    const/16 v1, 0x164

    aput v3, v0, v1

    const/16 v1, 0x166

    aput v3, v0, v1

    const/16 v1, 0x167

    aput v3, v0, v1

    const/16 v1, 0x16e

    .line 55
    aput v6, v0, v1

    const/16 v1, 0x16f

    aput v6, v0, v1

    const/16 v1, 0x171

    aput v6, v0, v1

    const/16 v1, 0x172

    aput v6, v0, v1

    const/16 v1, 0x179

    .line 56
    aput v3, v0, v1

    const/16 v1, 0x17a

    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 57
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x186

    aput v4, v0, v1

    const/16 v1, 0x187

    aput v3, v0, v1

    const/16 v1, 0x188

    aput v3, v0, v1

    const/16 v1, 0x189

    aput v7, v0, v1

    const/16 v1, 0x18f

    .line 58
    aput v5, v0, v1

    const/16 v1, 0x190

    aput v5, v0, v1

    const/16 v1, 0x192

    aput v5, v0, v1

    const/16 v1, 0x193

    aput v5, v0, v1

    const/16 v1, 0x199

    .line 59
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    const/16 v1, 0x19c

    aput v4, v0, v1

    const/16 v1, 0x19d

    aput v3, v0, v1

    const/16 v1, 0x19e

    aput v3, v0, v1

    const/16 v1, 0x19f

    aput v7, v0, v1

    const/16 v1, 0x1a4

    .line 60
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1a5

    aput v3, v0, v1

    const/16 v1, 0x1a6

    aput v3, v0, v1

    const/16 v1, 0x1a7

    aput v4, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1a9

    aput v3, v0, v1

    const/16 v1, 0x1aa

    aput v7, v0, v1

    const/16 v1, 0x1b0

    .line 61
    aput v5, v0, v1

    const/16 v1, 0x1b1

    aput v5, v0, v1

    const/16 v1, 0x1b3

    aput v5, v0, v1

    const/16 v1, 0x1b4

    aput v5, v0, v1

    const/16 v1, 0x1ba

    .line 62
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v4, v0, v1

    const/16 v1, 0x1be

    aput v3, v0, v1

    const/16 v1, 0x1bf

    aput v3, v0, v1

    const/16 v1, 0x1c0

    aput v7, v0, v1

    const/16 v1, 0x1c5

    .line 63
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1c6

    aput v3, v0, v1

    const/16 v1, 0x1c7

    aput v3, v0, v1

    const/16 v1, 0x1c8

    aput v4, v0, v1

    const/16 v1, 0x1c9

    aput v3, v0, v1

    const/16 v1, 0x1ca

    aput v3, v0, v1

    const/16 v1, 0x1cb

    aput v7, v0, v1

    const/16 v1, 0x1d1

    .line 64
    aput v5, v0, v1

    const/16 v1, 0x1d2

    aput v5, v0, v1

    const/16 v1, 0x1d4

    aput v5, v0, v1

    const/16 v1, 0x1d5

    aput v5, v0, v1

    const/16 v1, 0x1db

    .line 65
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1dc

    aput v3, v0, v1

    const/16 v1, 0x1dd

    aput v3, v0, v1

    const/16 v1, 0x1de

    aput v4, v0, v1

    const/16 v1, 0x1df

    aput v3, v0, v1

    const/16 v1, 0x1e0

    aput v3, v0, v1

    const/16 v1, 0x1e1

    aput v7, v0, v1

    const/16 v1, 0x1e6

    .line 66
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1e8

    aput v3, v0, v1

    const/16 v1, 0x1e9

    aput v4, v0, v1

    const/16 v1, 0x1ea

    aput v3, v0, v1

    const/16 v1, 0x1eb

    aput v3, v0, v1

    const/16 v1, 0x1ec

    aput v7, v0, v1

    const/16 v1, 0x1f2

    .line 67
    aput v5, v0, v1

    const/16 v1, 0x1f3

    aput v5, v0, v1

    const/16 v1, 0x1f5

    aput v5, v0, v1

    const/16 v1, 0x1f6

    aput v5, v0, v1

    const/16 v1, 0x1fc

    .line 68
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x1fd

    aput v3, v0, v1

    const/16 v1, 0x1fe

    aput v3, v0, v1

    const/16 v1, 0x1ff

    aput v4, v0, v1

    const/16 v1, 0x200

    aput v3, v0, v1

    const/16 v1, 0x201

    aput v3, v0, v1

    const/16 v1, 0x202

    aput v7, v0, v1

    const/16 v1, 0x207

    .line 69
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v4, v0, v1

    const/16 v1, 0x20b

    aput v3, v0, v1

    const/16 v1, 0x20c

    aput v3, v0, v1

    const/16 v1, 0x20d

    aput v7, v0, v1

    const/16 v1, 0x213

    .line 70
    aput v5, v0, v1

    const/16 v1, 0x214

    aput v5, v0, v1

    const/16 v1, 0x216

    aput v5, v0, v1

    const/16 v1, 0x217

    aput v5, v0, v1

    const/16 v1, 0x21d

    .line 71
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x21e

    aput v3, v0, v1

    const/16 v1, 0x21f

    aput v3, v0, v1

    const/16 v1, 0x220

    aput v4, v0, v1

    const/16 v1, 0x221

    aput v3, v0, v1

    const/16 v1, 0x222

    aput v3, v0, v1

    const/16 v1, 0x223

    aput v7, v0, v1

    const/16 v1, 0x228

    .line 72
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x229

    aput v3, v0, v1

    const/16 v1, 0x22a

    aput v3, v0, v1

    const/16 v1, 0x22b

    aput v4, v0, v1

    const/16 v1, 0x22c

    aput v3, v0, v1

    const/16 v1, 0x22d

    aput v3, v0, v1

    const/16 v1, 0x22e

    aput v7, v0, v1

    const/16 v1, 0x234

    .line 73
    aput v5, v0, v1

    const/16 v1, 0x235

    aput v5, v0, v1

    const/16 v1, 0x237

    aput v5, v0, v1

    const/16 v1, 0x238

    aput v5, v0, v1

    const/16 v1, 0x23e

    .line 74
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x23f

    aput v3, v0, v1

    const/16 v1, 0x240

    aput v3, v0, v1

    const/16 v1, 0x241

    aput v4, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x243

    aput v3, v0, v1

    const/16 v1, 0x244

    aput v7, v0, v1

    const/16 v1, 0x249

    .line 75
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x24a

    aput v3, v0, v1

    const/16 v1, 0x24b

    aput v3, v0, v1

    const/16 v1, 0x24c

    aput v4, v0, v1

    const/16 v1, 0x24d

    aput v3, v0, v1

    const/16 v1, 0x24e

    aput v3, v0, v1

    const/16 v1, 0x24f

    aput v7, v0, v1

    const/16 v1, 0x255

    .line 76
    aput v5, v0, v1

    const/16 v1, 0x256

    aput v5, v0, v1

    const/16 v1, 0x258

    aput v5, v0, v1

    const/16 v1, 0x259

    aput v5, v0, v1

    const/16 v1, 0x25f

    .line 77
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x260

    aput v3, v0, v1

    const/16 v1, 0x261

    aput v3, v0, v1

    const/16 v1, 0x262

    aput v4, v0, v1

    const/16 v1, 0x263

    aput v3, v0, v1

    const/16 v1, 0x264

    aput v3, v0, v1

    const/16 v1, 0x265

    aput v7, v0, v1

    const/16 v1, 0x26a

    .line 78
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x26b

    aput v3, v0, v1

    const/16 v1, 0x26c

    aput v3, v0, v1

    const/16 v1, 0x26d

    aput v4, v0, v1

    const/16 v1, 0x26e

    aput v3, v0, v1

    const/16 v1, 0x26f

    aput v3, v0, v1

    const/16 v1, 0x270

    aput v7, v0, v1

    const/16 v1, 0x276

    .line 79
    aput v5, v0, v1

    const/16 v1, 0x277

    aput v5, v0, v1

    const/16 v1, 0x279

    aput v5, v0, v1

    const/16 v1, 0x27a

    aput v5, v0, v1

    const/16 v1, 0x280

    .line 80
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x281

    aput v3, v0, v1

    const/16 v1, 0x282

    aput v3, v0, v1

    const/16 v1, 0x283

    aput v4, v0, v1

    const/16 v1, 0x284

    aput v3, v0, v1

    const/16 v1, 0x285

    aput v3, v0, v1

    const/16 v1, 0x286

    aput v7, v0, v1

    const/16 v1, 0x28b

    .line 81
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x28c

    aput v3, v0, v1

    const/16 v1, 0x28d

    aput v3, v0, v1

    const/16 v1, 0x28e

    aput v4, v0, v1

    const/16 v1, 0x28f

    aput v3, v0, v1

    const/16 v1, 0x290

    aput v3, v0, v1

    const/16 v1, 0x291

    aput v7, v0, v1

    const/16 v1, 0x297

    .line 82
    aput v5, v0, v1

    const/16 v1, 0x298

    aput v5, v0, v1

    const/16 v1, 0x29a

    aput v5, v0, v1

    const/16 v1, 0x29b

    aput v5, v0, v1

    const/16 v1, 0x2a1

    .line 83
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2a2

    aput v3, v0, v1

    const/16 v1, 0x2a3

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v4, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a6

    aput v3, v0, v1

    const/16 v1, 0x2a7

    aput v7, v0, v1

    const/16 v1, 0x2ac

    .line 84
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2ad

    aput v3, v0, v1

    const/16 v1, 0x2ae

    aput v3, v0, v1

    const/16 v1, 0x2af

    aput v4, v0, v1

    const/16 v1, 0x2b0

    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v7, v0, v1

    const/16 v1, 0x2b8

    .line 85
    aput v5, v0, v1

    const/16 v1, 0x2b9

    aput v5, v0, v1

    const/16 v1, 0x2bb

    aput v5, v0, v1

    const/16 v1, 0x2bc

    aput v5, v0, v1

    const/16 v1, 0x2c2

    .line 86
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2c3

    aput v3, v0, v1

    const/16 v1, 0x2c4

    aput v3, v0, v1

    const/16 v1, 0x2c5

    aput v4, v0, v1

    const/16 v1, 0x2c6

    aput v3, v0, v1

    const/16 v1, 0x2c7

    aput v3, v0, v1

    const/16 v1, 0x2c8

    aput v7, v0, v1

    const/16 v1, 0x2cc

    .line 87
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2cd

    aput v3, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2cf

    aput v7, v0, v1

    const/16 v1, 0x2d1

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2d2

    aput v3, v0, v1

    const/16 v1, 0x2d3

    aput v3, v0, v1

    const/16 v1, 0x2d4

    aput v7, v0, v1

    const/16 v1, 0x2d8

    .line 88
    aput v5, v0, v1

    const/16 v1, 0x2d9

    aput v5, v0, v1

    const/16 v1, 0x2dd

    aput v5, v0, v1

    const/16 v1, 0x2de

    aput v5, v0, v1

    const/16 v1, 0x2e2

    .line 89
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2e3

    aput v3, v0, v1

    const/16 v1, 0x2e4

    aput v3, v0, v1

    const/16 v1, 0x2e5

    aput v7, v0, v1

    const/16 v1, 0x2e7

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2e8

    aput v3, v0, v1

    const/16 v1, 0x2e9

    aput v3, v0, v1

    const/16 v1, 0x2ea

    aput v7, v0, v1

    const/16 v1, 0x2ed

    .line 90
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2ee

    aput v3, v0, v1

    const/16 v1, 0x2ef

    aput v3, v0, v1

    const/16 v1, 0x2f0

    aput v7, v0, v1

    const/16 v1, 0x2f2

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x2f3

    aput v3, v0, v1

    const/16 v1, 0x2f4

    aput v3, v0, v1

    const/16 v1, 0x2f5

    aput v7, v0, v1

    const/16 v1, 0x2f9

    .line 91
    aput v5, v0, v1

    const/16 v1, 0x2fa

    aput v5, v0, v1

    const/16 v1, 0x2fe

    aput v5, v0, v1

    const/16 v1, 0x2ff

    aput v5, v0, v1

    const/16 v1, 0x303

    .line 92
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x304

    aput v3, v0, v1

    const/16 v1, 0x305

    aput v3, v0, v1

    const/16 v1, 0x306

    aput v7, v0, v1

    const/16 v1, 0x308

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x309

    aput v3, v0, v1

    const/16 v1, 0x30a

    aput v3, v0, v1

    const/16 v1, 0x30b

    aput v7, v0, v1

    const/16 v1, 0x30e

    .line 93
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x30f

    aput v3, v0, v1

    const/16 v1, 0x310

    aput v3, v0, v1

    const/16 v1, 0x311

    aput v7, v0, v1

    const/16 v1, 0x313

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x315

    aput v3, v0, v1

    const/16 v1, 0x316

    aput v7, v0, v1

    const/16 v1, 0x31a

    .line 94
    aput v5, v0, v1

    const/16 v1, 0x31b

    aput v5, v0, v1

    const/16 v1, 0x31f

    aput v5, v0, v1

    const/16 v1, 0x320

    aput v5, v0, v1

    const/16 v1, 0x324

    .line 95
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x325

    aput v3, v0, v1

    const/16 v1, 0x326

    aput v3, v0, v1

    const/16 v1, 0x327

    aput v7, v0, v1

    const/16 v1, 0x329

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x32a

    aput v3, v0, v1

    const/16 v1, 0x32b

    aput v3, v0, v1

    const/16 v1, 0x32c

    aput v7, v0, v1

    const/16 v1, 0x32f

    .line 96
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x330

    aput v3, v0, v1

    const/16 v1, 0x331

    aput v3, v0, v1

    const/16 v1, 0x332

    aput v7, v0, v1

    const/16 v1, 0x334

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x336

    aput v3, v0, v1

    const/16 v1, 0x337

    aput v7, v0, v1

    const/16 v1, 0x33b

    .line 97
    aput v5, v0, v1

    const/16 v1, 0x33c

    aput v5, v0, v1

    const/16 v1, 0x340

    aput v5, v0, v1

    const/16 v1, 0x341

    aput v5, v0, v1

    const/16 v1, 0x345

    .line 98
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x346

    aput v3, v0, v1

    const/16 v1, 0x347

    aput v3, v0, v1

    const/16 v1, 0x348

    aput v7, v0, v1

    const/16 v1, 0x34a

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x34b

    aput v3, v0, v1

    const/16 v1, 0x34c

    aput v3, v0, v1

    const/16 v1, 0x34d

    aput v7, v0, v1

    const/16 v1, 0x350

    .line 99
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x351

    aput v3, v0, v1

    const/16 v1, 0x352

    aput v3, v0, v1

    const/16 v1, 0x353

    aput v7, v0, v1

    const/16 v1, 0x355

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x356

    aput v3, v0, v1

    const/16 v1, 0x357

    aput v3, v0, v1

    const/16 v1, 0x358

    aput v7, v0, v1

    const/16 v1, 0x35c

    .line 100
    aput v5, v0, v1

    const/16 v1, 0x35d

    aput v5, v0, v1

    const/16 v1, 0x361

    aput v5, v0, v1

    const/16 v1, 0x362

    aput v5, v0, v1

    const/16 v1, 0x366

    .line 101
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x367

    aput v3, v0, v1

    const/16 v1, 0x368

    aput v3, v0, v1

    const/16 v1, 0x369

    aput v7, v0, v1

    const/16 v1, 0x36b

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x36c

    aput v3, v0, v1

    const/16 v1, 0x36d

    aput v3, v0, v1

    const/16 v1, 0x36e

    aput v7, v0, v1

    const/16 v1, 0x371

    .line 102
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x372

    aput v3, v0, v1

    const/16 v1, 0x373

    aput v3, v0, v1

    const/16 v1, 0x374

    aput v7, v0, v1

    const/16 v1, 0x376

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x377

    aput v3, v0, v1

    const/16 v1, 0x378

    aput v3, v0, v1

    const/16 v1, 0x379

    aput v7, v0, v1

    const/16 v1, 0x37d

    .line 103
    aput v5, v0, v1

    const/16 v1, 0x37e

    aput v5, v0, v1

    const/16 v1, 0x382

    aput v5, v0, v1

    const/16 v1, 0x383

    aput v5, v0, v1

    const/16 v1, 0x387

    .line 104
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x388

    aput v3, v0, v1

    const/16 v1, 0x389

    aput v3, v0, v1

    const/16 v1, 0x38a

    aput v7, v0, v1

    const/16 v1, 0x38c

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x38d

    aput v3, v0, v1

    const/16 v1, 0x38e

    aput v3, v0, v1

    const/16 v1, 0x38f

    aput v7, v0, v1

    const/16 v1, 0x392

    .line 105
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x393

    aput v3, v0, v1

    const/16 v1, 0x394

    aput v3, v0, v1

    const/16 v1, 0x395

    aput v7, v0, v1

    const/16 v1, 0x397

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x398

    aput v3, v0, v1

    const/16 v1, 0x399

    aput v3, v0, v1

    const/16 v1, 0x39a

    aput v7, v0, v1

    const/16 v1, 0x39e

    .line 106
    aput v5, v0, v1

    const/16 v1, 0x39f

    aput v5, v0, v1

    const/16 v1, 0x3a3

    aput v5, v0, v1

    const/16 v1, 0x3a4

    aput v5, v0, v1

    const/16 v1, 0x3a8

    .line 107
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3a9

    aput v3, v0, v1

    const/16 v1, 0x3aa

    aput v3, v0, v1

    const/16 v1, 0x3ab

    aput v7, v0, v1

    const/16 v1, 0x3ad

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3af

    aput v3, v0, v1

    const/16 v1, 0x3b0

    aput v7, v0, v1

    const/16 v1, 0x3b3

    .line 108
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3b4

    aput v3, v0, v1

    const/16 v1, 0x3b5

    aput v3, v0, v1

    const/16 v1, 0x3b6

    aput v7, v0, v1

    const/16 v1, 0x3b8

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3b9

    aput v3, v0, v1

    const/16 v1, 0x3ba

    aput v3, v0, v1

    const/16 v1, 0x3bb

    aput v7, v0, v1

    const/16 v1, 0x3bf

    .line 109
    aput v5, v0, v1

    const/16 v1, 0x3c0

    aput v5, v0, v1

    const/16 v1, 0x3c4

    aput v5, v0, v1

    const/16 v1, 0x3c5

    aput v5, v0, v1

    const/16 v1, 0x3c9

    .line 110
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3ca

    aput v3, v0, v1

    const/16 v1, 0x3cb

    aput v3, v0, v1

    const/16 v1, 0x3cc

    aput v7, v0, v1

    const/16 v1, 0x3ce

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3cf

    aput v3, v0, v1

    const/16 v1, 0x3d0

    aput v3, v0, v1

    const/16 v1, 0x3d1

    aput v7, v0, v1

    const/16 v1, 0x3d4

    .line 111
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3d5

    aput v3, v0, v1

    const/16 v1, 0x3d6

    aput v3, v0, v1

    const/16 v1, 0x3d7

    aput v7, v0, v1

    const/16 v1, 0x3d9

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3da

    aput v3, v0, v1

    const/16 v1, 0x3db

    aput v3, v0, v1

    const/16 v1, 0x3dc

    aput v7, v0, v1

    const/16 v1, 0x3e0

    .line 112
    aput v5, v0, v1

    const/16 v1, 0x3e1

    aput v5, v0, v1

    const/16 v1, 0x3e5

    aput v5, v0, v1

    const/16 v1, 0x3e6

    aput v5, v0, v1

    const/16 v1, 0x3ea

    .line 113
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3eb

    aput v3, v0, v1

    const/16 v1, 0x3ec

    aput v3, v0, v1

    const/16 v1, 0x3ed

    aput v7, v0, v1

    const/16 v1, 0x3ef

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3f0

    aput v3, v0, v1

    const/16 v1, 0x3f1

    aput v3, v0, v1

    const/16 v1, 0x3f2

    aput v7, v0, v1

    const/16 v1, 0x3f5

    .line 114
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3f6

    aput v3, v0, v1

    const/16 v1, 0x3f7

    aput v3, v0, v1

    const/16 v1, 0x3f8

    aput v7, v0, v1

    const/16 v1, 0x3fa

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x3fc

    aput v3, v0, v1

    const/16 v1, 0x3fd

    aput v7, v0, v1

    const/16 v1, 0x401

    .line 115
    aput v5, v0, v1

    const/16 v1, 0x402

    aput v5, v0, v1

    const/16 v1, 0x406

    aput v5, v0, v1

    const/16 v1, 0x407

    aput v5, v0, v1

    const/16 v1, 0x40b

    .line 116
    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x40c

    aput v3, v0, v1

    const/16 v1, 0x40d

    aput v3, v0, v1

    const/16 v1, 0x40e

    aput v7, v0, v1

    const/16 v1, 0x410

    const v2, 0xd0a0200

    aput v2, v0, v1

    const/16 v1, 0x411

    aput v3, v0, v1

    const/16 v1, 0x412

    aput v3, v0, v1

    const/16 v1, 0x413

    aput v7, v0, v1

    const/16 v1, 0x417

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x418

    aput v3, v0, v1

    const/16 v1, 0x41c

    aput v3, v0, v1

    const/16 v1, 0x41d

    aput v3, v0, v1

    const/16 v1, 0x421

    .line 118
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x422

    aput v5, v0, v1

    const/16 v1, 0x423

    aput v5, v0, v1

    const/16 v1, 0x424

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x426

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x427

    aput v5, v0, v1

    const/16 v1, 0x428

    aput v5, v0, v1

    const/16 v1, 0x429

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x42c

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x42e

    aput v3, v0, v1

    const/16 v1, 0x42f

    aput v3, v0, v1

    const/16 v1, 0x431

    aput v3, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x434

    aput v3, v0, v1

    const/16 v1, 0x437

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x438

    aput v3, v0, v1

    const/16 v1, 0x439

    aput v3, v0, v1

    const/16 v1, 0x43a

    aput v3, v0, v1

    const/16 v1, 0x43c

    aput v3, v0, v1

    const/16 v1, 0x43d

    aput v3, v0, v1

    const/16 v1, 0x43e

    aput v3, v0, v1

    const/16 v1, 0x43f

    aput v3, v0, v1

    const/16 v1, 0x442

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x445

    aput v3, v0, v1

    const/16 v1, 0x447

    aput v3, v0, v1

    const/16 v1, 0x44a

    aput v3, v0, v1

    const/16 v1, 0x44d

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v3, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x450

    aput v3, v0, v1

    const/16 v1, 0x452

    aput v3, v0, v1

    const/16 v1, 0x453

    aput v3, v0, v1

    const/16 v1, 0x454

    aput v3, v0, v1

    const/16 v1, 0x455

    aput v3, v0, v1

    const/16 v1, 0x459

    .line 123
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x45a

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x45e

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x45f

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x464

    .line 124
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x465

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x469

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x46a

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x46e

    .line 125
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x46f

    aput v3, v0, v1

    const/16 v1, 0x470

    aput v3, v0, v1

    const/16 v1, 0x471

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x473

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x474

    aput v3, v0, v1

    const/16 v1, 0x475

    aput v3, v0, v1

    const/16 v1, 0x476

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x479

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x47c

    aput v3, v0, v1

    const/16 v1, 0x47e

    aput v3, v0, v1

    const/16 v1, 0x481

    aput v3, v0, v1

    const/16 v1, 0x484

    .line 127
    aput v3, v0, v1

    const/16 v1, 0x485

    aput v3, v0, v1

    const/16 v1, 0x486

    aput v3, v0, v1

    const/16 v1, 0x487

    aput v3, v0, v1

    const/16 v1, 0x489

    aput v3, v0, v1

    const/16 v1, 0x48a

    aput v3, v0, v1

    const/16 v1, 0x48b

    aput v3, v0, v1

    const/16 v1, 0x48c

    aput v3, v0, v1

    const/16 v1, 0x48f

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x490

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x491

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x492

    aput v3, v0, v1

    const/16 v1, 0x494

    aput v3, v0, v1

    const/16 v1, 0x495

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x496

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x497

    aput v3, v0, v1

    const/16 v1, 0x49a

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x49b

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x49c

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x49d

    aput v3, v0, v1

    const/16 v1, 0x49f

    aput v3, v0, v1

    const/16 v1, 0x4a0

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x4a1

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x4a2

    aput v3, v0, v1

    const/16 v1, 0x4a5

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x4a6

    aput v3, v0, v1

    const/16 v1, 0x4a7

    aput v3, v0, v1

    const/16 v1, 0x4a8

    aput v3, v0, v1

    const/16 v1, 0x4aa

    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4ac

    aput v3, v0, v1

    const/16 v1, 0x4ad

    aput v3, v0, v1

    const/16 v1, 0x4b0

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x4b1

    aput v4, v0, v1

    const/16 v1, 0x4b2

    aput v4, v0, v1

    const/16 v1, 0x4b3

    aput v3, v0, v1

    const/16 v1, 0x4b5

    aput v3, v0, v1

    const/16 v1, 0x4b6

    aput v4, v0, v1

    const/16 v1, 0x4b7

    aput v4, v0, v1

    const/16 v1, 0x4b8

    aput v3, v0, v1

    const/16 v1, 0x4bb

    .line 132
    aput v3, v0, v1

    const/16 v1, 0x4bc

    aput v3, v0, v1

    const/16 v1, 0x4bd

    aput v3, v0, v1

    const/16 v1, 0x4be

    aput v3, v0, v1

    const/16 v1, 0x4c0

    aput v3, v0, v1

    const/16 v1, 0x4c1

    aput v3, v0, v1

    const/16 v1, 0x4c2

    aput v3, v0, v1

    const/16 v1, 0x4c3

    aput v3, v0, v1

    const/16 v1, 0x4c6

    .line 133
    aput v4, v0, v1

    const/16 v1, 0x4c7

    aput v3, v0, v1

    const/16 v1, 0x4c8

    aput v3, v0, v1

    const/16 v1, 0x4c9

    aput v4, v0, v1

    const/16 v1, 0x4cb

    aput v4, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    aput v3, v0, v1

    const/16 v1, 0x4ce

    aput v4, v0, v1

    const/16 v1, 0x4d1

    .line 134
    aput v4, v0, v1

    const/16 v1, 0x4d2

    aput v3, v0, v1

    const/16 v1, 0x4d3

    aput v3, v0, v1

    const/16 v1, 0x4d4

    aput v4, v0, v1

    const/16 v1, 0x4d6

    aput v4, v0, v1

    const/16 v1, 0x4d7

    aput v3, v0, v1

    const/16 v1, 0x4d8

    aput v3, v0, v1

    const/16 v1, 0x4d9

    aput v4, v0, v1

    const/16 v1, 0x4dc

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x4dd

    aput v3, v0, v1

    const/16 v1, 0x4de

    aput v3, v0, v1

    const/16 v1, 0x4df

    aput v3, v0, v1

    const/16 v1, 0x4e1

    aput v3, v0, v1

    const/16 v1, 0x4e2

    aput v3, v0, v1

    const/16 v1, 0x4e3

    aput v3, v0, v1

    const/16 v1, 0x4e4

    aput v3, v0, v1

    const/16 v1, 0x4e7

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x4e8

    aput v4, v0, v1

    const/16 v1, 0x4e9

    aput v4, v0, v1

    const/16 v1, 0x4ea

    aput v3, v0, v1

    const/16 v1, 0x4ec

    aput v3, v0, v1

    const/16 v1, 0x4ed

    aput v4, v0, v1

    const/16 v1, 0x4ee

    aput v4, v0, v1

    const/16 v1, 0x4ef

    aput v3, v0, v1

    const/16 v1, 0x4f2

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x4f3

    aput v3, v0, v1

    const/16 v1, 0x4f4

    aput v3, v0, v1

    const/16 v1, 0x4f5

    aput v3, v0, v1

    const/16 v1, 0x4f7

    aput v3, v0, v1

    const/16 v1, 0x4f8

    aput v3, v0, v1

    const/16 v1, 0x4f9

    aput v3, v0, v1

    const/16 v1, 0x4fa

    aput v3, v0, v1

    const/16 v1, 0x4fd

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x4fe

    aput v3, v0, v1

    const/16 v1, 0x4ff

    aput v3, v0, v1

    const/16 v1, 0x500

    aput v3, v0, v1

    const/16 v1, 0x502

    aput v3, v0, v1

    const/16 v1, 0x503

    aput v3, v0, v1

    const/16 v1, 0x504

    aput v3, v0, v1

    const/16 v1, 0x505

    aput v3, v0, v1

    const/16 v1, 0x508

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x509

    aput v3, v0, v1

    const/16 v1, 0x50a

    aput v3, v0, v1

    const/16 v1, 0x50b

    aput v3, v0, v1

    const/16 v1, 0x50d

    aput v3, v0, v1

    const/16 v1, 0x50e

    aput v3, v0, v1

    const/16 v1, 0x50f

    aput v3, v0, v1

    const/16 v1, 0x510

    aput v3, v0, v1

    const/16 v1, 0x513

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x514

    aput v3, v0, v1

    const/16 v1, 0x515

    aput v3, v0, v1

    const/16 v1, 0x516

    aput v3, v0, v1

    const/16 v1, 0x518

    aput v3, v0, v1

    const/16 v1, 0x519

    aput v3, v0, v1

    const/16 v1, 0x51a

    aput v3, v0, v1

    const/16 v1, 0x51b

    aput v3, v0, v1

    const/16 v1, 0x51e

    .line 141
    aput v3, v0, v1

    const/16 v1, 0x51f

    aput v4, v0, v1

    const/16 v1, 0x520

    aput v4, v0, v1

    const/16 v1, 0x521

    aput v3, v0, v1

    const/16 v1, 0x523

    aput v3, v0, v1

    const/16 v1, 0x524

    aput v4, v0, v1

    const/16 v1, 0x525

    aput v4, v0, v1

    const/16 v1, 0x526

    aput v3, v0, v1

    const/16 v1, 0x529

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x52a

    aput v3, v0, v1

    const/16 v1, 0x52b

    aput v3, v0, v1

    const/16 v1, 0x52c

    aput v3, v0, v1

    const/16 v1, 0x52e

    aput v3, v0, v1

    const/16 v1, 0x52f

    aput v3, v0, v1

    const/16 v1, 0x530

    aput v3, v0, v1

    const/16 v1, 0x531

    aput v3, v0, v1

    const/16 v1, 0x534

    .line 143
    aput v4, v0, v1

    const/16 v1, 0x535

    aput v3, v0, v1

    const/16 v1, 0x536

    aput v3, v0, v1

    const/16 v1, 0x537

    aput v4, v0, v1

    const/16 v1, 0x539

    aput v4, v0, v1

    const/16 v1, 0x53a

    aput v3, v0, v1

    const/16 v1, 0x53b

    aput v3, v0, v1

    const/16 v1, 0x53c

    aput v4, v0, v1

    const/16 v1, 0x53f

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x540

    aput v3, v0, v1

    const/16 v1, 0x541

    aput v3, v0, v1

    const/16 v1, 0x542

    aput v4, v0, v1

    const/16 v1, 0x544

    aput v4, v0, v1

    const/16 v1, 0x545

    aput v3, v0, v1

    const/16 v1, 0x546

    aput v3, v0, v1

    const/16 v1, 0x547

    aput v4, v0, v1

    const/16 v1, 0x54a

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x54b

    aput v3, v0, v1

    const/16 v1, 0x54c

    aput v3, v0, v1

    const/16 v1, 0x54d

    aput v3, v0, v1

    const/16 v1, 0x54f

    aput v3, v0, v1

    const/16 v1, 0x550

    aput v3, v0, v1

    const/16 v1, 0x551

    aput v3, v0, v1

    const/16 v1, 0x552

    aput v3, v0, v1

    const/16 v1, 0x555

    .line 146
    aput v3, v0, v1

    const/16 v1, 0x556

    aput v4, v0, v1

    const/16 v1, 0x557

    aput v4, v0, v1

    const/16 v1, 0x558

    aput v3, v0, v1

    const/16 v1, 0x55a

    aput v3, v0, v1

    const/16 v1, 0x55b

    aput v4, v0, v1

    const/16 v1, 0x55c

    aput v4, v0, v1

    const/16 v1, 0x55d

    aput v3, v0, v1

    const/16 v1, 0x560

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x561

    aput v3, v0, v1

    const/16 v1, 0x562

    aput v3, v0, v1

    const/16 v1, 0x563

    aput v3, v0, v1

    const/16 v1, 0x565

    aput v3, v0, v1

    const/16 v1, 0x566

    aput v3, v0, v1

    const/16 v1, 0x567

    aput v3, v0, v1

    const/16 v1, 0x568

    aput v3, v0, v1

    const/16 v1, 0x56b

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x56c

    aput v3, v0, v1

    const/16 v1, 0x56d

    aput v3, v0, v1

    const/16 v1, 0x56e

    aput v3, v0, v1

    const/16 v1, 0x570

    aput v3, v0, v1

    const/16 v1, 0x571

    aput v3, v0, v1

    const/16 v1, 0x572

    aput v3, v0, v1

    const/16 v1, 0x573

    aput v3, v0, v1

    const/16 v1, 0x576

    .line 149
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x577

    aput v3, v0, v1

    const/16 v1, 0x578

    aput v3, v0, v1

    const/16 v1, 0x579

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x57b

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x57c

    aput v3, v0, v1

    const/16 v1, 0x57d

    aput v3, v0, v1

    const/16 v1, 0x57e

    aput v3, v0, v1

    const/16 v1, 0x582

    .line 150
    aput v5, v0, v1

    const/16 v1, 0x583

    aput v5, v0, v1

    const/16 v1, 0x587

    aput v3, v0, v1

    const/16 v1, 0x588

    aput v3, v0, v1

    const/16 v1, 0x589

    aput v3, v0, v1

    const/16 v1, 0x58d

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x58e

    aput v3, v0, v1

    const/16 v1, 0x591

    aput v4, v0, v1

    const/16 v1, 0x592

    aput v6, v0, v1

    const/16 v1, 0x593

    aput v4, v0, v1

    const/16 v1, 0x594

    aput v6, v0, v1

    const/16 v1, 0x598

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x599

    aput v3, v0, v1

    const/16 v1, 0x59c

    aput v3, v0, v1

    const/16 v1, 0x59d

    aput v3, v0, v1

    const/16 v1, 0x59e

    aput v3, v0, v1

    const/16 v1, 0x59f

    aput v3, v0, v1

    const/16 v1, 0x5a3

    .line 153
    aput v5, v0, v1

    const/16 v1, 0x5a4

    aput v5, v0, v1

    const/16 v1, 0x5a7

    aput v3, v0, v1

    const/16 v1, 0x5a8

    aput v3, v0, v1

    const/16 v1, 0x5a9

    aput v3, v0, v1

    const/16 v1, 0x5aa

    aput v3, v0, v1

    const/16 v1, 0x5ae

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x5af

    aput v3, v0, v1

    const/16 v1, 0x5b2

    aput v3, v0, v1

    const/16 v1, 0x5b3

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x5b4

    aput v3, v0, v1

    const/16 v1, 0x5b5

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x5b9

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x5ba

    aput v3, v0, v1

    const/16 v1, 0x5bd

    aput v3, v0, v1

    const/16 v1, 0x5bf

    aput v3, v0, v1

    const/16 v1, 0x5c4

    .line 156
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x5c5

    aput v3, v0, v1

    const/16 v1, 0x5c6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x5c8

    aput v5, v0, v1

    const/16 v1, 0x5ca

    aput v5, v0, v1

    const/16 v1, 0x5d0

    .line 157
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x5d1

    aput v3, v0, v1

    const/16 v1, 0x5d3

    aput v3, v0, v1

    const/16 v1, 0x5d5

    aput v3, v0, v1

    const/16 v1, 0x5dc

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x5de

    aput v3, v0, v1

    const/16 v1, 0x5e0

    aput v3, v0, v1

    const/16 v1, 0x5e6

    .line 159
    aput v4, v0, v1

    const/16 v1, 0x5e7

    aput v6, v0, v1

    const/16 v1, 0x5e8

    aput v4, v0, v1

    const/16 v1, 0x5e9

    aput v6, v0, v1

    const/16 v1, 0x5ea

    aput v4, v0, v1

    const/16 v1, 0x5eb

    aput v6, v0, v1

    const/16 v1, 0x5ec

    aput v4, v0, v1

    const/16 v1, 0x5f2

    .line 160
    aput v3, v0, v1

    const/16 v1, 0x5f4

    aput v3, v0, v1

    const/16 v1, 0x5f6

    aput v3, v0, v1

    const/16 v1, 0x5fd

    .line 161
    aput v3, v0, v1

    const/16 v1, 0x5ff

    aput v3, v0, v1

    const/16 v1, 0x601

    aput v3, v0, v1

    const/16 v1, 0x608

    .line 162
    aput v5, v0, v1

    const/16 v1, 0x60a

    aput v5, v0, v1

    const/16 v1, 0x60c

    aput v5, v0, v1

    const/16 v1, 0x613

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x615

    aput v3, v0, v1

    const/16 v1, 0x617

    aput v3, v0, v1

    const/16 v1, 0x61e

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x620

    aput v3, v0, v1

    const/16 v1, 0x622

    aput v3, v0, v1

    const/16 v1, 0x628

    .line 165
    aput v4, v0, v1

    const/16 v1, 0x629

    aput v6, v0, v1

    const/16 v1, 0x62a

    aput v4, v0, v1

    const/16 v1, 0x62b

    aput v6, v0, v1

    const/16 v1, 0x62c

    aput v4, v0, v1

    const/16 v1, 0x62d

    aput v6, v0, v1

    const/16 v1, 0x62e

    aput v4, v0, v1

    const/16 v1, 0x634

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x636

    aput v3, v0, v1

    const/16 v1, 0x638

    aput v3, v0, v1

    const/16 v1, 0x63f

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x641

    aput v3, v0, v1

    const/16 v1, 0x643

    aput v3, v0, v1

    const/16 v1, 0x64a

    .line 168
    aput v5, v0, v1

    const/16 v1, 0x64c

    aput v5, v0, v1

    const/16 v1, 0x64e

    aput v5, v0, v1

    const/16 v1, 0x655

    .line 169
    aput v3, v0, v1

    const/16 v1, 0x657

    aput v3, v0, v1

    const/16 v1, 0x659

    aput v3, v0, v1

    const/16 v1, 0x660

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x662

    aput v3, v0, v1

    const/16 v1, 0x664

    aput v3, v0, v1

    const/16 v1, 0x66a

    .line 171
    aput v4, v0, v1

    const/16 v1, 0x66b

    aput v6, v0, v1

    const/16 v1, 0x66c

    aput v4, v0, v1

    const/16 v1, 0x66d

    aput v6, v0, v1

    const/16 v1, 0x66e

    aput v4, v0, v1

    const/16 v1, 0x66f

    aput v6, v0, v1

    const/16 v1, 0x670

    aput v4, v0, v1

    const/16 v1, 0x676

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x678

    aput v3, v0, v1

    const/16 v1, 0x67a

    aput v3, v0, v1

    const/16 v1, 0x681

    .line 173
    aput v3, v0, v1

    const/16 v1, 0x683

    aput v3, v0, v1

    const/16 v1, 0x685

    aput v3, v0, v1

    const/16 v1, 0x68c

    .line 174
    aput v5, v0, v1

    const/16 v1, 0x68e

    aput v5, v0, v1

    const/16 v1, 0x690

    aput v5, v0, v1

    const/16 v1, 0x697

    .line 175
    aput v3, v0, v1

    const/16 v1, 0x699

    aput v3, v0, v1

    const/16 v1, 0x69b

    aput v3, v0, v1

    const/16 v1, 0x6a2

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x6a4

    aput v3, v0, v1

    const/16 v1, 0x6a6

    aput v3, v0, v1

    const/16 v1, 0x6ac

    .line 177
    aput v4, v0, v1

    const/16 v1, 0x6ad

    aput v6, v0, v1

    const/16 v1, 0x6ae

    aput v4, v0, v1

    const/16 v1, 0x6af

    aput v6, v0, v1

    const/16 v1, 0x6b0

    aput v4, v0, v1

    const/16 v1, 0x6b1

    aput v6, v0, v1

    const/16 v1, 0x6b2

    aput v4, v0, v1

    const/16 v1, 0x6b8

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x6ba

    aput v3, v0, v1

    const/16 v1, 0x6bc

    aput v3, v0, v1

    const/16 v1, 0x6c3

    .line 179
    aput v3, v0, v1

    const/16 v1, 0x6c5

    aput v3, v0, v1

    const/16 v1, 0x6c7

    aput v3, v0, v1

    const/16 v1, 0x6ce

    .line 180
    aput v5, v0, v1

    const/16 v1, 0x6d0

    aput v5, v0, v1

    const/16 v1, 0x6d2

    aput v5, v0, v1

    const/16 v1, 0x6d9

    .line 181
    aput v3, v0, v1

    const/16 v1, 0x6db

    aput v3, v0, v1

    const/16 v1, 0x6dd

    aput v3, v0, v1

    const/16 v1, 0x6e4

    .line 182
    aput v3, v0, v1

    const/16 v1, 0x6e6

    aput v3, v0, v1

    const/16 v1, 0x6e8

    aput v3, v0, v1

    const/16 v1, 0x6ee

    .line 183
    aput v4, v0, v1

    const/16 v1, 0x6ef

    aput v6, v0, v1

    const/16 v1, 0x6f0

    aput v4, v0, v1

    const/16 v1, 0x6f1

    aput v6, v0, v1

    const/16 v1, 0x6f2

    aput v4, v0, v1

    const/16 v1, 0x6f3

    aput v6, v0, v1

    const/16 v1, 0x6f4

    aput v4, v0, v1

    const/16 v1, 0x6fa

    .line 184
    aput v3, v0, v1

    const/16 v1, 0x6fc

    aput v3, v0, v1

    const/16 v1, 0x6fe

    aput v3, v0, v1

    const/16 v1, 0x705

    .line 185
    aput v3, v0, v1

    const/16 v1, 0x707

    aput v3, v0, v1

    const/16 v1, 0x709

    aput v3, v0, v1

    const/16 v1, 0x710

    .line 186
    aput v5, v0, v1

    const/16 v1, 0x712

    aput v5, v0, v1

    const/16 v1, 0x714

    aput v5, v0, v1

    const/16 v1, 0x71b

    .line 187
    aput v3, v0, v1

    const/16 v1, 0x71c

    aput v3, v0, v1

    const/16 v1, 0x71d

    aput v3, v0, v1

    const/16 v1, 0x71e

    aput v3, v0, v1

    const/16 v1, 0x71f

    aput v3, v0, v1

    const/16 v1, 0x726

    .line 188
    aput v3, v0, v1

    const/16 v1, 0x727

    aput v3, v0, v1

    const/16 v1, 0x728

    aput v3, v0, v1

    const/16 v1, 0x729

    aput v3, v0, v1

    const/16 v1, 0x72a

    aput v3, v0, v1

    const/16 v1, 0x731

    .line 189
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x732

    aput v5, v0, v1

    const/16 v1, 0x733

    const v2, 0x10a0c00

    aput v2, v0, v1

    const/16 v1, 0x734

    aput v5, v0, v1

    const/16 v1, 0x735

    const v2, 0x10a0c00

    aput v2, v0, v1

    const/16 v1, 0x73d

    .line 190
    aput v3, v0, v1

    const/16 v1, 0x73e

    aput v3, v0, v1

    const/16 v1, 0x73f

    aput v3, v0, v1

    const/16 v1, 0x740

    aput v3, v0, v1

    const/16 v1, 0x748

    .line 191
    aput v3, v0, v1

    const/16 v1, 0x749

    aput v3, v0, v1

    const/16 v1, 0x74a

    aput v3, v0, v1

    const/16 v1, 0x74b

    aput v3, v0, v1

    const/16 v1, 0x753

    .line 192
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x754

    aput v5, v0, v1

    const/16 v1, 0x755

    aput v5, v0, v1

    const/16 v1, 0x756

    aput v5, v0, v1

    const/16 v1, 0x75f

    .line 193
    aput v3, v0, v1

    const/16 v1, 0x760

    aput v3, v0, v1

    const/16 v1, 0x761

    aput v3, v0, v1

    const/16 v1, 0x76a

    .line 194
    aput v3, v0, v1

    const/16 v1, 0x76b

    aput v3, v0, v1

    const/16 v1, 0x76c

    aput v3, v0, v1

    const/16 v1, 0x775

    .line 195
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x776

    const v2, 0x10a0c00

    aput v2, v0, v1

    const/16 v1, 0x777

    aput v5, v0, v1

    const/16 v1, 0x781

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x782

    aput v3, v0, v1

    const/16 v1, 0x78c

    .line 197
    aput v3, v0, v1

    const/16 v1, 0x78d

    aput v3, v0, v1

    const/16 v1, 0x797

    .line 198
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x798

    aput v5, v0, v1

    const/16 v1, 0x7a3

    .line 199
    aput v3, v0, v1

    const/16 v1, 0x7ae

    .line 200
    aput v3, v0, v1

    const/16 v1, 0x7b9

    .line 201
    aput v5, v0, v1

    const/16 v1, 0x7c4

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x7cf

    .line 203
    aput v3, v0, v1

    const/16 v1, 0x7da

    .line 204
    aput v5, v0, v1

    const/16 v1, 0x7db

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x7e5

    .line 205
    aput v3, v0, v1

    const/16 v1, 0x7e6

    aput v3, v0, v1

    const/16 v1, 0x7f0

    .line 206
    aput v3, v0, v1

    const/16 v1, 0x7f1

    aput v3, v0, v1

    const/16 v1, 0x7fb

    .line 207
    aput v5, v0, v1

    const/16 v1, 0x7fc

    aput v5, v0, v1

    const/16 v1, 0x806

    .line 208
    aput v3, v0, v1

    const/16 v1, 0x807

    aput v3, v0, v1

    const/16 v1, 0x811

    .line 209
    aput v3, v0, v1

    const/16 v1, 0x812

    aput v3, v0, v1

    const/16 v1, 0x81c

    .line 210
    aput v5, v0, v1

    const/16 v1, 0x81d

    aput v5, v0, v1

    const/16 v1, 0x827

    .line 211
    aput v3, v0, v1

    const/16 v1, 0x828

    aput v3, v0, v1

    const/16 v1, 0x832

    .line 212
    aput v3, v0, v1

    const/16 v1, 0x833

    aput v3, v0, v1

    const/16 v1, 0x83c

    .line 213
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x83d

    aput v5, v0, v1

    const/16 v1, 0x83e

    aput v5, v0, v1

    const/16 v1, 0x846

    .line 214
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x847

    aput v3, v0, v1

    const/16 v1, 0x848

    aput v3, v0, v1

    const/16 v1, 0x849

    aput v3, v0, v1

    const/16 v1, 0x850

    .line 215
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x851

    aput v3, v0, v1

    const/16 v1, 0x852

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x853

    aput v3, v0, v1

    const/16 v1, 0x854

    aput v3, v0, v1

    const/16 v1, 0x85a

    .line 216
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x85b

    aput v3, v0, v1

    const/16 v1, 0x85c

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x85d

    aput v3, v0, v1

    const/16 v1, 0x85e

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x85f

    aput v3, v0, v1

    const/16 v1, 0x864

    .line 217
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x865

    aput v3, v0, v1

    const/16 v1, 0x866

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x867

    aput v3, v0, v1

    const/16 v1, 0x868

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x86a

    aput v3, v0, v1

    const/16 v1, 0x86e

    .line 218
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x86f

    aput v3, v0, v1

    const/16 v1, 0x870

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x871

    aput v3, v0, v1

    const/16 v1, 0x872

    aput v3, v0, v1

    const/16 v1, 0x875

    aput v3, v0, v1

    const/16 v1, 0x878

    .line 219
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x879

    aput v3, v0, v1

    const/16 v1, 0x87a

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x87b

    aput v3, v0, v1

    const/16 v1, 0x87c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x87d

    aput v3, v0, v1

    const/16 v1, 0x880

    aput v3, v0, v1

    const/16 v1, 0x883

    .line 220
    aput v3, v0, v1

    const/16 v1, 0x884

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x885

    aput v3, v0, v1

    const/16 v1, 0x886

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x888

    aput v3, v0, v1

    const/16 v1, 0x88b

    aput v3, v0, v1

    const/16 v1, 0x88e

    .line 221
    aput v3, v0, v1

    const/16 v1, 0x88f

    aput v3, v0, v1

    const/16 v1, 0x890

    aput v3, v0, v1

    const/16 v1, 0x892

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x893

    aput v3, v0, v1

    const/16 v1, 0x896

    aput v3, v0, v1

    const/16 v1, 0x899

    .line 222
    aput v4, v0, v1

    const/16 v1, 0x89a

    aput v3, v0, v1

    const/16 v1, 0x89b

    aput v4, v0, v1

    const/16 v1, 0x89d

    aput v3, v0, v1

    const/16 v1, 0x89e

    aput v4, v0, v1

    const/16 v1, 0x8a0

    aput v4, v0, v1

    const/16 v1, 0x8a1

    aput v6, v0, v1

    const/16 v1, 0x8a4

    .line 223
    aput v3, v0, v1

    const/16 v1, 0x8a5

    aput v3, v0, v1

    const/16 v1, 0x8a6

    aput v3, v0, v1

    const/16 v1, 0x8a8

    aput v3, v0, v1

    const/16 v1, 0x8a9

    aput v3, v0, v1

    const/16 v1, 0x8ab

    aput v3, v0, v1

    const/16 v1, 0x8ac

    aput v3, v0, v1

    const/16 v1, 0x8af

    .line 224
    aput v3, v0, v1

    const/16 v1, 0x8b0

    aput v5, v0, v1

    const/16 v1, 0x8b1

    aput v3, v0, v1

    const/16 v1, 0x8b3

    aput v3, v0, v1

    const/16 v1, 0x8b4

    aput v3, v0, v1

    const/16 v1, 0x8b6

    aput v3, v0, v1

    const/16 v1, 0x8b7

    aput v3, v0, v1

    const/16 v1, 0x8ba

    .line 225
    aput v3, v0, v1

    const/16 v1, 0x8bb

    aput v3, v0, v1

    const/16 v1, 0x8bc

    aput v3, v0, v1

    const/16 v1, 0x8be

    aput v3, v0, v1

    const/16 v1, 0x8bf

    aput v3, v0, v1

    const/16 v1, 0x8c1

    aput v3, v0, v1

    const/16 v1, 0x8c2

    aput v3, v0, v1

    const/16 v1, 0x8c5

    .line 226
    aput v4, v0, v1

    const/16 v1, 0x8c6

    aput v3, v0, v1

    const/16 v1, 0x8c7

    aput v4, v0, v1

    const/16 v1, 0x8c9

    aput v6, v0, v1

    const/16 v1, 0x8ca

    aput v4, v0, v1

    const/16 v1, 0x8cc

    aput v4, v0, v1

    const/16 v1, 0x8cd

    aput v6, v0, v1

    const/16 v1, 0x8d1

    .line 227
    aput v5, v0, v1

    const/16 v1, 0x8d4

    aput v3, v0, v1

    const/16 v1, 0x8d5

    aput v3, v0, v1

    const/16 v1, 0x8d7

    aput v3, v0, v1

    const/16 v1, 0x8d8

    aput v3, v0, v1

    const/16 v1, 0x8db

    .line 228
    aput v4, v0, v1

    const/16 v1, 0x8dc

    aput v3, v0, v1

    const/16 v1, 0x8dd

    aput v4, v0, v1

    const/16 v1, 0x8df

    aput v3, v0, v1

    const/16 v1, 0x8e0

    aput v3, v0, v1

    const/16 v1, 0x8e2

    aput v3, v0, v1

    const/16 v1, 0x8e3

    aput v3, v0, v1

    const/16 v1, 0x8e6

    .line 229
    aput v3, v0, v1

    const/16 v1, 0x8e7

    aput v3, v0, v1

    const/16 v1, 0x8e8

    aput v3, v0, v1

    const/16 v1, 0x8ea

    aput v6, v0, v1

    const/16 v1, 0x8eb

    aput v4, v0, v1

    const/16 v1, 0x8ed

    aput v4, v0, v1

    const/16 v1, 0x8ee

    aput v6, v0, v1

    const/16 v1, 0x8f1

    .line 230
    aput v3, v0, v1

    const/16 v1, 0x8f2

    aput v5, v0, v1

    const/16 v1, 0x8f3

    aput v3, v0, v1

    const/16 v1, 0x8f5

    aput v3, v0, v1

    const/16 v1, 0x8f6

    aput v3, v0, v1

    const/16 v1, 0x8f8

    aput v3, v0, v1

    const/16 v1, 0x8f9

    aput v3, v0, v1

    const/16 v1, 0x8fc

    .line 231
    aput v3, v0, v1

    const/16 v1, 0x8fd

    aput v3, v0, v1

    const/16 v1, 0x8fe

    aput v3, v0, v1

    const/16 v1, 0x900

    aput v3, v0, v1

    const/16 v1, 0x901

    aput v3, v0, v1

    const/16 v1, 0x903

    aput v3, v0, v1

    const/16 v1, 0x904

    aput v3, v0, v1

    const/16 v1, 0x907

    .line 232
    aput v4, v0, v1

    const/16 v1, 0x908

    aput v3, v0, v1

    const/16 v1, 0x909

    aput v4, v0, v1

    const/16 v1, 0x90b

    aput v6, v0, v1

    const/16 v1, 0x90c

    aput v4, v0, v1

    const/16 v1, 0x90e

    aput v4, v0, v1

    const/16 v1, 0x90f

    aput v6, v0, v1

    const/16 v1, 0x913

    .line 233
    aput v5, v0, v1

    const/16 v1, 0x916

    aput v3, v0, v1

    const/16 v1, 0x917

    aput v3, v0, v1

    const/16 v1, 0x919

    aput v3, v0, v1

    const/16 v1, 0x91a

    aput v3, v0, v1

    const/16 v1, 0x91d

    .line 234
    aput v4, v0, v1

    const/16 v1, 0x91e

    aput v3, v0, v1

    const/16 v1, 0x91f

    aput v4, v0, v1

    const/16 v1, 0x921

    aput v3, v0, v1

    const/16 v1, 0x922

    aput v3, v0, v1

    const/16 v1, 0x924

    aput v3, v0, v1

    const/16 v1, 0x925

    aput v3, v0, v1

    const/16 v1, 0x928

    .line 235
    aput v3, v0, v1

    const/16 v1, 0x929

    aput v3, v0, v1

    const/16 v1, 0x92a

    aput v3, v0, v1

    const/16 v1, 0x92c

    aput v6, v0, v1

    const/16 v1, 0x92d

    aput v4, v0, v1

    const/16 v1, 0x92e

    aput v4, v0, v1

    const/16 v1, 0x92f

    aput v4, v0, v1

    const/16 v1, 0x930

    aput v6, v0, v1

    const/16 v1, 0x933

    .line 236
    aput v3, v0, v1

    const/16 v1, 0x934

    aput v5, v0, v1

    const/16 v1, 0x935

    aput v3, v0, v1

    const/16 v1, 0x937

    aput v3, v0, v1

    const/16 v1, 0x938

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x939

    aput v3, v0, v1

    const/16 v1, 0x93a

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x93b

    aput v3, v0, v1

    const/16 v1, 0x93e

    .line 237
    aput v3, v0, v1

    const/16 v1, 0x93f

    aput v3, v0, v1

    const/16 v1, 0x940

    aput v3, v0, v1

    const/16 v1, 0x943

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x944

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x945

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x949

    .line 238
    aput v4, v0, v1

    const/16 v1, 0x94a

    aput v3, v0, v1

    const/16 v1, 0x94b

    aput v4, v0, v1

    const/16 v1, 0x94f

    aput v3, v0, v1

    const/16 v1, 0x955

    .line 239
    aput v5, v0, v1

    const/16 v1, 0x95a

    aput v3, v0, v1

    const/16 v1, 0x95f

    .line 240
    aput v4, v0, v1

    const/16 v1, 0x960

    aput v3, v0, v1

    const/16 v1, 0x961

    aput v4, v0, v1

    const/16 v1, 0x964

    aput v4, v0, v1

    const/16 v1, 0x965

    aput v6, v0, v1

    const/16 v1, 0x966

    aput v4, v0, v1

    const/16 v1, 0x96a

    .line 241
    aput v3, v0, v1

    const/16 v1, 0x96b

    aput v3, v0, v1

    const/16 v1, 0x96c

    aput v3, v0, v1

    const/16 v1, 0x970

    aput v3, v0, v1

    const/16 v1, 0x975

    .line 242
    aput v3, v0, v1

    const/16 v1, 0x976

    aput v5, v0, v1

    const/16 v1, 0x977

    aput v3, v0, v1

    const/16 v1, 0x97b

    aput v3, v0, v1

    const/16 v1, 0x980

    .line 243
    aput v3, v0, v1

    const/16 v1, 0x981

    aput v3, v0, v1

    const/16 v1, 0x982

    aput v3, v0, v1

    const/16 v1, 0x985

    aput v4, v0, v1

    const/16 v1, 0x986

    aput v6, v0, v1

    const/16 v1, 0x987

    aput v4, v0, v1

    const/16 v1, 0x98b

    .line 244
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x98c

    aput v3, v0, v1

    const/16 v1, 0x98d

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x991

    aput v3, v0, v1

    const/16 v1, 0x997

    .line 245
    aput v5, v0, v1

    const/16 v1, 0x99c

    aput v3, v0, v1

    const/16 v1, 0x9a2

    .line 246
    aput v3, v0, v1

    const/16 v1, 0x9a6

    aput v4, v0, v1

    const/16 v1, 0x9a7

    aput v6, v0, v1

    const/16 v1, 0x9a8

    aput v4, v0, v1

    const/16 v1, 0x9ad

    .line 247
    aput v3, v0, v1

    const/16 v1, 0x9b2

    aput v3, v0, v1

    const/16 v1, 0x9b8

    .line 248
    aput v5, v0, v1

    const/16 v1, 0x9bd

    aput v3, v0, v1

    const/16 v1, 0x9c3

    .line 249
    aput v3, v0, v1

    const/16 v1, 0x9c7

    aput v4, v0, v1

    const/16 v1, 0x9c8

    aput v6, v0, v1

    const/16 v1, 0x9c9

    aput v4, v0, v1

    const/16 v1, 0x9ce

    .line 250
    aput v3, v0, v1

    const/16 v1, 0x9d3

    aput v3, v0, v1

    const/16 v1, 0x9d8

    .line 251
    aput v4, v0, v1

    const/16 v1, 0x9d9

    aput v6, v0, v1

    const/16 v1, 0x9da

    aput v4, v0, v1

    const/16 v1, 0x9dd

    aput v4, v0, v1

    const/16 v1, 0x9de

    aput v3, v0, v1

    const/16 v1, 0x9df

    aput v4, v0, v1

    const/16 v1, 0x9e3

    .line 252
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x9e4

    aput v3, v0, v1

    const/16 v1, 0x9e7

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x9e8

    aput v3, v0, v1

    const/16 v1, 0x9e9

    aput v3, v0, v1

    const/16 v1, 0x9ea

    aput v3, v0, v1

    const/16 v1, 0x9eb

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x9ee

    .line 253
    aput v3, v0, v1

    const/16 v1, 0x9ef

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x9f2

    aput v3, v0, v1

    const/16 v1, 0x9f3

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x9f5

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x9f6

    aput v3, v0, v1

    const/16 v1, 0x9f9

    .line 254
    aput v6, v0, v1

    const/16 v1, 0x9fd

    aput v6, v0, v1

    const/16 v1, 0xa01

    aput v6, v0, v1

    const/16 v1, 0xa04

    .line 255
    aput v3, v0, v1

    const/16 v1, 0xa08

    aput v3, v0, v1

    const/16 v1, 0xa0c

    aput v3, v0, v1

    const/16 v1, 0xa0f

    .line 256
    aput v3, v0, v1

    const/16 v1, 0xa13

    aput v3, v0, v1

    const/16 v1, 0xa17

    aput v3, v0, v1

    const/16 v1, 0xa1a

    .line 257
    aput v6, v0, v1

    const/16 v1, 0xa1b

    aput v4, v0, v1

    const/16 v1, 0xa1c

    aput v4, v0, v1

    const/16 v1, 0xa1d

    aput v4, v0, v1

    const/16 v1, 0xa1e

    aput v6, v0, v1

    const/16 v1, 0xa1f

    aput v4, v0, v1

    const/16 v1, 0xa20

    aput v4, v0, v1

    const/16 v1, 0xa21

    aput v4, v0, v1

    const/16 v1, 0xa22

    aput v6, v0, v1

    const/16 v1, 0xa25

    .line 258
    aput v3, v0, v1

    const/16 v1, 0xa26

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0xa27

    aput v3, v0, v1

    const/16 v1, 0xa28

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xa29

    aput v3, v0, v1

    const/16 v1, 0xa2a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0xa2b

    aput v3, v0, v1

    const/16 v1, 0xa2c

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xa2d

    aput v3, v0, v1

    const/16 v1, 0xa30

    .line 259
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xa31

    aput v3, v0, v1

    const/16 v1, 0xa32

    aput v3, v0, v1

    const/16 v1, 0xa33

    aput v3, v0, v1

    const/16 v1, 0xa34

    aput v3, v0, v1

    const/16 v1, 0xa35

    aput v3, v0, v1

    const/16 v1, 0xa36

    aput v3, v0, v1

    const/16 v1, 0xa37

    aput v3, v0, v1

    const/16 v1, 0xa38

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xa3c

    .line 260
    aput v4, v0, v1

    const/16 v1, 0xa3d

    aput v6, v0, v1

    const/16 v1, 0xa3e

    aput v4, v0, v1

    const/16 v1, 0xa40

    aput v4, v0, v1

    const/16 v1, 0xa41

    aput v6, v0, v1

    const/16 v1, 0xa42

    aput v4, v0, v1

    const/16 v1, 0xa48

    .line 261
    aput v3, v0, v1

    const/16 v1, 0xa4c

    aput v3, v0, v1

    const/16 v1, 0xa53

    .line 262
    aput v3, v0, v1

    const/16 v1, 0xa57

    aput v3, v0, v1

    const/16 v1, 0xa5d

    .line 263
    aput v4, v0, v1

    const/16 v1, 0xa5e

    aput v6, v0, v1

    const/16 v1, 0xa5f

    aput v4, v0, v1

    const/16 v1, 0xa61

    aput v4, v0, v1

    const/16 v1, 0xa62

    aput v6, v0, v1

    const/16 v1, 0xa63

    aput v4, v0, v1

    const/16 v1, 0xa69

    .line 264
    aput v3, v0, v1

    const/16 v1, 0xa6d

    aput v3, v0, v1

    const/16 v1, 0xa74

    .line 265
    aput v3, v0, v1

    const/16 v1, 0xa78

    aput v3, v0, v1

    const/16 v1, 0xa7e

    .line 266
    aput v4, v0, v1

    const/16 v1, 0xa7f

    aput v6, v0, v1

    const/16 v1, 0xa80

    aput v4, v0, v1

    const/16 v1, 0xa81

    aput v4, v0, v1

    const/16 v1, 0xa82

    aput v4, v0, v1

    const/16 v1, 0xa83

    aput v6, v0, v1

    const/16 v1, 0xa84

    aput v4, v0, v1

    const/16 v1, 0xa8a

    .line 267
    aput v3, v0, v1

    const/16 v1, 0xa8b

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0xa8c

    aput v3, v0, v1

    const/16 v1, 0xa8d

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xa8e

    aput v3, v0, v1

    const/16 v1, 0xa95

    .line 268
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xa96

    aput v3, v0, v1

    const/16 v1, 0xa97

    aput v3, v0, v1

    const/16 v1, 0xa98

    aput v3, v0, v1

    const/16 v1, 0xa99

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xaa1

    .line 269
    aput v4, v0, v1

    const/16 v1, 0xaa2

    aput v6, v0, v1

    const/16 v1, 0xaa3

    aput v4, v0, v1

    const/16 v1, 0xaad

    .line 270
    aput v3, v0, v1

    const/16 v1, 0xab8

    .line 271
    aput v3, v0, v1

    const/16 v1, 0xac2

    .line 272
    aput v4, v0, v1

    const/16 v1, 0xac3

    aput v6, v0, v1

    const/16 v1, 0xac4

    aput v4, v0, v1

    const/16 v1, 0xace

    .line 273
    aput v3, v0, v1

    const/16 v1, 0xad9

    .line 274
    aput v3, v0, v1

    const/16 v1, 0xae3

    .line 275
    aput v4, v0, v1

    const/16 v1, 0xae4

    aput v6, v0, v1

    const/16 v1, 0xae5

    aput v4, v0, v1

    const/16 v1, 0xaef

    .line 276
    aput v3, v0, v1

    const/16 v1, 0xafa

    .line 277
    aput v3, v0, v1

    const/16 v1, 0xb04

    .line 278
    aput v4, v0, v1

    const/16 v1, 0xb05

    aput v6, v0, v1

    const/16 v1, 0xb06

    aput v4, v0, v1

    const/16 v1, 0xb10

    .line 279
    aput v3, v0, v1

    const/16 v1, 0xb1b

    .line 280
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mTiles:[I

    .line 285
    const/16 v0, 0x80

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 287
    const v2, 0x1301050e

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 288
    const v2, 0x13010317

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 289
    const v2, 0x13010717

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 290
    const v2, 0x1301011d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 291
    const v2, 0x1301091d

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 292
    const v2, 0x4001021f

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 293
    const v2, 0x3101081f

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 294
    const v2, 0x3101082d

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 295
    const v2, 0x13010639

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 296
    const v2, 0x13010839

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 297
    const v2, 0x23010743

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 298
    const v2, 0x33010946

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 299
    const v2, 0x1301094c

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 300
    const v2, 0x1301084f

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 301
    const v2, 0x33010464

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 302
    const v2, 0x13010664

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 303
    const v2, 0x33010864

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 304
    const v2, 0x1301046a

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 305
    const v2, 0x3301066a

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 306
    const v2, 0x3301086a

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 307
    const v2, 0x33010470

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 308
    const v2, 0x13010670

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 309
    const v2, 0x33010870

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 310
    const v2, 0x33010476

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 311
    const v2, 0x33010676

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 312
    const v2, 0x13010876

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 313
    const v2, 0x23010285

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 314
    const v2, 0x23010385

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 315
    const v2, 0x23010785

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 316
    const v2, 0x23010885

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 317
    const v2, 0x3301028f

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 318
    const v2, 0x3301038f

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 319
    const v2, 0x3301078f

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 320
    const v2, 0x3301088f

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 321
    const v2, 0x1301029a

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 322
    const v2, 0x1301039a

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 323
    const v2, 0x1301079a

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 324
    const v2, 0x1301089a

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 325
    const v2, 0x400103a4

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 326
    const v2, 0x400107a4

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 327
    const v2, 0x330102b5

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 328
    const v2, 0x330108b5

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 329
    const v2, 0x400103c5

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 330
    const v2, 0x400107c5

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 331
    const v2, 0x330104d5

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 332
    const v2, 0x330106d5

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 333
    const v2, 0x130103ed

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 334
    const v2, 0x130104ed

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 335
    const v2, 0x130106ed

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 336
    const v2, 0x130107ed

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 339
    const v2, 0x4020403

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 340
    const v2, 0x4020603

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 341
    const v2, 0x4020406

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 342
    const v2, 0x4020606

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 343
    const v2, 0x4020409

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 344
    const v2, 0x4020609

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 345
    const v2, 0x402040c

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 346
    const v2, 0x402060c

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 347
    const v2, 0x402050f

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 348
    const v2, 0x4020212

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 349
    const v2, 0x4020812

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 350
    const v2, 0x4020215

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 351
    const v2, 0x4020815

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 352
    const v2, 0x4020318

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 353
    const v2, 0x4020718

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 354
    const v2, 0x402011e

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 355
    const v2, 0x402031e

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 356
    const v2, 0x402061e

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 357
    const v2, 0x402081e

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 358
    const v2, 0x4020129

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 359
    const v2, 0x4020329

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 360
    const v2, 0x4020629

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 361
    const v2, 0x4020829

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 362
    const v2, 0x402072e

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 363
    const v2, 0x402013b

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 364
    const v2, 0x402033b

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 365
    const v2, 0x402063b

    aput v2, v0, v1

    const/16 v1, 0x4d

    .line 366
    const v2, 0x402083b

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 367
    const v2, 0x401023f

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 368
    const v2, 0x4010441

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 369
    const v2, 0x4010643

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 370
    const v2, 0x4010946

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 371
    const v2, 0x4010949

    aput v2, v0, v1

    const/16 v1, 0x53

    .line 372
    const v2, 0x401094c

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 373
    const v2, 0x4010753

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 374
    const v2, 0x4010559

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 375
    const v2, 0x4020562

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 376
    const v2, 0x4020762

    aput v2, v0, v1

    const/16 v1, 0x58

    .line 377
    const v2, 0x4020568

    aput v2, v0, v1

    const/16 v1, 0x59

    .line 378
    const v2, 0x4020768

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 379
    const v2, 0x402056e

    aput v2, v0, v1

    const/16 v1, 0x5b

    .line 380
    const v2, 0x402076e

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 381
    const v2, 0x4020574

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 382
    const v2, 0x4020774

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 383
    const v2, 0x402057a

    aput v2, v0, v1

    const/16 v1, 0x5f

    .line 384
    const v2, 0x402077a

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 385
    const v2, 0x4020287

    aput v2, v0, v1

    const/16 v1, 0x61

    .line 386
    const v2, 0x4020387

    aput v2, v0, v1

    const/16 v1, 0x62

    .line 387
    const v2, 0x4020787

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 388
    const v2, 0x4020887

    aput v2, v0, v1

    const/16 v1, 0x64

    .line 389
    const v2, 0x4020291

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 390
    const v2, 0x4020391

    aput v2, v0, v1

    const/16 v1, 0x66

    .line 391
    const v2, 0x4020791

    aput v2, v0, v1

    const/16 v1, 0x67

    .line 392
    const v2, 0x4020891

    aput v2, v0, v1

    const/16 v1, 0x68

    .line 393
    const v2, 0x402019f

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 394
    const v2, 0x402049f

    aput v2, v0, v1

    const/16 v1, 0x6a

    .line 395
    const v2, 0x402069f

    aput v2, v0, v1

    const/16 v1, 0x6b

    .line 396
    const v2, 0x402099f

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 397
    const v2, 0x40201a5

    aput v2, v0, v1

    const/16 v1, 0x6d

    .line 398
    const v2, 0x40204a5

    aput v2, v0, v1

    const/16 v1, 0x6e

    .line 399
    const v2, 0x40206a5

    aput v2, v0, v1

    const/16 v1, 0x6f

    .line 400
    const v2, 0x40209a5

    aput v2, v0, v1

    const/16 v1, 0x70

    .line 401
    const v2, 0x40201b3

    aput v2, v0, v1

    const/16 v1, 0x71

    .line 402
    const v2, 0x40204b3

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 403
    const v2, 0x40206b3

    aput v2, v0, v1

    const/16 v1, 0x73

    .line 404
    const v2, 0x40209b3

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 405
    const v2, 0x40201c2

    aput v2, v0, v1

    const/16 v1, 0x75

    .line 406
    const v2, 0x40204c2

    aput v2, v0, v1

    const/16 v1, 0x76

    .line 407
    const v2, 0x40206c2

    aput v2, v0, v1

    const/16 v1, 0x77

    .line 408
    const v2, 0x40209c2

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 409
    const v2, 0x40205c3

    aput v2, v0, v1

    const/16 v1, 0x79

    .line 410
    const v2, 0x40205c8

    aput v2, v0, v1

    const/16 v1, 0x7a

    .line 411
    const v2, 0x40205ce

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 412
    const v2, 0x40205d4

    aput v2, v0, v1

    const/16 v1, 0x7c

    .line 413
    const v2, 0x40205da

    aput v2, v0, v1

    const/16 v1, 0x7d

    .line 414
    const v2, 0x40205e0

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 417
    const v2, 0x630105fb

    aput v2, v0, v1

    .line 285
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_08;->mObjects:[I

    .line 420
    return-void

    .line 14
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
