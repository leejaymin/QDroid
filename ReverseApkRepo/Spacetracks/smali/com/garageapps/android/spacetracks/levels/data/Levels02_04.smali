.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_04.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xb000800

    const v6, 0xa000800

    const v5, 0xc000800

    const v4, 0x1000700

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mMaxTime:I

    .line 21
    const/16 v0, 0x302

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
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x5c

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x60

    aput v4, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x64

    aput v4, v0, v1

    const/16 v1, 0x65

    aput v3, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v4, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x71

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x72

    aput v4, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    aput v4, v0, v1

    const/16 v1, 0x75

    aput v3, v0, v1

    const/16 v1, 0x79

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x7a

    aput v4, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x7f

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x80

    aput v4, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x87

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x88

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8d

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x90

    aput v4, v0, v1

    const/16 v1, 0x91

    aput v3, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa2

    .line 45
    aput v4, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v4, v0, v1

    const/16 v1, 0xa9

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xaa

    aput v4, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v4, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb1

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb7

    .line 48
    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v4, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbf

    .line 49
    aput v3, v0, v1

    const/16 v1, 0xc0

    aput v4, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc5

    .line 50
    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v4, v0, v1

    const/16 v1, 0xc7

    aput v3, v0, v1

    const/16 v1, 0xc8

    aput v4, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcc

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xcd

    aput v7, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v6, v0, v1

    const/16 v1, 0xd0

    aput v4, v0, v1

    const/16 v1, 0xd3

    .line 52
    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v4, v0, v1

    const/16 v1, 0xda

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xde

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xe5

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xec

    aput v4, v0, v1

    const/16 v1, 0xef

    .line 56
    aput v4, v0, v1

    const/16 v1, 0xf3

    aput v4, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v5, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v7, v0, v1

    const/16 v1, 0x105

    aput v3, v0, v1

    const/16 v1, 0x106

    aput v5, v0, v1

    const/16 v1, 0x107

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x108

    aput v3, v0, v1

    const/16 v1, 0x10c

    .line 60
    aput v7, v0, v1

    const/16 v1, 0x10d

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v6, v0, v1

    const/16 v1, 0x113

    .line 61
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x114

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x115

    aput v6, v0, v1

    const/16 v1, 0x119

    .line 62
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v6, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x121

    aput v6, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x128

    aput v5, v0, v1

    const/16 v1, 0x12e

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x12f

    aput v3, v0, v1

    const/16 v1, 0x130

    aput v5, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x136

    aput v7, v0, v1

    const/16 v1, 0x137

    aput v3, v0, v1

    const/16 v1, 0x138

    aput v5, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    aput v5, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v4, v0, v1

    const/16 v1, 0x145

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x146

    aput v7, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

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

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x155

    aput v4, v0, v1

    const/16 v1, 0x158

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v3, v0, v1

    const/16 v1, 0x15f

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x161

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x163

    aput v4, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x167

    aput v5, v0, v1

    const/16 v1, 0x168

    aput v3, v0, v1

    const/16 v1, 0x169

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x16a

    aput v3, v0, v1

    const/16 v1, 0x16d

    .line 74
    aput v7, v0, v1

    const/16 v1, 0x16e

    aput v3, v0, v1

    const/16 v1, 0x16f

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x171

    aput v6, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v7, v0, v1

    const/16 v1, 0x176

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v6, v0, v1

    const/16 v1, 0x17d

    .line 76
    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x183

    .line 77
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    aput v5, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v7, v0, v1

    const/16 v1, 0x18b

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x18c

    aput v6, v0, v1

    const/16 v1, 0x191

    .line 79
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v5, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v7, v0, v1

    const/16 v1, 0x199

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x19a

    aput v6, v0, v1

    const/16 v1, 0x19f

    .line 81
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1a0

    aput v3, v0, v1

    const/16 v1, 0x1a1

    aput v5, v0, v1

    const/16 v1, 0x1a6

    .line 82
    aput v7, v0, v1

    const/16 v1, 0x1a7

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1a8

    aput v6, v0, v1

    const/16 v1, 0x1ae

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1b4

    .line 84
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1b5

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1b6

    aput v5, v0, v1

    const/16 v1, 0x1bb

    .line 85
    aput v7, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v6, v0, v1

    const/16 v1, 0x1c2

    .line 86
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1c3

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c9

    .line 87
    aput v7, v0, v1

    const/16 v1, 0x1ca

    aput v3, v0, v1

    const/16 v1, 0x1cb

    aput v6, v0, v1

    const/16 v1, 0x1d0

    .line 88
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1d1

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1d2

    aput v5, v0, v1

    const/16 v1, 0x1d7

    .line 89
    aput v7, v0, v1

    const/16 v1, 0x1d8

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v6, v0, v1

    const/16 v1, 0x1de

    .line 90
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1df

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1e0

    aput v5, v0, v1

    const/16 v1, 0x1e5

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v3, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1ec

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1ed

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1f3

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x1f4

    aput v3, v0, v1

    const/16 v1, 0x1f5

    aput v4, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1fa

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x1fd

    aput v3, v0, v1

    const/16 v1, 0x200

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x201

    aput v4, v0, v1

    const/16 v1, 0x203

    aput v4, v0, v1

    const/16 v1, 0x204

    aput v3, v0, v1

    const/16 v1, 0x208

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x209

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v4, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x211

    aput v4, v0, v1

    const/16 v1, 0x212

    aput v3, v0, v1

    const/16 v1, 0x216

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x217

    aput v3, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x21c

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x21d

    aput v4, v0, v1

    const/16 v1, 0x21f

    aput v4, v0, v1

    const/16 v1, 0x220

    aput v3, v0, v1

    const/16 v1, 0x223

    .line 100
    aput v4, v0, v1

    const/16 v1, 0x224

    aput v3, v0, v1

    const/16 v1, 0x226

    aput v3, v0, v1

    const/16 v1, 0x227

    aput v4, v0, v1

    const/16 v1, 0x22a

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x22b

    aput v3, v0, v1

    const/16 v1, 0x22c

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x22d

    aput v3, v0, v1

    const/16 v1, 0x22e

    aput v3, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x232

    aput v4, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x234

    aput v4, v0, v1

    const/16 v1, 0x235

    aput v3, v0, v1

    const/16 v1, 0x238

    .line 103
    aput v7, v0, v1

    const/16 v1, 0x239

    aput v3, v0, v1

    const/16 v1, 0x23a

    aput v3, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x23c

    aput v6, v0, v1

    const/16 v1, 0x240

    .line 104
    aput v7, v0, v1

    const/16 v1, 0x241

    aput v4, v0, v1

    const/16 v1, 0x242

    aput v6, v0, v1

    const/16 v1, 0x248

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x24e

    .line 106
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x24f

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x250

    aput v5, v0, v1

    const/16 v1, 0x254

    .line 107
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x255

    aput v6, v0, v1

    const/16 v1, 0x256

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x257

    aput v7, v0, v1

    const/16 v1, 0x258

    aput v5, v0, v1

    const/16 v1, 0x25d

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x263

    .line 109
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x264

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x265

    aput v5, v0, v1

    const/16 v1, 0x269

    .line 110
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x26a

    aput v6, v0, v1

    const/16 v1, 0x26b

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x26c

    aput v7, v0, v1

    const/16 v1, 0x26d

    aput v5, v0, v1

    const/16 v1, 0x272

    .line 111
    aput v3, v0, v1

    const/16 v1, 0x278

    .line 112
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x279

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x27a

    aput v5, v0, v1

    const/16 v1, 0x27e

    .line 113
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x27f

    aput v6, v0, v1

    const/16 v1, 0x280

    const v2, 0x1000900

    aput v2, v0, v1

    const/16 v1, 0x281

    aput v7, v0, v1

    const/16 v1, 0x282

    aput v5, v0, v1

    const/16 v1, 0x287

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x28d

    .line 115
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x28e

    aput v3, v0, v1

    const/16 v1, 0x28f

    aput v5, v0, v1

    const/16 v1, 0x293

    .line 116
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x294

    aput v3, v0, v1

    const/16 v1, 0x295

    aput v4, v0, v1

    const/16 v1, 0x296

    aput v3, v0, v1

    const/16 v1, 0x297

    aput v5, v0, v1

    const/16 v1, 0x29a

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x29c

    aput v3, v0, v1

    const/16 v1, 0x29e

    aput v3, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v7, v0, v1

    const/16 v1, 0x2a2

    aput v3, v0, v1

    const/16 v1, 0x2a3

    aput v3, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v6, v0, v1

    const/16 v1, 0x2a9

    .line 119
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ab

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2af

    .line 120
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2b0

    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v3, v0, v1

    const/16 v1, 0x2b3

    aput v5, v0, v1

    const/16 v1, 0x2b6

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x2b7

    aput v4, v0, v1

    const/16 v1, 0x2b9

    aput v4, v0, v1

    const/16 v1, 0x2ba

    aput v3, v0, v1

    const/16 v1, 0x2bd

    .line 122
    aput v7, v0, v1

    const/16 v1, 0x2be

    aput v3, v0, v1

    const/16 v1, 0x2c0

    aput v3, v0, v1

    const/16 v1, 0x2c1

    aput v6, v0, v1

    const/16 v1, 0x2c5

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x2c6

    aput v3, v0, v1

    const/16 v1, 0x2c7

    aput v4, v0, v1

    const/16 v1, 0x2cb

    .line 124
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2cc

    aput v3, v0, v1

    const/16 v1, 0x2cd

    aput v4, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2cf

    aput v5, v0, v1

    const/16 v1, 0x2d2

    .line 125
    aput v3, v0, v1

    const/16 v1, 0x2d3

    aput v4, v0, v1

    const/16 v1, 0x2d4

    aput v3, v0, v1

    const/16 v1, 0x2d5

    aput v4, v0, v1

    const/16 v1, 0x2d6

    aput v3, v0, v1

    const/16 v1, 0x2d9

    .line 126
    aput v7, v0, v1

    const/16 v1, 0x2da

    aput v3, v0, v1

    const/16 v1, 0x2db

    aput v4, v0, v1

    const/16 v1, 0x2dc

    aput v3, v0, v1

    const/16 v1, 0x2dd

    aput v6, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x2e2

    aput v3, v0, v1

    const/16 v1, 0x2e3

    aput v4, v0, v1

    const/16 v1, 0x2e7

    .line 128
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2e8

    aput v3, v0, v1

    const/16 v1, 0x2e9

    aput v4, v0, v1

    const/16 v1, 0x2ea

    aput v3, v0, v1

    const/16 v1, 0x2eb

    aput v5, v0, v1

    const/16 v1, 0x2ee

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x2ef

    aput v3, v0, v1

    const/16 v1, 0x2f0

    aput v3, v0, v1

    const/16 v1, 0x2f1

    aput v3, v0, v1

    const/16 v1, 0x2f2

    aput v3, v0, v1

    const/16 v1, 0x2f5

    .line 130
    aput v7, v0, v1

    const/16 v1, 0x2f6

    aput v3, v0, v1

    const/16 v1, 0x2f7

    aput v4, v0, v1

    const/16 v1, 0x2f8

    aput v3, v0, v1

    const/16 v1, 0x2f9

    aput v6, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mTiles:[I

    .line 135
    const/16 v0, 0x37

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x11010205

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x11010407

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x3101030c

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x2101031d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 141
    const v2, 0x31010322

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const v2, 0x11010228

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x11010428

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x21010330

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x1101013e

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 146
    const v2, 0x1101033e

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 147
    const v2, 0x3101053e

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 148
    const v2, 0x11010346

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 149
    const v2, 0x21010351

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 150
    const v2, 0x31010355

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 151
    const v2, 0x31010359

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x2010102

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x2010502

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x2010106

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x2010506

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x2010308

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x201010a

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x201050a

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x201010e

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x201050e

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x2010213

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x2010413

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x2010115

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x2010515

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x2010219

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x2010419

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x2010321

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x2010122

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x2010522

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x2010326

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x201022f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 174
    const v2, 0x201042f

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 175
    const v2, 0x2010231

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 176
    const v2, 0x2010431

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 177
    const v2, 0x2010236

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 178
    const v2, 0x2010436

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 179
    const v2, 0x2010238

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 180
    const v2, 0x2010438

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 181
    const v2, 0x2010540

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const v2, 0x2010342

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 183
    const v2, 0x2010548

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 184
    const v2, 0x2010149

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 185
    const v2, 0x201034e

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 186
    const v2, 0x201034f

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 187
    const v2, 0x2010153

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 188
    const v2, 0x2010553

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 189
    const v2, 0x2010357

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 190
    const v2, 0x201015b

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 191
    const v2, 0x201055b

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 192
    const v2, 0x63010365

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_04;->mObjects:[I

    .line 195
    return-void

    .line 14
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
