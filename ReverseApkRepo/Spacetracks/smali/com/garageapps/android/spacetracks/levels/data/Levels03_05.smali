.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_05.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xb000800

    const v6, 0xa000800

    const v5, 0x1000900

    const v4, 0x10a0800

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mMaxTime:I

    .line 21
    const/16 v0, 0x460

    new-array v0, v0, [I

    const/16 v1, 0x47

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x56

    aput v5, v0, v1

    const/16 v1, 0x57

    aput v5, v0, v1

    const/16 v1, 0x58

    aput v5, v0, v1

    const/16 v1, 0x59

    aput v3, v0, v1

    const/16 v1, 0x5c

    .line 35
    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x60

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x64

    aput v3, v0, v1

    const/16 v1, 0x65

    const v2, 0x10a0200

    aput v2, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v7, v0, v1

    const/16 v1, 0x6b

    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

    const/16 v1, 0x6e

    const v2, 0xa000100

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 38
    aput v7, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    aput v6, v0, v1

    const/16 v1, 0x7a

    .line 39
    aput v5, v0, v1

    const/16 v1, 0x81

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x8f

    .line 42
    aput v5, v0, v1

    const/16 v1, 0x90

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 43
    aput v7, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x9e

    .line 44
    aput v7, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa5

    .line 45
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0xab

    .line 46
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v6, v0, v1

    const/16 v1, 0xb1

    .line 47
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v6, v0, v1

    const/16 v1, 0xb7

    .line 48
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v6, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v6, v0, v1

    const/16 v1, 0xc5

    .line 50
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v7, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xce

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v7, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xdc

    .line 53
    aput v7, v0, v1

    const/16 v1, 0xdd

    aput v3, v0, v1

    const/16 v1, 0xde

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xe4

    .line 54
    aput v7, v0, v1

    const/16 v1, 0xe5

    aput v3, v0, v1

    const/16 v1, 0xeb

    .line 55
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xec

    aput v3, v0, v1

    const/16 v1, 0xf1

    .line 56
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v6, v0, v1

    const/16 v1, 0xf7

    .line 57
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v6, v0, v1

    const/16 v1, 0xfd

    .line 58
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0xff

    aput v6, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x105

    aput v6, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x113

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v7, v0, v1

    const/16 v1, 0x121

    aput v3, v0, v1

    const/16 v1, 0x122

    aput v4, v0, v1

    const/16 v1, 0x123

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x128

    .line 64
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x129

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12f

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x131

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x136

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x137

    aput v4, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x13d

    .line 67
    aput v5, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x144

    .line 68
    aput v7, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v6, v0, v1

    const/16 v1, 0x14c

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x153

    .line 70
    aput v5, v0, v1

    const/16 v1, 0x15a

    .line 71
    aput v5, v0, v1

    const/16 v1, 0x161

    .line 72
    aput v5, v0, v1

    const/16 v1, 0x168

    .line 73
    aput v5, v0, v1

    const/16 v1, 0x16e

    .line 74
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x16f

    aput v5, v0, v1

    const/16 v1, 0x170

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x178

    aput v4, v0, v1

    const/16 v1, 0x17b

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17c

    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x182

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x183

    const v2, 0x10a0900

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    const v2, 0x10a0900

    aput v2, v0, v1

    const/16 v1, 0x186

    aput v3, v0, v1

    const/16 v1, 0x189

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18a

    aput v3, v0, v1

    const/16 v1, 0x18b

    aput v4, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x18d

    aput v3, v0, v1

    const/16 v1, 0x190

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x194

    aput v4, v0, v1

    const/16 v1, 0x197

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x198

    aput v5, v0, v1

    const/16 v1, 0x199

    aput v4, v0, v1

    const/16 v1, 0x19a

    aput v5, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    const/16 v1, 0x19e

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x19f

    aput v3, v0, v1

    const/16 v1, 0x1a0

    aput v3, v0, v1

    const/16 v1, 0x1a1

    aput v3, v0, v1

    const/16 v1, 0x1a2

    aput v4, v0, v1

    const/16 v1, 0x1a5

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x1a6

    aput v3, v0, v1

    const/16 v1, 0x1a7

    aput v4, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1a9

    aput v3, v0, v1

    const/16 v1, 0x1ac

    .line 83
    aput v4, v0, v1

    const/16 v1, 0x1ad

    aput v5, v0, v1

    const/16 v1, 0x1ae

    aput v3, v0, v1

    const/16 v1, 0x1af

    aput v5, v0, v1

    const/16 v1, 0x1b0

    aput v4, v0, v1

    const/16 v1, 0x1b3

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x1b4

    aput v3, v0, v1

    const/16 v1, 0x1b5

    aput v4, v0, v1

    const/16 v1, 0x1b6

    aput v3, v0, v1

    const/16 v1, 0x1b7

    aput v3, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v3, v0, v1

    const/16 v1, 0x1be

    aput v4, v0, v1

    const/16 v1, 0x1c2

    .line 86
    aput v5, v0, v1

    const/16 v1, 0x1c3

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c9

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x1ca

    aput v3, v0, v1

    const/16 v1, 0x1cb

    aput v3, v0, v1

    const/16 v1, 0x1d0

    .line 88
    aput v4, v0, v1

    const/16 v1, 0x1d1

    aput v4, v0, v1

    const/16 v1, 0x1d2

    aput v3, v0, v1

    const/16 v1, 0x1d7

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1d8

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v5, v0, v1

    const/16 v1, 0x1de

    .line 90
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1df

    aput v3, v0, v1

    const/16 v1, 0x1e0

    aput v3, v0, v1

    const/16 v1, 0x1e5

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v4, v0, v1

    const/16 v1, 0x1e7

    aput v4, v0, v1

    const/16 v1, 0x1ec

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f4

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1f5

    aput v4, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v4, v0, v1

    const/16 v1, 0x202

    aput v4, v0, v1

    const/16 v1, 0x203

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20f

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x216

    .line 98
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x217

    aput v4, v0, v1

    const/16 v1, 0x218

    aput v5, v0, v1

    const/16 v1, 0x21d

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x21e

    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v3, v0, v1

    const/16 v1, 0x224

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x225

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v5, v0, v1

    const/16 v1, 0x22c

    aput v3, v0, v1

    const/16 v1, 0x22d

    aput v5, v0, v1

    const/16 v1, 0x232

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x234

    aput v3, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v5, v0, v1

    const/16 v1, 0x242

    aput v5, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x249

    aput v3, v0, v1

    const/16 v1, 0x24e

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x250

    aput v3, v0, v1

    const/16 v1, 0x255

    .line 107
    aput v5, v0, v1

    const/16 v1, 0x257

    aput v5, v0, v1

    const/16 v1, 0x25b

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x25c

    aput v3, v0, v1

    const/16 v1, 0x25e

    aput v3, v0, v1

    const/16 v1, 0x25f

    aput v3, v0, v1

    const/16 v1, 0x262

    .line 109
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x263

    aput v3, v0, v1

    const/16 v1, 0x265

    aput v3, v0, v1

    const/16 v1, 0x266

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x269

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x26d

    aput v3, v0, v1

    const/16 v1, 0x270

    .line 111
    aput v5, v0, v1

    const/16 v1, 0x274

    aput v5, v0, v1

    const/16 v1, 0x277

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x27b

    aput v3, v0, v1

    const/16 v1, 0x27e

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x282

    aput v3, v0, v1

    const/16 v1, 0x285

    .line 114
    aput v5, v0, v1

    const/16 v1, 0x289

    aput v5, v0, v1

    const/16 v1, 0x28c

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x28d

    aput v3, v0, v1

    const/16 v1, 0x28f

    aput v3, v0, v1

    const/16 v1, 0x290

    aput v3, v0, v1

    const/16 v1, 0x293

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x294

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x295

    aput v3, v0, v1

    const/16 v1, 0x296

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x297

    aput v3, v0, v1

    const/16 v1, 0x29b

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29c

    aput v3, v0, v1

    const/16 v1, 0x29d

    aput v3, v0, v1

    const/16 v1, 0x2a2

    .line 118
    aput v4, v0, v1

    const/16 v1, 0x2a3

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v4, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v4, v0, v1

    const/16 v1, 0x2a9

    aput v5, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ab

    aput v5, v0, v1

    const/16 v1, 0x2ac

    aput v4, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x2b7

    aput v3, v0, v1

    const/16 v1, 0x2b9

    aput v3, v0, v1

    const/16 v1, 0x2ba

    aput v4, v0, v1

    const/16 v1, 0x2bd

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x2be

    aput v5, v0, v1

    const/16 v1, 0x2c0

    aput v5, v0, v1

    const/16 v1, 0x2c1

    aput v4, v0, v1

    const/16 v1, 0x2c4

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x2c5

    aput v3, v0, v1

    const/16 v1, 0x2c7

    aput v3, v0, v1

    const/16 v1, 0x2c8

    aput v4, v0, v1

    const/16 v1, 0x2cc

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x2cd

    aput v4, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2d3

    .line 125
    aput v5, v0, v1

    const/16 v1, 0x2d4

    aput v4, v0, v1

    const/16 v1, 0x2d5

    aput v5, v0, v1

    const/16 v1, 0x2da

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x2db

    aput v4, v0, v1

    const/16 v1, 0x2dc

    aput v3, v0, v1

    const/16 v1, 0x2e0

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x2e1

    aput v3, v0, v1

    const/16 v1, 0x2e2

    aput v3, v0, v1

    const/16 v1, 0x2e3

    aput v3, v0, v1

    const/16 v1, 0x2e4

    aput v4, v0, v1

    const/16 v1, 0x2e7

    .line 128
    aput v4, v0, v1

    const/16 v1, 0x2e8

    aput v5, v0, v1

    const/16 v1, 0x2e9

    aput v3, v0, v1

    const/16 v1, 0x2ea

    aput v3, v0, v1

    const/16 v1, 0x2eb

    aput v4, v0, v1

    const/16 v1, 0x2ee

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x2ef

    aput v3, v0, v1

    const/16 v1, 0x2f0

    aput v3, v0, v1

    const/16 v1, 0x2f1

    aput v4, v0, v1

    const/16 v1, 0x2f5

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x2f6

    aput v3, v0, v1

    const/16 v1, 0x2f7

    aput v4, v0, v1

    const/16 v1, 0x2fc

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x2fd

    aput v4, v0, v1

    const/16 v1, 0x303

    .line 132
    aput v5, v0, v1

    const/16 v1, 0x304

    aput v4, v0, v1

    const/16 v1, 0x30a

    .line 133
    aput v3, v0, v1

    const/16 v1, 0x30b

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x30c

    aput v4, v0, v1

    const/16 v1, 0x311

    .line 134
    aput v4, v0, v1

    const/16 v1, 0x312

    aput v3, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    aput v4, v0, v1

    const/16 v1, 0x318

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x319

    aput v3, v0, v1

    const/16 v1, 0x31a

    aput v3, v0, v1

    const/16 v1, 0x31b

    aput v3, v0, v1

    const/16 v1, 0x321

    .line 136
    aput v4, v0, v1

    const/16 v1, 0x322

    aput v3, v0, v1

    const/16 v1, 0x328

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x329

    aput v3, v0, v1

    const/16 v1, 0x32f

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x330

    aput v4, v0, v1

    const/16 v1, 0x335

    .line 139
    aput v4, v0, v1

    const/16 v1, 0x336

    aput v3, v0, v1

    const/16 v1, 0x337

    aput v3, v0, v1

    const/16 v1, 0x33c

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x33d

    aput v3, v0, v1

    const/16 v1, 0x33e

    aput v3, v0, v1

    const/16 v1, 0x342

    .line 141
    aput v4, v0, v1

    const/16 v1, 0x343

    aput v3, v0, v1

    const/16 v1, 0x344

    aput v4, v0, v1

    const/16 v1, 0x345

    aput v3, v0, v1

    const/16 v1, 0x346

    aput v4, v0, v1

    const/16 v1, 0x349

    .line 142
    aput v4, v0, v1

    const/16 v1, 0x34a

    aput v3, v0, v1

    const/16 v1, 0x34b

    aput v4, v0, v1

    const/16 v1, 0x34c

    aput v3, v0, v1

    const/16 v1, 0x34d

    aput v4, v0, v1

    const/16 v1, 0x350

    .line 143
    aput v4, v0, v1

    const/16 v1, 0x351

    aput v3, v0, v1

    const/16 v1, 0x352

    aput v4, v0, v1

    const/16 v1, 0x353

    aput v3, v0, v1

    const/16 v1, 0x354

    aput v4, v0, v1

    const/16 v1, 0x357

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x358

    aput v3, v0, v1

    const/16 v1, 0x359

    aput v4, v0, v1

    const/16 v1, 0x35a

    aput v3, v0, v1

    const/16 v1, 0x35b

    aput v4, v0, v1

    const/16 v1, 0x35e

    .line 145
    aput v4, v0, v1

    const/16 v1, 0x35f

    aput v3, v0, v1

    const/16 v1, 0x360

    aput v4, v0, v1

    const/16 v1, 0x361

    aput v3, v0, v1

    const/16 v1, 0x362

    aput v4, v0, v1

    const/16 v1, 0x365

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x366

    aput v3, v0, v1

    const/16 v1, 0x367

    aput v4, v0, v1

    const/16 v1, 0x368

    aput v3, v0, v1

    const/16 v1, 0x369

    aput v4, v0, v1

    const/16 v1, 0x36d

    .line 147
    aput v5, v0, v1

    const/16 v1, 0x36e

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v5, v0, v1

    const/16 v1, 0x374

    .line 148
    aput v5, v0, v1

    const/16 v1, 0x375

    aput v3, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x37b

    .line 149
    aput v3, v0, v1

    const/16 v1, 0x37c

    aput v4, v0, v1

    const/16 v1, 0x37d

    aput v3, v0, v1

    const/16 v1, 0x382

    .line 150
    aput v4, v0, v1

    const/16 v1, 0x383

    aput v3, v0, v1

    const/16 v1, 0x384

    aput v5, v0, v1

    const/16 v1, 0x389

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x38a

    aput v3, v0, v1

    const/16 v1, 0x38b

    aput v3, v0, v1

    const/16 v1, 0x390

    .line 152
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x391

    aput v4, v0, v1

    const/16 v1, 0x392

    aput v4, v0, v1

    const/16 v1, 0x397

    .line 153
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x398

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x399

    aput v3, v0, v1

    const/16 v1, 0x39e

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x39f

    aput v4, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a5

    .line 155
    aput v4, v0, v1

    const/16 v1, 0x3a6

    aput v3, v0, v1

    const/16 v1, 0x3a7

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3ac

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x3ad

    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v3, v0, v1

    const/16 v1, 0x3b3

    .line 157
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3b4

    aput v4, v0, v1

    const/16 v1, 0x3b5

    aput v3, v0, v1

    const/16 v1, 0x3ba

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x3bb

    aput v3, v0, v1

    const/16 v1, 0x3bc

    aput v4, v0, v1

    const/16 v1, 0x3c1

    .line 159
    aput v4, v0, v1

    const/16 v1, 0x3c2

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c8

    .line 160
    aput v3, v0, v1

    const/16 v1, 0x3c9

    aput v3, v0, v1

    const/16 v1, 0x3ca

    aput v3, v0, v1

    const/16 v1, 0x3cf

    .line 161
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3d0

    aput v4, v0, v1

    const/16 v1, 0x3d1

    aput v3, v0, v1

    const/16 v1, 0x3d6

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x3d7

    aput v3, v0, v1

    const/16 v1, 0x3d8

    aput v4, v0, v1

    const/16 v1, 0x3dd

    .line 163
    aput v4, v0, v1

    const/16 v1, 0x3de

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3df

    aput v3, v0, v1

    const/16 v1, 0x3e4

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x3e5

    aput v3, v0, v1

    const/16 v1, 0x3e6

    aput v3, v0, v1

    const/16 v1, 0x3eb

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x3ec

    aput v3, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3f1

    .line 166
    aput v4, v0, v1

    const/16 v1, 0x3f2

    aput v3, v0, v1

    const/16 v1, 0x3f3

    aput v4, v0, v1

    const/16 v1, 0x3f4

    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v4, v0, v1

    const/16 v1, 0x3f8

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x3f9

    aput v3, v0, v1

    const/16 v1, 0x3fa

    aput v4, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x3fc

    aput v3, v0, v1

    const/16 v1, 0x3ff

    .line 168
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x400

    aput v3, v0, v1

    const/16 v1, 0x401

    aput v4, v0, v1

    const/16 v1, 0x402

    aput v3, v0, v1

    const/16 v1, 0x403

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x406

    .line 169
    aput v3, v0, v1

    const/16 v1, 0x407

    aput v6, v0, v1

    const/16 v1, 0x409

    aput v7, v0, v1

    const/16 v1, 0x40a

    aput v3, v0, v1

    const/16 v1, 0x40d

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x411

    aput v3, v0, v1

    const/16 v1, 0x414

    .line 171
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x415

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x416

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x417

    const v2, 0x1000200

    aput v2, v0, v1

    const/16 v1, 0x418

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x41b

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x41f

    aput v3, v0, v1

    const/16 v1, 0x422

    .line 173
    aput v3, v0, v1

    const/16 v1, 0x423

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x425

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x426

    aput v3, v0, v1

    const/16 v1, 0x429

    .line 174
    aput v7, v0, v1

    const/16 v1, 0x42a

    aput v3, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v6, v0, v1

    const/16 v1, 0x431

    .line 175
    aput v7, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v6, v0, v1

    const/16 v1, 0x439

    .line 176
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x440

    .line 177
    aput v3, v0, v1

    const/16 v1, 0x447

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x44d

    .line 179
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x44e

    aput v5, v0, v1

    const/16 v1, 0x44f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x454

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x455

    aput v3, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mTiles:[I

    .line 185
    const/16 v0, 0x42

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x23010307

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x3301010b

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x3301050b

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x33010315

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x33010319

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x3301031e

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x13010226

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x33010426

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x1301032c

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x1301042d

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x23010335

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x13010239

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x13010439

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x13010240

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x13010440

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x13010145

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 203
    const v2, 0x33010545

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 204
    const v2, 0x3301024e

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 205
    const v2, 0x1301044e

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 206
    const v2, 0x33010259

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 207
    const v2, 0x1301035f

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 208
    const v2, 0x23010369

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 209
    const v2, 0x23010374

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 210
    const v2, 0x33010179

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 211
    const v2, 0x1301057f

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 212
    const v2, 0x13010184

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 213
    const v2, 0x33010589

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 214
    const v2, 0x2301038d

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x3010201

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x3010401

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x3010107

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x3010507

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x302030d

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x301010f

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x301050f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x3020318

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x3020123

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x3020323

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x3020523

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x3020128

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x3020328

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x3020528

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x302012f

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x302042f

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x3020136

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x3020536

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x302013e

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x302053e

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x3010149

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x3010549

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x3010350

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x3020160

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x3020560

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x302016a

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x302056a

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x3010271

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x3010471

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 246
    const v2, 0x301057d

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 247
    const v2, 0x3010182

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 248
    const v2, 0x3010587

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 249
    const v2, 0x301028f

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 250
    const v2, 0x301048f

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 251
    const v2, 0x3010190

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 252
    const v2, 0x3010590

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 253
    const v2, 0x63010398

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_05;->mObjects:[I

    .line 256
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
