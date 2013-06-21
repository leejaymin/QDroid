.class public Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels04_03.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000400

    const v6, 0x10a0100

    const v5, 0x1000200

    const v4, 0x1000e00

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mSizeX:I

    .line 11
    const/16 v0, 0xd2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mRenderMode:I

    .line 17
    const/16 v0, 0x320

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mMaxTime:I

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

    const/16 v1, 0x57

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x5e

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x65

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x6c

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x73

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x7a

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x81

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x8f

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x96

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x9d

    .line 44
    aput v3, v0, v1

    const/16 v1, 0xa2

    .line 45
    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v4, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v5, v0, v1

    const/16 v1, 0xaa

    aput v5, v0, v1

    const/16 v1, 0xab

    aput v5, v0, v1

    const/16 v1, 0xac

    aput v5, v0, v1

    const/16 v1, 0xad

    aput v5, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb9

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xc0

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc7

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xce

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xd5

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xdc

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xe3

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xea

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xf1

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf8

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xff

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x106

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x10d

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x114

    aput v4, v0, v1

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

    aput v4, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x129

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x130

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x137

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x13e

    .line 67
    aput v4, v0, v1

    const/16 v1, 0x145

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x14c

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x152

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x153

    aput v3, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x159

    .line 71
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x15b

    aput v7, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x162

    aput v3, v0, v1

    const/16 v1, 0x167

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x169

    aput v4, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x177

    aput v4, v0, v1

    const/16 v1, 0x17c

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x185

    aput v4, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x193

    aput v4, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19f

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x1a1

    aput v4, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1ad

    .line 83
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
    aput v4, v0, v1

    const/16 v1, 0x1bc

    aput v6, v0, v1

    const/16 v1, 0x1bd

    aput v4, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x1c2

    aput v3, v0, v1

    const/16 v1, 0x1c3

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v3, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c8

    .line 87
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1ca

    aput v4, v0, v1

    const/16 v1, 0x1cc

    aput v7, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d1

    aput v3, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v4, v0, v1

    const/16 v1, 0x1d8

    aput v4, v0, v1

    const/16 v1, 0x1da

    aput v4, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1df

    aput v3, v0, v1

    const/16 v1, 0x1e1

    aput v3, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v4, v0, v1

    const/16 v1, 0x1e6

    aput v4, v0, v1

    const/16 v1, 0x1e8

    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1ef

    aput v3, v0, v1

    const/16 v1, 0x1f2

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x1f4

    aput v4, v0, v1

    const/16 v1, 0x1f6

    aput v4, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fd

    aput v3, v0, v1

    const/16 v1, 0x200

    .line 95
    aput v4, v0, v1

    const/16 v1, 0x202

    aput v4, v0, v1

    const/16 v1, 0x204

    aput v4, v0, v1

    const/16 v1, 0x207

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20b

    aput v3, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x210

    aput v4, v0, v1

    const/16 v1, 0x212

    aput v4, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x217

    aput v3, v0, v1

    const/16 v1, 0x219

    aput v3, v0, v1

    const/16 v1, 0x21c

    .line 99
    aput v4, v0, v1

    const/16 v1, 0x21e

    aput v4, v0, v1

    const/16 v1, 0x220

    aput v4, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x227

    aput v3, v0, v1

    const/16 v1, 0x22a

    .line 101
    aput v4, v0, v1

    const/16 v1, 0x22c

    aput v4, v0, v1

    const/16 v1, 0x22e

    aput v4, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x235

    aput v3, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v4, v0, v1

    const/16 v1, 0x23a

    aput v4, v0, v1

    const/16 v1, 0x23c

    aput v4, v0, v1

    const/16 v1, 0x23f

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x241

    aput v3, v0, v1

    const/16 v1, 0x243

    aput v3, v0, v1

    const/16 v1, 0x246

    .line 105
    aput v4, v0, v1

    const/16 v1, 0x248

    aput v4, v0, v1

    const/16 v1, 0x24a

    aput v4, v0, v1

    const/16 v1, 0x24d

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x24f

    aput v3, v0, v1

    const/16 v1, 0x251

    aput v3, v0, v1

    const/16 v1, 0x254

    .line 107
    aput v4, v0, v1

    const/16 v1, 0x256

    aput v4, v0, v1

    const/16 v1, 0x258

    aput v4, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x25d

    aput v3, v0, v1

    const/16 v1, 0x25f

    aput v3, v0, v1

    const/16 v1, 0x262

    .line 109
    aput v4, v0, v1

    const/16 v1, 0x264

    aput v4, v0, v1

    const/16 v1, 0x266

    aput v4, v0, v1

    const/16 v1, 0x269

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x26b

    aput v3, v0, v1

    const/16 v1, 0x26d

    aput v3, v0, v1

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

    aput v3, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x28e

    aput v4, v0, v1

    const/16 v1, 0x290

    aput v4, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x295

    aput v3, v0, v1

    const/16 v1, 0x297

    aput v3, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x29b

    aput v6, v0, v1

    const/16 v1, 0x29c

    aput v4, v0, v1

    const/16 v1, 0x29d

    aput v6, v0, v1

    const/16 v1, 0x29e

    aput v4, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2a2

    aput v3, v0, v1

    const/16 v1, 0x2a3

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a9

    .line 119
    aput v4, v0, v1

    const/16 v1, 0x2ab

    aput v4, v0, v1

    const/16 v1, 0x2b0

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v3, v0, v1

    const/16 v1, 0x2b7

    .line 121
    aput v4, v0, v1

    const/16 v1, 0x2b9

    aput v4, v0, v1

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

    const/16 v1, 0x2dc

    aput v3, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x2e3

    aput v4, v0, v1

    const/16 v1, 0x2e8

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x2ea

    aput v3, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x2f1

    aput v4, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x2f8

    aput v3, v0, v1

    const/16 v1, 0x2fd

    .line 131
    aput v4, v0, v1

    const/16 v1, 0x2ff

    aput v4, v0, v1

    const/16 v1, 0x304

    .line 132
    aput v3, v0, v1

    const/16 v1, 0x306

    aput v3, v0, v1

    const/16 v1, 0x30b

    .line 133
    aput v4, v0, v1

    const/16 v1, 0x30c

    aput v6, v0, v1

    const/16 v1, 0x30d

    aput v4, v0, v1

    const/16 v1, 0x312

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x31a

    .line 135
    aput v4, v0, v1

    const/16 v1, 0x321

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x328

    .line 137
    aput v4, v0, v1

    const/16 v1, 0x32f

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x336

    .line 139
    aput v4, v0, v1

    const/16 v1, 0x33d

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x342

    .line 141
    aput v3, v0, v1

    const/16 v1, 0x344

    aput v4, v0, v1

    const/16 v1, 0x346

    aput v3, v0, v1

    const/16 v1, 0x349

    .line 142
    aput v5, v0, v1

    const/16 v1, 0x34a

    aput v5, v0, v1

    const/16 v1, 0x34b

    aput v5, v0, v1

    const/16 v1, 0x34c

    aput v5, v0, v1

    const/16 v1, 0x34d

    aput v5, v0, v1

    const/16 v1, 0x350

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x352

    aput v4, v0, v1

    const/16 v1, 0x354

    aput v3, v0, v1

    const/16 v1, 0x359

    .line 144
    aput v3, v0, v1

    const/16 v1, 0x360

    .line 145
    aput v4, v0, v1

    const/16 v1, 0x367

    .line 146
    aput v3, v0, v1

    const/16 v1, 0x36e

    .line 147
    aput v4, v0, v1

    const/16 v1, 0x375

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x37c

    .line 149
    aput v4, v0, v1

    const/16 v1, 0x382

    .line 150
    aput v3, v0, v1

    const/16 v1, 0x383

    aput v3, v0, v1

    const/16 v1, 0x384

    aput v3, v0, v1

    const/16 v1, 0x389

    .line 151
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x38b

    aput v7, v0, v1

    const/16 v1, 0x390

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x392

    aput v3, v0, v1

    const/16 v1, 0x397

    .line 153
    aput v4, v0, v1

    const/16 v1, 0x399

    aput v4, v0, v1

    const/16 v1, 0x39e

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a5

    .line 155
    aput v4, v0, v1

    const/16 v1, 0x3a7

    aput v4, v0, v1

    const/16 v1, 0x3ac

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3b3

    .line 157
    aput v4, v0, v1

    const/16 v1, 0x3b5

    aput v4, v0, v1

    const/16 v1, 0x3ba

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x3bc

    aput v3, v0, v1

    const/16 v1, 0x3c1

    .line 159
    aput v4, v0, v1

    const/16 v1, 0x3c3

    aput v4, v0, v1

    const/16 v1, 0x3c8

    .line 160
    aput v3, v0, v1

    const/16 v1, 0x3ca

    aput v3, v0, v1

    const/16 v1, 0x3cf

    .line 161
    aput v4, v0, v1

    const/16 v1, 0x3d1

    aput v4, v0, v1

    const/16 v1, 0x3d6

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x3d8

    aput v3, v0, v1

    const/16 v1, 0x3dd

    .line 163
    aput v4, v0, v1

    const/16 v1, 0x3df

    aput v4, v0, v1

    const/16 v1, 0x3e4

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x3e6

    aput v3, v0, v1

    const/16 v1, 0x3eb

    .line 165
    aput v4, v0, v1

    const/16 v1, 0x3ed

    aput v4, v0, v1

    const/16 v1, 0x3f2

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x3f3

    aput v6, v0, v1

    const/16 v1, 0x3f4

    aput v3, v0, v1

    const/16 v1, 0x3f8

    .line 167
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3f9

    aput v3, v0, v1

    const/16 v1, 0x3fa

    aput v3, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x3fc

    aput v7, v0, v1

    const/16 v1, 0x3ff

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x401

    aput v3, v0, v1

    const/16 v1, 0x403

    aput v3, v0, v1

    const/16 v1, 0x406

    .line 169
    aput v4, v0, v1

    const/16 v1, 0x408

    aput v4, v0, v1

    const/16 v1, 0x40a

    aput v4, v0, v1

    const/16 v1, 0x40d

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x40f

    aput v3, v0, v1

    const/16 v1, 0x411

    aput v3, v0, v1

    const/16 v1, 0x414

    .line 171
    aput v4, v0, v1

    const/16 v1, 0x416

    aput v4, v0, v1

    const/16 v1, 0x418

    aput v4, v0, v1

    const/16 v1, 0x41b

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x41d

    aput v3, v0, v1

    const/16 v1, 0x41f

    aput v3, v0, v1

    const/16 v1, 0x422

    .line 173
    aput v4, v0, v1

    const/16 v1, 0x424

    aput v4, v0, v1

    const/16 v1, 0x426

    aput v4, v0, v1

    const/16 v1, 0x429

    .line 174
    aput v3, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x430

    .line 175
    aput v4, v0, v1

    const/16 v1, 0x432

    aput v4, v0, v1

    const/16 v1, 0x434

    aput v4, v0, v1

    const/16 v1, 0x437

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x439

    aput v3, v0, v1

    const/16 v1, 0x43b

    aput v3, v0, v1

    const/16 v1, 0x43e

    .line 177
    aput v4, v0, v1

    const/16 v1, 0x440

    aput v4, v0, v1

    const/16 v1, 0x442

    aput v4, v0, v1

    const/16 v1, 0x445

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x447

    aput v3, v0, v1

    const/16 v1, 0x449

    aput v3, v0, v1

    const/16 v1, 0x44c

    .line 179
    aput v4, v0, v1

    const/16 v1, 0x44e

    aput v4, v0, v1

    const/16 v1, 0x450

    aput v4, v0, v1

    const/16 v1, 0x453

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x455

    aput v3, v0, v1

    const/16 v1, 0x457

    aput v3, v0, v1

    const/16 v1, 0x45a

    .line 181
    aput v4, v0, v1

    const/16 v1, 0x45c

    aput v4, v0, v1

    const/16 v1, 0x45e

    aput v4, v0, v1

    const/16 v1, 0x461

    .line 182
    aput v3, v0, v1

    const/16 v1, 0x463

    aput v3, v0, v1

    const/16 v1, 0x465

    aput v3, v0, v1

    const/16 v1, 0x468

    .line 183
    aput v4, v0, v1

    const/16 v1, 0x46a

    aput v4, v0, v1

    const/16 v1, 0x46c

    aput v4, v0, v1

    const/16 v1, 0x46f

    .line 184
    aput v3, v0, v1

    const/16 v1, 0x471

    aput v3, v0, v1

    const/16 v1, 0x473

    aput v3, v0, v1

    const/16 v1, 0x476

    .line 185
    aput v4, v0, v1

    const/16 v1, 0x478

    aput v4, v0, v1

    const/16 v1, 0x47a

    aput v4, v0, v1

    const/16 v1, 0x47d

    .line 186
    aput v3, v0, v1

    const/16 v1, 0x47f

    aput v3, v0, v1

    const/16 v1, 0x481

    aput v3, v0, v1

    const/16 v1, 0x484

    .line 187
    aput v4, v0, v1

    const/16 v1, 0x486

    aput v4, v0, v1

    const/16 v1, 0x488

    aput v4, v0, v1

    const/16 v1, 0x48b

    .line 188
    aput v3, v0, v1

    const/16 v1, 0x48d

    aput v3, v0, v1

    const/16 v1, 0x48f

    aput v3, v0, v1

    const/16 v1, 0x492

    .line 189
    aput v4, v0, v1

    const/16 v1, 0x494

    aput v4, v0, v1

    const/16 v1, 0x496

    aput v4, v0, v1

    const/16 v1, 0x499

    .line 190
    aput v3, v0, v1

    const/16 v1, 0x49b

    aput v3, v0, v1

    const/16 v1, 0x49d

    aput v3, v0, v1

    const/16 v1, 0x4a0

    .line 191
    aput v4, v0, v1

    const/16 v1, 0x4a2

    aput v4, v0, v1

    const/16 v1, 0x4a4

    aput v4, v0, v1

    const/16 v1, 0x4a7

    .line 192
    aput v3, v0, v1

    const/16 v1, 0x4a9

    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4ae

    .line 193
    aput v4, v0, v1

    const/16 v1, 0x4b0

    aput v4, v0, v1

    const/16 v1, 0x4b2

    aput v4, v0, v1

    const/16 v1, 0x4b5

    .line 194
    aput v3, v0, v1

    const/16 v1, 0x4b7

    aput v3, v0, v1

    const/16 v1, 0x4b9

    aput v3, v0, v1

    const/16 v1, 0x4bc

    .line 195
    aput v4, v0, v1

    const/16 v1, 0x4be

    aput v4, v0, v1

    const/16 v1, 0x4c0

    aput v4, v0, v1

    const/16 v1, 0x4c3

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x4c5

    aput v3, v0, v1

    const/16 v1, 0x4c7

    aput v3, v0, v1

    const/16 v1, 0x4ca

    .line 197
    aput v4, v0, v1

    const/16 v1, 0x4cb

    aput v6, v0, v1

    const/16 v1, 0x4cc

    aput v4, v0, v1

    const/16 v1, 0x4cd

    aput v6, v0, v1

    const/16 v1, 0x4ce

    aput v4, v0, v1

    const/16 v1, 0x4d1

    .line 198
    aput v3, v0, v1

    const/16 v1, 0x4d2

    aput v3, v0, v1

    const/16 v1, 0x4d3

    aput v3, v0, v1

    const/16 v1, 0x4d4

    aput v3, v0, v1

    const/16 v1, 0x4d5

    aput v3, v0, v1

    const/16 v1, 0x4d9

    .line 199
    aput v4, v0, v1

    const/16 v1, 0x4db

    aput v4, v0, v1

    const/16 v1, 0x4e0

    .line 200
    aput v3, v0, v1

    const/16 v1, 0x4e2

    aput v3, v0, v1

    const/16 v1, 0x4e7

    .line 201
    aput v4, v0, v1

    const/16 v1, 0x4e9

    aput v4, v0, v1

    const/16 v1, 0x4ee

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x4f0

    aput v3, v0, v1

    const/16 v1, 0x4f5

    .line 203
    aput v4, v0, v1

    const/16 v1, 0x4f7

    aput v4, v0, v1

    const/16 v1, 0x4fc

    .line 204
    aput v3, v0, v1

    const/16 v1, 0x4fe

    aput v3, v0, v1

    const/16 v1, 0x503

    .line 205
    aput v4, v0, v1

    const/16 v1, 0x505

    aput v4, v0, v1

    const/16 v1, 0x50a

    .line 206
    aput v3, v0, v1

    const/16 v1, 0x50c

    aput v3, v0, v1

    const/16 v1, 0x511

    .line 207
    aput v4, v0, v1

    const/16 v1, 0x513

    aput v4, v0, v1

    const/16 v1, 0x518

    .line 208
    aput v3, v0, v1

    const/16 v1, 0x51a

    aput v3, v0, v1

    const/16 v1, 0x51f

    .line 209
    aput v4, v0, v1

    const/16 v1, 0x521

    aput v4, v0, v1

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

    const/16 v1, 0x53c

    aput v6, v0, v1

    const/16 v1, 0x53d

    aput v4, v0, v1

    const/16 v1, 0x542

    .line 214
    aput v3, v0, v1

    const/16 v1, 0x543

    aput v3, v0, v1

    const/16 v1, 0x544

    aput v3, v0, v1

    const/16 v1, 0x54a

    .line 215
    aput v4, v0, v1

    const/16 v1, 0x551

    .line 216
    aput v3, v0, v1

    const/16 v1, 0x558

    .line 217
    aput v4, v0, v1

    const/16 v1, 0x55f

    .line 218
    aput v3, v0, v1

    const/16 v1, 0x566

    .line 219
    aput v4, v0, v1

    const/16 v1, 0x56d

    .line 220
    aput v3, v0, v1

    const/16 v1, 0x572

    .line 221
    aput v3, v0, v1

    const/16 v1, 0x574

    aput v4, v0, v1

    const/16 v1, 0x576

    aput v3, v0, v1

    const/16 v1, 0x579

    .line 222
    aput v5, v0, v1

    const/16 v1, 0x57a

    aput v5, v0, v1

    const/16 v1, 0x57b

    aput v5, v0, v1

    const/16 v1, 0x57c

    aput v5, v0, v1

    const/16 v1, 0x57d

    aput v5, v0, v1

    const/16 v1, 0x580

    .line 223
    aput v3, v0, v1

    const/16 v1, 0x582

    aput v4, v0, v1

    const/16 v1, 0x584

    aput v3, v0, v1

    const/16 v1, 0x589

    .line 224
    aput v3, v0, v1

    const/16 v1, 0x590

    .line 225
    aput v4, v0, v1

    const/16 v1, 0x597

    .line 226
    aput v3, v0, v1

    const/16 v1, 0x59e

    .line 227
    aput v4, v0, v1

    const/16 v1, 0x5a5

    .line 228
    aput v3, v0, v1

    const/16 v1, 0x5ac

    .line 229
    aput v4, v0, v1

    const/16 v1, 0x5b3

    .line 230
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mTiles:[I

    .line 235
    const/16 v0, 0x3f

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 237
    const v2, 0x13010309

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 238
    const v2, 0x33010213

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 239
    const v2, 0x33010413

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 240
    const v2, 0x33010123

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 241
    const v2, 0x40010323

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 242
    const v2, 0x33010523

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 243
    const v2, 0x13010340

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 244
    const v2, 0x33010249

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 245
    const v2, 0x13010449

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 246
    const v2, 0x13010263

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 247
    const v2, 0x13010463

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 248
    const v2, 0x33010173

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 249
    const v2, 0x40010373

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 250
    const v2, 0x13010573

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 251
    const v2, 0x13010293

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, 0x13010493

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 253
    const v2, 0x330103a1

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const v2, 0x400103a9

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 255
    const v2, 0x230103b9

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 258
    const v2, 0x4010108

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 259
    const v2, 0x4010508

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 260
    const v2, 0x401010a

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 261
    const v2, 0x401050a

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 262
    const v2, 0x4010211

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 263
    const v2, 0x4010411

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 264
    const v2, 0x4010121

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 265
    const v2, 0x4010321

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 266
    const v2, 0x4010521

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 267
    const v2, 0x401012f

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 268
    const v2, 0x401032f

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 269
    const v2, 0x401052f

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 270
    const v2, 0x401013f

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 271
    const v2, 0x401033f

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 272
    const v2, 0x401053f

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 273
    const v2, 0x4010251

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 274
    const v2, 0x4010451

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 275
    const v2, 0x4010158

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 276
    const v2, 0x4010558

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 277
    const v2, 0x401015a

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 278
    const v2, 0x401055a

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 279
    const v2, 0x4010261

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 280
    const v2, 0x4010461

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 281
    const v2, 0x4010171

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 282
    const v2, 0x4010371

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 283
    const v2, 0x4010571

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 284
    const v2, 0x401017f

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 285
    const v2, 0x401037f

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 286
    const v2, 0x401057f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 287
    const v2, 0x401018f

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 288
    const v2, 0x401038f

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 289
    const v2, 0x401058f

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 290
    const v2, 0x40102a1

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 291
    const v2, 0x40104a1

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 292
    const v2, 0x40101a8

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 293
    const v2, 0x40105a8

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 294
    const v2, 0x40101aa

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 295
    const v2, 0x40105aa

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 296
    const v2, 0x40101b8

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 297
    const v2, 0x40105b8

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 298
    const v2, 0x40101ba

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 299
    const v2, 0x40105ba

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 300
    const v2, 0x630103c9

    aput v2, v0, v1

    .line 235
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_03;->mObjects:[I

    .line 303
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
