.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_02.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xb000200

    const v6, 0xa000200

    const v5, 0x1000700

    const v4, 0x1000200

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mSizeX:I

    .line 11
    const/16 v0, 0x55

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mMaxTime:I

    .line 21
    const/16 v0, 0x253

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
    aput v3, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    aput v3, v0, v1

    const/16 v1, 0x5d

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    aput v4, v0, v1

    const/16 v1, 0x64

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x65

    aput v3, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x6b

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v4, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x88

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x8e

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x90

    aput v3, v0, v1

    const/16 v1, 0x94

    .line 43
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa2

    .line 45
    aput v5, v0, v1

    const/16 v1, 0xa4

    aput v4, v0, v1

    const/16 v1, 0xa6

    aput v5, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 47
    aput v5, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb4

    aput v5, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbe

    .line 49
    aput v5, v0, v1

    const/16 v1, 0xc0

    aput v4, v0, v1

    const/16 v1, 0xc2

    aput v5, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v5, v0, v1

    const/16 v1, 0xce

    aput v4, v0, v1

    const/16 v1, 0xd0

    aput v5, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xda

    .line 53
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xe2

    .line 54
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0xea

    .line 55
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0xef

    .line 56
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0xf0

    aput v4, v0, v1

    const/16 v1, 0xf1

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v4, v0, v1

    const/16 v1, 0xf3

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v7, v0, v1

    const/16 v1, 0xf7

    aput v6, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v7, v0, v1

    const/16 v1, 0xfa

    aput v6, v0, v1

    const/16 v1, 0xff

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x105

    aput v4, v0, v1

    const/16 v1, 0x106

    aput v5, v0, v1

    const/16 v1, 0x107

    aput v4, v0, v1

    const/16 v1, 0x108

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v7, v0, v1

    const/16 v1, 0x10c

    aput v6, v0, v1

    const/16 v1, 0x10d

    aput v5, v0, v1

    const/16 v1, 0x10e

    aput v7, v0, v1

    const/16 v1, 0x10f

    aput v6, v0, v1

    const/16 v1, 0x114

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x119

    .line 62
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v4, v0, v1

    const/16 v1, 0x11b

    aput v5, v0, v1

    const/16 v1, 0x11c

    aput v4, v0, v1

    const/16 v1, 0x11d

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v7, v0, v1

    const/16 v1, 0x121

    aput v6, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x123

    aput v7, v0, v1

    const/16 v1, 0x124

    aput v6, v0, v1

    const/16 v1, 0x129

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x12e

    .line 65
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x12f

    aput v4, v0, v1

    const/16 v1, 0x130

    aput v5, v0, v1

    const/16 v1, 0x131

    aput v4, v0, v1

    const/16 v1, 0x132

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v7, v0, v1

    const/16 v1, 0x136

    aput v6, v0, v1

    const/16 v1, 0x137

    aput v5, v0, v1

    const/16 v1, 0x138

    aput v7, v0, v1

    const/16 v1, 0x139

    aput v6, v0, v1

    const/16 v1, 0x13e

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x144

    .line 68
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x14a

    .line 69
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x14b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x14d

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x14e

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x151

    .line 70
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x152

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x154

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x155

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x159

    .line 71
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x161

    .line 72
    const v2, 0x1000100

    aput v2, v0, v1

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

    const/16 v1, 0x174

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x176

    aput v5, v0, v1

    const/16 v1, 0x178

    aput v4, v0, v1

    const/16 v1, 0x17d

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x189

    .line 78
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x18a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x18c

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x18d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x190

    .line 79
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x191

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x193

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x194

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x198

    .line 80
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x199

    aput v3, v0, v1

    const/16 v1, 0x19a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x1a0

    .line 81
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x1a5

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1a9

    aput v4, v0, v1

    const/16 v1, 0x1ae

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1b3

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v5, v0, v1

    const/16 v1, 0x1b7

    aput v4, v0, v1

    const/16 v1, 0x1bc

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x1c2

    .line 86
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1c3

    aput v3, v0, v1

    const/16 v1, 0x1c4

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1c9

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x1cb

    aput v3, v0, v1

    const/16 v1, 0x1d0

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d2

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x1d7

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1d8

    aput v4, v0, v1

    const/16 v1, 0x1d9

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1da

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v7, v0, v1

    const/16 v1, 0x1de

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1df

    aput v4, v0, v1

    const/16 v1, 0x1e0

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1e1

    aput v6, v0, v1

    const/16 v1, 0x1e5

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1ec

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1fa

    .line 94
    aput v5, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v5, v0, v1

    const/16 v1, 0x201

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x202

    aput v3, v0, v1

    const/16 v1, 0x203

    aput v3, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v5, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v5, v0, v1

    const/16 v1, 0x20f

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x21c

    .line 99
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x21d

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x21e

    aput v4, v0, v1

    const/16 v1, 0x21f

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x220

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v7, v0, v1

    const/16 v1, 0x224

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x225

    aput v4, v0, v1

    const/16 v1, 0x226

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x227

    aput v6, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x22d

    aput v3, v0, v1

    const/16 v1, 0x232

    .line 102
    aput v5, v0, v1

    const/16 v1, 0x234

    aput v5, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x23a

    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x241

    aput v5, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x248

    aput v5, v0, v1

    const/16 v1, 0x249

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mTiles:[I

    .line 110
    const/16 v0, 0x30

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 112
    const v2, 0x1101020b

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 113
    const v2, 0x1101040b

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 114
    const v2, 0x31010213

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 115
    const v2, 0x30010318

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 116
    const v2, 0x2001031e

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 117
    const v2, 0x20010327

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 118
    const v2, 0x3001032b

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 119
    const v2, 0x31010332

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 120
    const v2, 0x1101013a

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 121
    const v2, 0x3101053a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 122
    const v2, 0x11010342

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 123
    const v2, 0x11010345

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 126
    const v2, 0x2010201

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 127
    const v2, 0x2010401

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 128
    const v2, 0x2010203

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 129
    const v2, 0x2010403

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 130
    const v2, 0x2010306

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 131
    const v2, 0x2010307

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 132
    const v2, 0x201030b

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 133
    const v2, 0x2010310

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 134
    const v2, 0x2010311

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 135
    const v2, 0x2010116

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 136
    const v2, 0x2010516

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 137
    const v2, 0x2010118

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 138
    const v2, 0x2010518

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 139
    const v2, 0x201011f

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 140
    const v2, 0x201051f

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 141
    const v2, 0x2010121

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 142
    const v2, 0x2010521

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 143
    const v2, 0x2010229

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 144
    const v2, 0x2010429

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 145
    const v2, 0x201022c

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 146
    const v2, 0x201042c

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 147
    const v2, 0x201022f

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 148
    const v2, 0x201042f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 149
    const v2, 0x2010232

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 150
    const v2, 0x2010432

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 151
    const v2, 0x2010337

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 152
    const v2, 0x2010339

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 153
    const v2, 0x201033b

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 154
    const v2, 0x201033d

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 155
    const v2, 0x2010341

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 156
    const v2, 0x2010243

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 157
    const v2, 0x2010443

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 158
    const v2, 0x2010246

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 159
    const v2, 0x2010446

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 160
    const v2, 0x6301034c

    aput v2, v0, v1

    .line 110
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_02;->mObjects:[I

    .line 163
    return-void

    .line 14
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
