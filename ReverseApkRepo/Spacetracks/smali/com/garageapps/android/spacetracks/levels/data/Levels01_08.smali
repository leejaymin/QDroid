.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_08.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000400

    const v6, 0x1000b00

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mSizeX:I

    .line 11
    const/16 v0, 0xd2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mMaxTime:I

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
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x5e

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x65

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x6c

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x73

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x7a

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x81

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x8f

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x96

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x9d

    .line 44
    aput v4, v0, v1

    const/16 v1, 0xa4

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v5, v0, v1

    const/16 v1, 0xaa

    aput v5, v0, v1

    const/16 v1, 0xab

    aput v6, v0, v1

    const/16 v1, 0xac

    aput v5, v0, v1

    const/16 v1, 0xad

    aput v5, v0, v1

    const/16 v1, 0xb2

    .line 47
    aput v4, v0, v1

    const/16 v1, 0xb9

    .line 48
    aput v4, v0, v1

    const/16 v1, 0xc0

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc7

    .line 50
    aput v4, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v5, v0, v1

    const/16 v1, 0xcd

    aput v5, v0, v1

    const/16 v1, 0xce

    aput v6, v0, v1

    const/16 v1, 0xcf

    aput v5, v0, v1

    const/16 v1, 0xd0

    aput v5, v0, v1

    const/16 v1, 0xd5

    .line 52
    aput v4, v0, v1

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
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v7, v0, v1

    const/16 v1, 0xfe

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x105

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x10c

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x10d

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v4, v0, v1

    const/16 v1, 0x113

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x115

    aput v4, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x129

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v4, v0, v1

    const/16 v1, 0x12f

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x131

    aput v4, v0, v1

    const/16 v1, 0x137

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x13d

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x144

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x14b

    .line 69
    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v4, v0, v1

    const/16 v1, 0x152

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x154

    aput v4, v0, v1

    const/16 v1, 0x159

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x161

    aput v4, v0, v1

    const/16 v1, 0x162

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

    const/16 v1, 0x175

    .line 75
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v7, v0, v1

    const/16 v1, 0x17c

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v4, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v4, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    const/16 v1, 0x19f

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x1a1

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

    const/16 v1, 0x1b5

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x1bc

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x1c3

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x1ca

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v5, v0, v1

    const/16 v1, 0x1d0

    aput v5, v0, v1

    const/16 v1, 0x1d1

    aput v6, v0, v1

    const/16 v1, 0x1d2

    aput v5, v0, v1

    const/16 v1, 0x1d3

    aput v5, v0, v1

    const/16 v1, 0x1d8

    .line 89
    aput v4, v0, v1

    const/16 v1, 0x1df

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x1e6

    .line 91
    aput v4, v0, v1

    const/16 v1, 0x1ed

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x1f2

    .line 93
    aput v5, v0, v1

    const/16 v1, 0x1f3

    aput v5, v0, v1

    const/16 v1, 0x1f4

    aput v6, v0, v1

    const/16 v1, 0x1f5

    aput v5, v0, v1

    const/16 v1, 0x1f6

    aput v5, v0, v1

    const/16 v1, 0x1fb

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x202

    .line 95
    aput v4, v0, v1

    const/16 v1, 0x209

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x210

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x216

    aput v3, v0, v1

    const/16 v1, 0x217

    aput v3, v0, v1

    const/16 v1, 0x218

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

    const/16 v1, 0x224

    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x227

    aput v3, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x22c

    aput v4, v0, v1

    const/16 v1, 0x22d

    aput v3, v0, v1

    const/16 v1, 0x233

    .line 102
    aput v4, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x23a

    aput v4, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x24a

    aput v4, v0, v1

    const/16 v1, 0x24d

    .line 106
    aput v4, v0, v1

    const/16 v1, 0x251

    aput v4, v0, v1

    const/16 v1, 0x254

    .line 107
    aput v4, v0, v1

    const/16 v1, 0x258

    aput v4, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v4, v0, v1

    const/16 v1, 0x25f

    aput v4, v0, v1

    const/16 v1, 0x262

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x263

    aput v3, v0, v1

    const/16 v1, 0x266

    aput v4, v0, v1

    const/16 v1, 0x26a

    .line 110
    aput v4, v0, v1

    const/16 v1, 0x26d

    aput v4, v0, v1

    const/16 v1, 0x270

    .line 111
    aput v3, v0, v1

    const/16 v1, 0x271

    aput v3, v0, v1

    const/16 v1, 0x274

    aput v4, v0, v1

    const/16 v1, 0x277

    .line 112
    aput v4, v0, v1

    const/16 v1, 0x27b

    aput v4, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x27f

    aput v3, v0, v1

    const/16 v1, 0x282

    aput v4, v0, v1

    const/16 v1, 0x286

    .line 114
    aput v4, v0, v1

    const/16 v1, 0x289

    aput v4, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x28d

    aput v3, v0, v1

    const/16 v1, 0x290

    aput v4, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v4, v0, v1

    const/16 v1, 0x297

    aput v4, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29b

    aput v3, v0, v1

    const/16 v1, 0x29e

    aput v4, v0, v1

    const/16 v1, 0x2a2

    .line 118
    aput v4, v0, v1

    const/16 v1, 0x2a5

    aput v4, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2a9

    aput v3, v0, v1

    const/16 v1, 0x2ac

    aput v4, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v4, v0, v1

    const/16 v1, 0x2b3

    aput v4, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v4, v0, v1

    const/16 v1, 0x2ba

    aput v4, v0, v1

    const/16 v1, 0x2bd

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x2c1

    aput v4, v0, v1

    const/16 v1, 0x2c4

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x2c6

    aput v3, v0, v1

    const/16 v1, 0x2c8

    aput v3, v0, v1

    const/16 v1, 0x2cb

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x2cc

    aput v3, v0, v1

    const/16 v1, 0x2cd

    aput v3, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2cf

    aput v3, v0, v1

    const/16 v1, 0x2d3

    .line 125
    aput v7, v0, v1

    const/16 v1, 0x2d4

    aput v3, v0, v1

    const/16 v1, 0x2d5

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2db

    .line 126
    aput v5, v0, v1

    const/16 v1, 0x2e2

    .line 127
    aput v5, v0, v1

    const/16 v1, 0x2e9

    .line 128
    aput v5, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v5, v0, v1

    const/16 v1, 0x2f0

    aput v6, v0, v1

    const/16 v1, 0x2f1

    aput v5, v0, v1

    const/16 v1, 0x2f5

    .line 130
    aput v5, v0, v1

    const/16 v1, 0x2f6

    aput v5, v0, v1

    const/16 v1, 0x2f7

    aput v6, v0, v1

    const/16 v1, 0x2f8

    aput v5, v0, v1

    const/16 v1, 0x2f9

    aput v5, v0, v1

    const/16 v1, 0x2fe

    .line 131
    aput v5, v0, v1

    const/16 v1, 0x305

    .line 132
    aput v5, v0, v1

    const/16 v1, 0x30c

    .line 133
    aput v5, v0, v1

    const/16 v1, 0x312

    .line 134
    aput v5, v0, v1

    const/16 v1, 0x313

    aput v6, v0, v1

    const/16 v1, 0x314

    aput v5, v0, v1

    const/16 v1, 0x318

    .line 135
    aput v5, v0, v1

    const/16 v1, 0x319

    aput v5, v0, v1

    const/16 v1, 0x31a

    aput v6, v0, v1

    const/16 v1, 0x31b

    aput v5, v0, v1

    const/16 v1, 0x31c

    aput v5, v0, v1

    const/16 v1, 0x31f

    .line 136
    aput v5, v0, v1

    const/16 v1, 0x321

    aput v4, v0, v1

    const/16 v1, 0x323

    aput v5, v0, v1

    const/16 v1, 0x326

    .line 137
    aput v5, v0, v1

    const/16 v1, 0x328

    aput v4, v0, v1

    const/16 v1, 0x32a

    aput v5, v0, v1

    const/16 v1, 0x32f

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x336

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x33d

    .line 140
    aput v4, v0, v1

    const/16 v1, 0x343

    .line 141
    aput v3, v0, v1

    const/16 v1, 0x344

    aput v4, v0, v1

    const/16 v1, 0x345

    aput v3, v0, v1

    const/16 v1, 0x349

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x34a

    aput v4, v0, v1

    const/16 v1, 0x34b

    aput v4, v0, v1

    const/16 v1, 0x34c

    aput v4, v0, v1

    const/16 v1, 0x34d

    aput v3, v0, v1

    const/16 v1, 0x350

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x351

    aput v4, v0, v1

    const/16 v1, 0x352

    aput v3, v0, v1

    const/16 v1, 0x353

    aput v4, v0, v1

    const/16 v1, 0x354

    aput v3, v0, v1

    const/16 v1, 0x358

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x35a

    aput v4, v0, v1

    const/16 v1, 0x35e

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x35f

    aput v3, v0, v1

    const/16 v1, 0x360

    aput v3, v0, v1

    const/16 v1, 0x361

    aput v3, v0, v1

    const/16 v1, 0x362

    aput v3, v0, v1

    const/16 v1, 0x365

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x367

    aput v4, v0, v1

    const/16 v1, 0x369

    aput v4, v0, v1

    const/16 v1, 0x36c

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x36d

    aput v3, v0, v1

    const/16 v1, 0x36e

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x370

    aput v3, v0, v1

    const/16 v1, 0x374

    .line 148
    aput v4, v0, v1

    const/16 v1, 0x376

    aput v4, v0, v1

    const/16 v1, 0x37b

    .line 149
    aput v4, v0, v1

    const/16 v1, 0x37d

    aput v4, v0, v1

    const/16 v1, 0x381

    .line 150
    aput v3, v0, v1

    const/16 v1, 0x382

    aput v3, v0, v1

    const/16 v1, 0x383

    aput v3, v0, v1

    const/16 v1, 0x384

    aput v3, v0, v1

    const/16 v1, 0x385

    aput v3, v0, v1

    const/16 v1, 0x388

    .line 151
    aput v4, v0, v1

    const/16 v1, 0x38a

    aput v4, v0, v1

    const/16 v1, 0x38c

    aput v4, v0, v1

    const/16 v1, 0x38f

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x390

    aput v3, v0, v1

    const/16 v1, 0x391

    aput v3, v0, v1

    const/16 v1, 0x392

    aput v3, v0, v1

    const/16 v1, 0x393

    aput v3, v0, v1

    const/16 v1, 0x397

    .line 153
    aput v4, v0, v1

    const/16 v1, 0x399

    aput v4, v0, v1

    const/16 v1, 0x39d

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x39e

    aput v3, v0, v1

    const/16 v1, 0x39f

    aput v3, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a1

    aput v3, v0, v1

    const/16 v1, 0x3a4

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x3a5

    aput v3, v0, v1

    const/16 v1, 0x3a6

    aput v4, v0, v1

    const/16 v1, 0x3a7

    aput v3, v0, v1

    const/16 v1, 0x3a8

    aput v3, v0, v1

    const/16 v1, 0x3ac

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x3ad

    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3b4

    .line 157
    aput v4, v0, v1

    const/16 v1, 0x3bb

    .line 158
    aput v4, v0, v1

    const/16 v1, 0x3c2

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c9

    .line 160
    aput v6, v0, v1

    const/16 v1, 0x3ca

    aput v6, v0, v1

    const/16 v1, 0x3d0

    .line 161
    aput v6, v0, v1

    const/16 v1, 0x3d1

    aput v6, v0, v1

    const/16 v1, 0x3d7

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x3d8

    aput v3, v0, v1

    const/16 v1, 0x3df

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x3e0

    aput v3, v0, v1

    const/16 v1, 0x3e6

    .line 164
    aput v6, v0, v1

    const/16 v1, 0x3e7

    aput v6, v0, v1

    const/16 v1, 0x3ed

    .line 165
    aput v6, v0, v1

    const/16 v1, 0x3ee

    aput v6, v0, v1

    const/16 v1, 0x3f4

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v3, v0, v1

    const/16 v1, 0x3fa

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x401

    .line 168
    aput v6, v0, v1

    const/16 v1, 0x402

    aput v6, v0, v1

    const/16 v1, 0x408

    .line 169
    aput v6, v0, v1

    const/16 v1, 0x409

    aput v6, v0, v1

    const/16 v1, 0x40f

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x410

    aput v3, v0, v1

    const/16 v1, 0x415

    .line 171
    aput v3, v0, v1

    const/16 v1, 0x416

    aput v4, v0, v1

    const/16 v1, 0x41c

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x41d

    aput v4, v0, v1

    const/16 v1, 0x423

    .line 173
    aput v4, v0, v1

    const/16 v1, 0x424

    aput v4, v0, v1

    const/16 v1, 0x42a

    .line 174
    aput v4, v0, v1

    const/16 v1, 0x42b

    aput v4, v0, v1

    const/16 v1, 0x430

    .line 175
    aput v5, v0, v1

    const/16 v1, 0x431

    aput v6, v0, v1

    const/16 v1, 0x432

    aput v6, v0, v1

    const/16 v1, 0x433

    aput v5, v0, v1

    const/16 v1, 0x434

    aput v5, v0, v1

    const/16 v1, 0x437

    .line 176
    aput v5, v0, v1

    const/16 v1, 0x438

    aput v6, v0, v1

    const/16 v1, 0x439

    aput v6, v0, v1

    const/16 v1, 0x43a

    aput v5, v0, v1

    const/16 v1, 0x43b

    aput v5, v0, v1

    const/16 v1, 0x43e

    .line 177
    aput v4, v0, v1

    const/16 v1, 0x441

    aput v3, v0, v1

    const/16 v1, 0x442

    aput v3, v0, v1

    const/16 v1, 0x445

    .line 178
    aput v4, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x449

    aput v3, v0, v1

    const/16 v1, 0x44c

    .line 179
    aput v4, v0, v1

    const/16 v1, 0x44f

    aput v4, v0, v1

    const/16 v1, 0x453

    .line 180
    aput v4, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    const/16 v1, 0x457

    aput v3, v0, v1

    const/16 v1, 0x45a

    .line 181
    aput v3, v0, v1

    const/16 v1, 0x45b

    aput v3, v0, v1

    const/16 v1, 0x45d

    aput v3, v0, v1

    const/16 v1, 0x45e

    aput v3, v0, v1

    const/16 v1, 0x462

    .line 182
    aput v4, v0, v1

    const/16 v1, 0x465

    aput v4, v0, v1

    const/16 v1, 0x468

    .line 183
    aput v3, v0, v1

    const/16 v1, 0x469

    aput v3, v0, v1

    const/16 v1, 0x46b

    aput v3, v0, v1

    const/16 v1, 0x46c

    aput v3, v0, v1

    const/16 v1, 0x46f

    .line 184
    aput v4, v0, v1

    const/16 v1, 0x472

    aput v3, v0, v1

    const/16 v1, 0x473

    aput v3, v0, v1

    const/16 v1, 0x476

    .line 185
    aput v4, v0, v1

    const/16 v1, 0x479

    aput v4, v0, v1

    const/16 v1, 0x47d

    .line 186
    aput v4, v0, v1

    const/16 v1, 0x480

    aput v3, v0, v1

    const/16 v1, 0x481

    aput v3, v0, v1

    const/16 v1, 0x484

    .line 187
    aput v4, v0, v1

    const/16 v1, 0x487

    aput v3, v0, v1

    const/16 v1, 0x488

    aput v3, v0, v1

    const/16 v1, 0x48b

    .line 188
    aput v3, v0, v1

    const/16 v1, 0x48c

    aput v3, v0, v1

    const/16 v1, 0x48f

    aput v4, v0, v1

    const/16 v1, 0x493

    .line 189
    aput v4, v0, v1

    const/16 v1, 0x495

    aput v3, v0, v1

    const/16 v1, 0x496

    aput v3, v0, v1

    const/16 v1, 0x499

    .line 190
    aput v3, v0, v1

    const/16 v1, 0x49a

    aput v3, v0, v1

    const/16 v1, 0x49c

    aput v3, v0, v1

    const/16 v1, 0x49d

    aput v3, v0, v1

    const/16 v1, 0x4a0

    .line 191
    aput v4, v0, v1

    const/16 v1, 0x4a3

    aput v4, v0, v1

    const/16 v1, 0x4a7

    .line 192
    aput v3, v0, v1

    const/16 v1, 0x4aa

    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4ae

    .line 193
    aput v4, v0, v1

    const/16 v1, 0x4b1

    aput v3, v0, v1

    const/16 v1, 0x4b2

    aput v3, v0, v1

    const/16 v1, 0x4b5

    .line 194
    aput v3, v0, v1

    const/16 v1, 0x4b9

    aput v4, v0, v1

    const/16 v1, 0x4bc

    .line 195
    aput v3, v0, v1

    const/16 v1, 0x4c0

    aput v4, v0, v1

    const/16 v1, 0x4c3

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x4c4

    aput v3, v0, v1

    const/16 v1, 0x4c5

    aput v3, v0, v1

    const/16 v1, 0x4c6

    aput v3, v0, v1

    const/16 v1, 0x4c7

    aput v3, v0, v1

    const/16 v1, 0x4ca

    .line 197
    aput v4, v0, v1

    const/16 v1, 0x4cb

    aput v3, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    aput v3, v0, v1

    const/16 v1, 0x4ce

    aput v4, v0, v1

    const/16 v1, 0x4d1

    .line 198
    aput v3, v0, v1

    const/16 v1, 0x4d2

    aput v7, v0, v1

    const/16 v1, 0x4d3

    aput v3, v0, v1

    const/16 v1, 0x4d4

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x4d5

    aput v3, v0, v1

    const/16 v1, 0x4d8

    .line 199
    aput v5, v0, v1

    const/16 v1, 0x4da

    aput v4, v0, v1

    const/16 v1, 0x4dc

    aput v5, v0, v1

    const/16 v1, 0x4df

    .line 200
    aput v5, v0, v1

    const/16 v1, 0x4e1

    aput v4, v0, v1

    const/16 v1, 0x4e3

    aput v5, v0, v1

    const/16 v1, 0x4e8

    .line 201
    aput v4, v0, v1

    const/16 v1, 0x4ef

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x4f6

    .line 203
    aput v3, v0, v1

    const/16 v1, 0x4fc

    .line 204
    aput v3, v0, v1

    const/16 v1, 0x4fd

    aput v4, v0, v1

    const/16 v1, 0x4fe

    aput v3, v0, v1

    const/16 v1, 0x502

    .line 205
    aput v3, v0, v1

    const/16 v1, 0x503

    aput v3, v0, v1

    const/16 v1, 0x504

    aput v4, v0, v1

    const/16 v1, 0x505

    aput v3, v0, v1

    const/16 v1, 0x506

    aput v3, v0, v1

    const/16 v1, 0x509

    .line 206
    aput v4, v0, v1

    const/16 v1, 0x50a

    aput v3, v0, v1

    const/16 v1, 0x50b

    aput v4, v0, v1

    const/16 v1, 0x50c

    aput v3, v0, v1

    const/16 v1, 0x50d

    aput v4, v0, v1

    const/16 v1, 0x510

    .line 207
    aput v4, v0, v1

    const/16 v1, 0x512

    aput v4, v0, v1

    const/16 v1, 0x514

    aput v4, v0, v1

    const/16 v1, 0x517

    .line 208
    aput v3, v0, v1

    const/16 v1, 0x51b

    aput v3, v0, v1

    const/16 v1, 0x51e

    .line 209
    aput v4, v0, v1

    const/16 v1, 0x522

    aput v4, v0, v1

    const/16 v1, 0x525

    .line 210
    aput v4, v0, v1

    const/16 v1, 0x527

    const v2, 0x1000300

    aput v2, v0, v1

    const/16 v1, 0x529

    aput v4, v0, v1

    const/16 v1, 0x52c

    .line 211
    aput v3, v0, v1

    const/16 v1, 0x52e

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x530

    aput v3, v0, v1

    const/16 v1, 0x533

    .line 212
    aput v4, v0, v1

    const/16 v1, 0x537

    aput v4, v0, v1

    const/16 v1, 0x53a

    .line 213
    aput v4, v0, v1

    const/16 v1, 0x53e

    aput v4, v0, v1

    const/16 v1, 0x541

    .line 214
    aput v3, v0, v1

    const/16 v1, 0x542

    aput v3, v0, v1

    const/16 v1, 0x544

    aput v3, v0, v1

    const/16 v1, 0x545

    aput v3, v0, v1

    const/16 v1, 0x549

    .line 215
    aput v4, v0, v1

    const/16 v1, 0x54b

    aput v4, v0, v1

    const/16 v1, 0x550

    .line 216
    aput v4, v0, v1

    const/16 v1, 0x552

    aput v4, v0, v1

    const/16 v1, 0x556

    .line 217
    aput v3, v0, v1

    const/16 v1, 0x557

    aput v3, v0, v1

    const/16 v1, 0x559

    aput v3, v0, v1

    const/16 v1, 0x55a

    aput v3, v0, v1

    const/16 v1, 0x55d

    .line 218
    aput v4, v0, v1

    const/16 v1, 0x561

    aput v4, v0, v1

    const/16 v1, 0x564

    .line 219
    aput v4, v0, v1

    const/16 v1, 0x568

    aput v4, v0, v1

    const/16 v1, 0x56b

    .line 220
    aput v3, v0, v1

    const/16 v1, 0x56d

    const v2, 0x1000300

    aput v2, v0, v1

    const/16 v1, 0x56f

    aput v3, v0, v1

    const/16 v1, 0x572

    .line 221
    aput v4, v0, v1

    const/16 v1, 0x574

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x576

    aput v4, v0, v1

    const/16 v1, 0x579

    .line 222
    aput v4, v0, v1

    const/16 v1, 0x57d

    aput v4, v0, v1

    const/16 v1, 0x580

    .line 223
    aput v3, v0, v1

    const/16 v1, 0x584

    aput v3, v0, v1

    const/16 v1, 0x587

    .line 224
    aput v4, v0, v1

    const/16 v1, 0x589

    aput v3, v0, v1

    const/16 v1, 0x58b

    aput v4, v0, v1

    const/16 v1, 0x58e

    .line 225
    aput v4, v0, v1

    const/16 v1, 0x58f

    aput v3, v0, v1

    const/16 v1, 0x590

    aput v3, v0, v1

    const/16 v1, 0x591

    aput v3, v0, v1

    const/16 v1, 0x592

    aput v4, v0, v1

    const/16 v1, 0x595

    .line 226
    aput v3, v0, v1

    const/16 v1, 0x596

    aput v7, v0, v1

    const/16 v1, 0x597

    aput v3, v0, v1

    const/16 v1, 0x598

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x599

    aput v3, v0, v1

    const/16 v1, 0x59d

    .line 227
    aput v3, v0, v1

    const/16 v1, 0x59e

    aput v4, v0, v1

    const/16 v1, 0x59f

    aput v3, v0, v1

    const/16 v1, 0x5a5

    .line 228
    aput v4, v0, v1

    const/16 v1, 0x5ac

    .line 229
    aput v4, v0, v1

    const/16 v1, 0x5b3

    .line 230
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mTiles:[I

    .line 235
    const/16 v0, 0x56

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 237
    const v2, 0x1001020e

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 238
    const v2, 0x1001040e

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 239
    const v2, 0x30010114

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 240
    const v2, 0x10010514

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 241
    const v2, 0x2001031d

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 242
    const v2, 0x3001042f

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 243
    const v2, 0x20010437

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 244
    const v2, 0x3001024f

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 245
    const v2, 0x30010454

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 246
    const v2, 0x1001035c

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 247
    const v2, 0x1001035d

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 248
    const v2, 0x20010363

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 249
    const v2, 0x3001016e

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 250
    const v2, 0x1001056e

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 251
    const v2, 0x1001057a

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, 0x20010381

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 253
    const v2, 0x3001038a

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const v2, 0x3001038f

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 255
    const v2, 0x10010398

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 256
    const v2, 0x10010399

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 257
    const v2, 0x400103b1

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 258
    const v2, 0x210103b3

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 261
    const v2, 0x1010204

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 262
    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 263
    const v2, 0x1010105

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 264
    const v2, 0x1010505

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 265
    const v2, 0x1010307

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 266
    const v2, 0x101030a

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 267
    const v2, 0x101030b

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 268
    const v2, 0x1010314

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 269
    const v2, 0x1010315

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 270
    const v2, 0x1010219

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 271
    const v2, 0x1010419

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 272
    const v2, 0x101021b

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 273
    const v2, 0x101041b

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 274
    const v2, 0x101011f

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 275
    const v2, 0x101051f

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 276
    const v2, 0x1010120

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 277
    const v2, 0x1010520

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 278
    const v2, 0x1010323

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 279
    const v2, 0x1010138

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 280
    const v2, 0x1010538

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 281
    const v2, 0x101043d

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 282
    const v2, 0x1010340

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 283
    const v2, 0x1010541

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 284
    const v2, 0x1010544

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 285
    const v2, 0x1010345

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 286
    const v2, 0x101024b

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 287
    const v2, 0x101044b

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 288
    const v2, 0x101014c

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 289
    const v2, 0x101054c

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 290
    const v2, 0x1010159

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 291
    const v2, 0x1010559

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 292
    const v2, 0x101025a

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 293
    const v2, 0x101045a

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 294
    const v2, 0x1010160

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 295
    const v2, 0x1010560

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 296
    const v2, 0x1010165

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 297
    const v2, 0x1010565

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 298
    const v2, 0x101026b

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 299
    const v2, 0x101046b

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 300
    const v2, 0x101036c

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 301
    const v2, 0x1010280

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 302
    const v2, 0x1010480

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 303
    const v2, 0x1010282

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 304
    const v2, 0x1010482

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 305
    const v2, 0x101018a

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 306
    const v2, 0x101058a

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 307
    const v2, 0x101018f

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 308
    const v2, 0x101058f

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 309
    const v2, 0x1010395

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 310
    const v2, 0x1010398

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 311
    const v2, 0x1010399

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 312
    const v2, 0x101039c

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 313
    const v2, 0x10103a0

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 314
    const v2, 0x10103a3

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 315
    const v2, 0x10103a7

    aput v2, v0, v1

    const/16 v1, 0x4d

    .line 316
    const v2, 0x10103aa

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 317
    const v2, 0x10103ab

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 318
    const v2, 0x10103ae

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 319
    const v2, 0x10101b4

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 320
    const v2, 0x10105b4

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 321
    const v2, 0x10101b9

    aput v2, v0, v1

    const/16 v1, 0x53

    .line 322
    const v2, 0x10105b9

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 323
    const v2, 0x630103c9

    aput v2, v0, v1

    .line 235
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_08;->mObjects:[I

    .line 326
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
