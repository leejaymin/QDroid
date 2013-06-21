.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_05.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000700

    const v6, 0x1000600

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mMaxTime:I

    .line 21
    const/16 v0, 0x460

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

    const/16 v1, 0x55

    .line 34
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x56

    aput v5, v0, v1

    const/16 v1, 0x57

    aput v5, v0, v1

    const/16 v1, 0x58

    aput v5, v0, v1

    const/16 v1, 0x59

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 35
    aput v5, v0, v1

    const/16 v1, 0x5d

    aput v5, v0, v1

    const/16 v1, 0x5f

    aput v5, v0, v1

    const/16 v1, 0x60

    aput v5, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v5, v0, v1

    const/16 v1, 0x64

    aput v5, v0, v1

    const/16 v1, 0x65

    aput v5, v0, v1

    const/16 v1, 0x66

    aput v5, v0, v1

    const/16 v1, 0x67

    aput v5, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v5, v0, v1

    const/16 v1, 0x6b

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x6c

    aput v5, v0, v1

    const/16 v1, 0x6d

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x6e

    aput v5, v0, v1

    const/16 v1, 0x71

    .line 38
    aput v5, v0, v1

    const/16 v1, 0x73

    aput v5, v0, v1

    const/16 v1, 0x75

    aput v5, v0, v1

    const/16 v1, 0x78

    .line 39
    aput v5, v0, v1

    const/16 v1, 0x7a

    aput v5, v0, v1

    const/16 v1, 0x7c

    aput v5, v0, v1

    const/16 v1, 0x7f

    .line 40
    aput v5, v0, v1

    const/16 v1, 0x81

    aput v5, v0, v1

    const/16 v1, 0x83

    aput v5, v0, v1

    const/16 v1, 0x86

    .line 41
    aput v5, v0, v1

    const/16 v1, 0x88

    aput v5, v0, v1

    const/16 v1, 0x8a

    aput v5, v0, v1

    const/16 v1, 0x8d

    .line 42
    aput v5, v0, v1

    const/16 v1, 0x8f

    aput v5, v0, v1

    const/16 v1, 0x91

    aput v5, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v5, v0, v1

    const/16 v1, 0x95

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x96

    aput v5, v0, v1

    const/16 v1, 0x97

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x98

    aput v5, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v5, v0, v1

    const/16 v1, 0x9c

    aput v5, v0, v1

    const/16 v1, 0x9d

    aput v5, v0, v1

    const/16 v1, 0x9e

    aput v5, v0, v1

    const/16 v1, 0x9f

    aput v5, v0, v1

    const/16 v1, 0xa2

    .line 45
    aput v5, v0, v1

    const/16 v1, 0xa3

    aput v5, v0, v1

    const/16 v1, 0xa5

    aput v5, v0, v1

    const/16 v1, 0xa6

    aput v5, v0, v1

    const/16 v1, 0xa9

    .line 46
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0xaa

    aput v5, v0, v1

    const/16 v1, 0xab

    aput v5, v0, v1

    const/16 v1, 0xac

    aput v5, v0, v1

    const/16 v1, 0xad

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 47
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0xb2

    aput v5, v0, v1

    const/16 v1, 0xb3

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0xb9

    .line 48
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 49
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xc7

    .line 50
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xce

    .line 51
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 52
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xdc

    .line 53
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xe3

    .line 54
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xe9

    .line 55
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xf1

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf6

    .line 57
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0xff

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x105

    aput v4, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v4, v0, v1

    const/16 v1, 0x108

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x10c

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10d

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x113

    .line 61
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x114

    aput v4, v0, v1

    const/16 v1, 0x115

    aput v3, v0, v1

    const/16 v1, 0x116

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x11b

    .line 62
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x123

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x12a

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x131

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x132

    aput v3, v0, v1

    const/16 v1, 0x137

    .line 66
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x138

    aput v4, v0, v1

    const/16 v1, 0x139

    aput v4, v0, v1

    const/16 v1, 0x13d

    .line 67
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v3, v0, v1

    const/16 v1, 0x144

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x145

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v4, v0, v1

    const/16 v1, 0x147

    aput v4, v0, v1

    const/16 v1, 0x14a

    .line 69
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x14b

    aput v3, v0, v1

    const/16 v1, 0x14c

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x14d

    aput v3, v0, v1

    const/16 v1, 0x14e

    aput v3, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x152

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x153

    aput v3, v0, v1

    const/16 v1, 0x154

    aput v4, v0, v1

    const/16 v1, 0x155

    aput v7, v0, v1

    const/16 v1, 0x158

    .line 71
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v6, v0, v1

    const/16 v1, 0x162

    aput v6, v0, v1

    const/16 v1, 0x167

    .line 73
    aput v6, v0, v1

    const/16 v1, 0x168

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x169

    aput v6, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v6, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    aput v6, v0, v1

    const/16 v1, 0x175

    .line 75
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x176

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x177

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x17d

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v4, v0, v1

    const/16 v1, 0x185

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18b

    aput v3, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x192

    aput v4, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x19a

    aput v4, v0, v1

    const/16 v1, 0x19f

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x1a1

    aput v4, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x1a7

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1ac

    .line 83
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ad

    aput v4, v0, v1

    const/16 v1, 0x1ae

    aput v3, v0, v1

    const/16 v1, 0x1af

    aput v4, v0, v1

    const/16 v1, 0x1b0

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1b3

    .line 84
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1b4

    aput v3, v0, v1

    const/16 v1, 0x1b5

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x1b6

    aput v3, v0, v1

    const/16 v1, 0x1b7

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x1bb

    aput v4, v0, v1

    const/16 v1, 0x1bd

    aput v4, v0, v1

    const/16 v1, 0x1be

    aput v3, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x1c2

    aput v3, v0, v1

    const/16 v1, 0x1c4

    aput v3, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c8

    .line 87
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1c9

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x1cb

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x1cc

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1da

    aput v3, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x1e1

    aput v4, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e5

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1e7

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1e8

    aput v3, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x1ec

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1ee

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1ef

    aput v4, v0, v1

    const/16 v1, 0x1f2

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f3

    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v3, v0, v1

    const/16 v1, 0x1f6

    aput v3, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x1fa

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x1fd

    aput v4, v0, v1

    const/16 v1, 0x200

    .line 95
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x201

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x203

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x204

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x207

    .line 96
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v3, v0, v1

    const/16 v1, 0x212

    aput v3, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x216

    aput v7, v0, v1

    const/16 v1, 0x218

    aput v7, v0, v1

    const/16 v1, 0x219

    aput v3, v0, v1

    const/16 v1, 0x21c

    .line 99
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x21d

    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v4, v0, v1

    const/16 v1, 0x220

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x224

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x22b

    .line 101
    aput v7, v0, v1

    const/16 v1, 0x22d

    aput v7, v0, v1

    const/16 v1, 0x232

    .line 102
    aput v4, v0, v1

    const/16 v1, 0x234

    aput v4, v0, v1

    const/16 v1, 0x239

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x247

    .line 105
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x248

    aput v5, v0, v1

    const/16 v1, 0x249

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x24e

    .line 106
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x24f

    aput v5, v0, v1

    const/16 v1, 0x250

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x255

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x257

    aput v3, v0, v1

    const/16 v1, 0x25c

    .line 108
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x25d

    aput v5, v0, v1

    const/16 v1, 0x25e

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x263

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x265

    aput v3, v0, v1

    const/16 v1, 0x26a

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x26b

    aput v3, v0, v1

    const/16 v1, 0x26c

    aput v3, v0, v1

    const/16 v1, 0x271

    .line 111
    aput v4, v0, v1

    const/16 v1, 0x272

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x273

    aput v4, v0, v1

    const/16 v1, 0x278

    .line 112
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x279

    aput v3, v0, v1

    const/16 v1, 0x27a

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x280

    .line 113
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x287

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x28e

    .line 115
    aput v4, v0, v1

    const/16 v1, 0x295

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x29c

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x2a3

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2aa

    .line 119
    aput v4, v0, v1

    const/16 v1, 0x2b1

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x2b7

    .line 121
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2b8

    aput v4, v0, v1

    const/16 v1, 0x2b9

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2bd

    .line 122
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x2be

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2bf

    aput v6, v0, v1

    const/16 v1, 0x2c0

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2c1

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x2c4

    .line 123
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x2c5

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2c6

    aput v3, v0, v1

    const/16 v1, 0x2c7

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2c8

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x2cc

    .line 124
    aput v6, v0, v1

    const/16 v1, 0x2cd

    aput v5, v0, v1

    const/16 v1, 0x2ce

    aput v6, v0, v1

    const/16 v1, 0x2d3

    .line 125
    aput v7, v0, v1

    const/16 v1, 0x2d5

    aput v7, v0, v1

    const/16 v1, 0x2da

    .line 126
    aput v6, v0, v1

    const/16 v1, 0x2db

    aput v5, v0, v1

    const/16 v1, 0x2dc

    aput v6, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v7, v0, v1

    const/16 v1, 0x2e3

    aput v7, v0, v1

    const/16 v1, 0x2e8

    .line 128
    aput v6, v0, v1

    const/16 v1, 0x2e9

    aput v5, v0, v1

    const/16 v1, 0x2ea

    aput v6, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v7, v0, v1

    const/16 v1, 0x2f1

    aput v7, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v6, v0, v1

    const/16 v1, 0x2f7

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x2f8

    aput v6, v0, v1

    const/16 v1, 0x2fc

    .line 131
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x2fd

    aput v6, v0, v1

    const/16 v1, 0x2fe

    aput v3, v0, v1

    const/16 v1, 0x2ff

    aput v6, v0, v1

    const/16 v1, 0x300

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x303

    .line 132
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x304

    aput v6, v0, v1

    const/16 v1, 0x305

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x306

    aput v6, v0, v1

    const/16 v1, 0x307

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x30b

    .line 133
    const v2, 0xb000700

    aput v2, v0, v1

    const/16 v1, 0x30c

    aput v3, v0, v1

    const/16 v1, 0x30d

    const v2, 0xa000700

    aput v2, v0, v1

    const/16 v1, 0x313

    .line 134
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x31a

    .line 135
    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x321

    .line 136
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x328

    .line 137
    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x32f

    .line 138
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x336

    .line 139
    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x33d

    .line 140
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x344

    .line 141
    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x34a

    .line 142
    const v2, 0xd000500

    aput v2, v0, v1

    const/16 v1, 0x34b

    aput v3, v0, v1

    const/16 v1, 0x34c

    const v2, 0xc000400

    aput v2, v0, v1

    const/16 v1, 0x350

    .line 143
    const v2, 0xd000500

    aput v2, v0, v1

    const/16 v1, 0x351

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x352

    aput v3, v0, v1

    const/16 v1, 0x353

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x354

    const v2, 0xc000400

    aput v2, v0, v1

    const/16 v1, 0x357

    .line 144
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x358

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x359

    aput v3, v0, v1

    const/16 v1, 0x35a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x35b

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x35e

    .line 145
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x35f

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x360

    aput v3, v0, v1

    const/16 v1, 0x361

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x362

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x365

    .line 146
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x366

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x367

    aput v3, v0, v1

    const/16 v1, 0x368

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x369

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x36c

    .line 147
    aput v7, v0, v1

    const/16 v1, 0x36d

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x36e

    aput v6, v0, v1

    const/16 v1, 0x36f

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x370

    aput v7, v0, v1

    const/16 v1, 0x373

    .line 148
    aput v6, v0, v1

    const/16 v1, 0x375

    aput v7, v0, v1

    const/16 v1, 0x377

    aput v6, v0, v1

    const/16 v1, 0x37a

    .line 149
    aput v7, v0, v1

    const/16 v1, 0x37c

    aput v6, v0, v1

    const/16 v1, 0x37e

    aput v7, v0, v1

    const/16 v1, 0x381

    .line 150
    aput v6, v0, v1

    const/16 v1, 0x383

    aput v7, v0, v1

    const/16 v1, 0x385

    aput v6, v0, v1

    const/16 v1, 0x388

    .line 151
    aput v7, v0, v1

    const/16 v1, 0x38a

    aput v6, v0, v1

    const/16 v1, 0x38c

    aput v7, v0, v1

    const/16 v1, 0x38f

    .line 152
    aput v6, v0, v1

    const/16 v1, 0x391

    aput v7, v0, v1

    const/16 v1, 0x393

    aput v6, v0, v1

    const/16 v1, 0x396

    .line 153
    aput v7, v0, v1

    const/16 v1, 0x398

    aput v6, v0, v1

    const/16 v1, 0x39a

    aput v7, v0, v1

    const/16 v1, 0x39d

    .line 154
    aput v6, v0, v1

    const/16 v1, 0x39e

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x39f

    aput v7, v0, v1

    const/16 v1, 0x3a0

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x3a1

    aput v6, v0, v1

    const/16 v1, 0x3a4

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x3a5

    aput v3, v0, v1

    const/16 v1, 0x3a6

    aput v6, v0, v1

    const/16 v1, 0x3a7

    aput v3, v0, v1

    const/16 v1, 0x3a8

    aput v3, v0, v1

    const/16 v1, 0x3ab

    .line 156
    aput v4, v0, v1

    const/16 v1, 0x3ac

    aput v4, v0, v1

    const/16 v1, 0x3ad

    aput v7, v0, v1

    const/16 v1, 0x3ae

    aput v4, v0, v1

    const/16 v1, 0x3af

    aput v4, v0, v1

    const/16 v1, 0x3b2

    .line 157
    aput v3, v0, v1

    const/16 v1, 0x3b3

    aput v3, v0, v1

    const/16 v1, 0x3b4

    aput v3, v0, v1

    const/16 v1, 0x3b5

    aput v3, v0, v1

    const/16 v1, 0x3b6

    aput v3, v0, v1

    const/16 v1, 0x3b9

    .line 158
    aput v4, v0, v1

    const/16 v1, 0x3ba

    aput v4, v0, v1

    const/16 v1, 0x3bc

    aput v4, v0, v1

    const/16 v1, 0x3bd

    aput v4, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x3c8

    aput v4, v0, v1

    const/16 v1, 0x3ca

    aput v4, v0, v1

    const/16 v1, 0x3cb

    aput v4, v0, v1

    const/16 v1, 0x3ce

    .line 161
    aput v3, v0, v1

    const/16 v1, 0x3cf

    aput v3, v0, v1

    const/16 v1, 0x3d0

    aput v3, v0, v1

    const/16 v1, 0x3d1

    aput v3, v0, v1

    const/16 v1, 0x3d2

    aput v3, v0, v1

    const/16 v1, 0x3d5

    .line 162
    aput v4, v0, v1

    const/16 v1, 0x3d6

    aput v4, v0, v1

    const/16 v1, 0x3d8

    aput v4, v0, v1

    const/16 v1, 0x3d9

    aput v4, v0, v1

    const/16 v1, 0x3dc

    .line 163
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x3dd

    aput v3, v0, v1

    const/16 v1, 0x3de

    aput v3, v0, v1

    const/16 v1, 0x3df

    aput v3, v0, v1

    const/16 v1, 0x3e0

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x3e4

    .line 164
    aput v4, v0, v1

    const/16 v1, 0x3e6

    aput v4, v0, v1

    const/16 v1, 0x3eb

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3f2

    .line 166
    aput v4, v0, v1

    const/16 v1, 0x3f3

    aput v3, v0, v1

    const/16 v1, 0x3f4

    aput v4, v0, v1

    const/16 v1, 0x3f9

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x3fa

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x400

    .line 168
    aput v4, v0, v1

    const/16 v1, 0x401

    aput v3, v0, v1

    const/16 v1, 0x402

    aput v4, v0, v1

    const/16 v1, 0x407

    .line 169
    aput v3, v0, v1

    const/16 v1, 0x408

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x409

    aput v3, v0, v1

    const/16 v1, 0x40e

    .line 170
    aput v4, v0, v1

    const/16 v1, 0x40f

    aput v3, v0, v1

    const/16 v1, 0x410

    aput v4, v0, v1

    const/16 v1, 0x415

    .line 171
    aput v3, v0, v1

    const/16 v1, 0x417

    aput v3, v0, v1

    const/16 v1, 0x41c

    .line 172
    aput v4, v0, v1

    const/16 v1, 0x41d

    aput v3, v0, v1

    const/16 v1, 0x41e

    aput v4, v0, v1

    const/16 v1, 0x423

    .line 173
    aput v4, v0, v1

    const/16 v1, 0x424

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x425

    aput v4, v0, v1

    const/16 v1, 0x42a

    .line 174
    aput v4, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v4, v0, v1

    const/16 v1, 0x431

    .line 175
    aput v4, v0, v1

    const/16 v1, 0x432

    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x433

    aput v4, v0, v1

    const/16 v1, 0x437

    .line 176
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x438

    aput v4, v0, v1

    const/16 v1, 0x439

    aput v7, v0, v1

    const/16 v1, 0x43a

    aput v4, v0, v1

    const/16 v1, 0x43b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x43e

    .line 177
    aput v7, v0, v1

    const/16 v1, 0x43f

    aput v3, v0, v1

    const/16 v1, 0x440

    aput v3, v0, v1

    const/16 v1, 0x441

    aput v3, v0, v1

    const/16 v1, 0x442

    aput v7, v0, v1

    const/16 v1, 0x445

    .line 178
    aput v7, v0, v1

    const/16 v1, 0x446

    aput v3, v0, v1

    const/16 v1, 0x447

    aput v3, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x449

    aput v7, v0, v1

    const/16 v1, 0x44c

    .line 179
    aput v7, v0, v1

    const/16 v1, 0x44d

    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v7, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x450

    aput v7, v0, v1

    const/16 v1, 0x453

    .line 180
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x454

    aput v4, v0, v1

    const/16 v1, 0x455

    aput v4, v0, v1

    const/16 v1, 0x456

    aput v4, v0, v1

    const/16 v1, 0x457

    const v2, 0xa000800

    aput v2, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mTiles:[I

    .line 185
    const/16 v0, 0x49

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x11010304

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x1101020a

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x1101040a

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x11010212

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x11010412

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x21010216

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x21010416

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x4001031a

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x21010324

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x31010326

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x11010330

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x31010236

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x31010436

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x2101033f

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x11010251

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x31010451

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 203
    const v2, 0x1101015d

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 204
    const v2, 0x3101055d

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 205
    const v2, 0x11010367

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 206
    const v2, 0x1101036b

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 207
    const v2, 0x31010475

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 208
    const v2, 0x40010379

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 209
    const v2, 0x11010387

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 210
    const v2, 0x3101018d

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 211
    const v2, 0x4001038d

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 212
    const v2, 0x3101058d

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 215
    const v2, 0x2010202

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 216
    const v2, 0x2010402

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x2010204

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x2010404

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x2010307

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x2010309

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x201030b

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x201030d

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x201030f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x2010116

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x2010516

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x2010318

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x201021b

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x201041b

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x2010222

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x2010422

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x2010132

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x2010532

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x201013b

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x201053b

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x2010245

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x2010445

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x201034c

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x2010152

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x2010552

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x201025a

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x201045a

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x201025e

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x201045e

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x2010162

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x2010562

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 246
    const v2, 0x2010268

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 247
    const v2, 0x2010468

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 248
    const v2, 0x201016e

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 249
    const v2, 0x201056e

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 250
    const v2, 0x2010272

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 251
    const v2, 0x2010278

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 252
    const v2, 0x201027e

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 253
    const v2, 0x201047e

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 254
    const v2, 0x2010286

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 255
    const v2, 0x2010486

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 256
    const v2, 0x2010187

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 257
    const v2, 0x2010587

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 258
    const v2, 0x2010193

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 259
    const v2, 0x2010593

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 260
    const v2, 0x63010397

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_05;->mObjects:[I

    .line 263
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
