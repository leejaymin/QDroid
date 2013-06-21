.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_07.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xc000800

    const v6, 0xb000800

    const v5, 0x1000b00

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mSizeX:I

    .line 11
    const/16 v0, 0xd2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mMaxTime:I

    .line 21
    const/16 v0, 0x5be

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
    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v4, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v4, v0, v1

    const/16 v1, 0x60

    aput v3, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x64

    aput v3, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x67

    aput v4, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x6b

    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v4, v0, v1

    const/16 v1, 0x6e

    aput v3, v0, v1

    const/16 v1, 0x71

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x72

    aput v3, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v3, v0, v1

    const/16 v1, 0x75

    aput v4, v0, v1

    const/16 v1, 0x78

    .line 39
    aput v6, v0, v1

    const/16 v1, 0x79

    aput v3, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x7c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x80

    .line 40
    aput v6, v0, v1

    const/16 v1, 0x81

    aput v4, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x88

    .line 41
    aput v6, v0, v1

    const/16 v1, 0x89

    aput v4, v0, v1

    const/16 v1, 0x90

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x96

    .line 43
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x97

    aput v4, v0, v1

    const/16 v1, 0x9c

    .line 44
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0xa3

    .line 45
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v4, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v3, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v4, v0, v1

    const/16 v1, 0xb1

    .line 47
    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v4, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v4, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v4, v0, v1

    const/16 v1, 0xbf

    .line 49
    aput v4, v0, v1

    const/16 v1, 0xc1

    aput v4, v0, v1

    const/16 v1, 0xc6

    .line 50
    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v4, v0, v1

    const/16 v1, 0xcd

    .line 51
    aput v4, v0, v1

    const/16 v1, 0xcf

    aput v4, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v4, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xdb

    .line 53
    aput v4, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    aput v4, v0, v1

    const/16 v1, 0xe2

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v4, v0, v1

    const/16 v1, 0xe9

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xeb

    aput v4, v0, v1

    const/16 v1, 0xf0

    .line 56
    aput v4, v0, v1

    const/16 v1, 0xf2

    aput v4, v0, v1

    const/16 v1, 0xf7

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v4, v0, v1

    const/16 v1, 0xfe

    .line 58
    aput v4, v0, v1

    const/16 v1, 0xff

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v4, v0, v1

    const/16 v1, 0x105

    .line 59
    aput v4, v0, v1

    const/16 v1, 0x106

    aput v3, v0, v1

    const/16 v1, 0x107

    aput v4, v0, v1

    const/16 v1, 0x10c

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x10d

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x10e

    aput v4, v0, v1

    const/16 v1, 0x113

    .line 61
    aput v6, v0, v1

    const/16 v1, 0x114

    aput v3, v0, v1

    const/16 v1, 0x115

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x11b

    .line 62
    aput v4, v0, v1

    const/16 v1, 0x122

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x129

    .line 64
    aput v4, v0, v1

    const/16 v1, 0x12f

    .line 65
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x131

    aput v7, v0, v1

    const/16 v1, 0x136

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x137

    aput v4, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x13d

    .line 67
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x13e

    aput v3, v0, v1

    const/16 v1, 0x13f

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x144

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x145

    aput v4, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x14a

    .line 69
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x14b

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x14c

    aput v3, v0, v1

    const/16 v1, 0x14d

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x14e

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x151

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x152

    aput v3, v0, v1

    const/16 v1, 0x153

    aput v4, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x155

    aput v5, v0, v1

    const/16 v1, 0x158

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x159

    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v3, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    aput v5, v0, v1

    const/16 v1, 0x15f

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x160

    aput v4, v0, v1

    const/16 v1, 0x161

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x162

    aput v6, v0, v1

    const/16 v1, 0x163

    aput v5, v0, v1

    const/16 v1, 0x166

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x167

    aput v3, v0, v1

    const/16 v1, 0x16a

    aput v5, v0, v1

    const/16 v1, 0x16d

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v4, v0, v1

    const/16 v1, 0x170

    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x171

    aput v5, v0, v1

    const/16 v1, 0x174

    .line 75
    aput v6, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x177

    aput v5, v0, v1

    const/16 v1, 0x178

    aput v5, v0, v1

    const/16 v1, 0x17c

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x17e

    aput v5, v0, v1

    const/16 v1, 0x17f

    aput v5, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x185

    aput v5, v0, v1

    const/16 v1, 0x186

    aput v5, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x18c

    aput v5, v0, v1

    const/16 v1, 0x18d

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x190

    .line 79
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x193

    aput v5, v0, v1

    const/16 v1, 0x197

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x198

    aput v4, v0, v1

    const/16 v1, 0x19a

    aput v5, v0, v1

    const/16 v1, 0x19e

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x19f

    aput v3, v0, v1

    const/16 v1, 0x1a1

    aput v5, v0, v1

    const/16 v1, 0x1a5

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x1a6

    aput v4, v0, v1

    const/16 v1, 0x1a8

    aput v5, v0, v1

    const/16 v1, 0x1ac

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x1ad

    aput v3, v0, v1

    const/16 v1, 0x1ae

    aput v7, v0, v1

    const/16 v1, 0x1af

    aput v5, v0, v1

    const/16 v1, 0x1b0

    aput v7, v0, v1

    const/16 v1, 0x1b3

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x1b4

    aput v6, v0, v1

    const/16 v1, 0x1b5

    aput v5, v0, v1

    const/16 v1, 0x1b6

    aput v5, v0, v1

    const/16 v1, 0x1b7

    aput v4, v0, v1

    const/16 v1, 0x1ba

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x1bc

    aput v5, v0, v1

    const/16 v1, 0x1bd

    aput v5, v0, v1

    const/16 v1, 0x1be

    aput v3, v0, v1

    const/16 v1, 0x1c1

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x1c3

    aput v5, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c5

    aput v4, v0, v1

    const/16 v1, 0x1c8

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x1ca

    aput v5, v0, v1

    const/16 v1, 0x1cb

    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x1cc

    aput v3, v0, v1

    const/16 v1, 0x1cf

    .line 88
    aput v4, v0, v1

    const/16 v1, 0x1d1

    aput v5, v0, v1

    const/16 v1, 0x1d3

    aput v4, v0, v1

    const/16 v1, 0x1d6

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x1d8

    aput v5, v0, v1

    const/16 v1, 0x1da

    aput v3, v0, v1

    const/16 v1, 0x1dd

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x1df

    aput v5, v0, v1

    const/16 v1, 0x1e1

    aput v4, v0, v1

    const/16 v1, 0x1e4

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1e6

    aput v5, v0, v1

    const/16 v1, 0x1e8

    aput v3, v0, v1

    const/16 v1, 0x1eb

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x1ed

    aput v5, v0, v1

    const/16 v1, 0x1ef

    aput v4, v0, v1

    const/16 v1, 0x1f2

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x1f4

    aput v5, v0, v1

    const/16 v1, 0x1f6

    aput v3, v0, v1

    const/16 v1, 0x1f9

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x1fb

    aput v5, v0, v1

    const/16 v1, 0x1fd

    aput v4, v0, v1

    const/16 v1, 0x200

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x201

    aput v3, v0, v1

    const/16 v1, 0x202

    aput v3, v0, v1

    const/16 v1, 0x203

    aput v3, v0, v1

    const/16 v1, 0x204

    aput v3, v0, v1

    const/16 v1, 0x207

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20b

    aput v4, v0, v1

    const/16 v1, 0x20e

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x20f

    aput v4, v0, v1

    const/16 v1, 0x211

    aput v4, v0, v1

    const/16 v1, 0x212

    aput v3, v0, v1

    const/16 v1, 0x215

    .line 98
    aput v4, v0, v1

    const/16 v1, 0x216

    aput v3, v0, v1

    const/16 v1, 0x218

    aput v3, v0, v1

    const/16 v1, 0x219

    aput v4, v0, v1

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

    aput v4, v0, v1

    const/16 v1, 0x22d

    aput v4, v0, v1

    const/16 v1, 0x22e

    aput v3, v0, v1

    const/16 v1, 0x231

    .line 102
    aput v6, v0, v1

    const/16 v1, 0x232

    aput v3, v0, v1

    const/16 v1, 0x233

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x234

    aput v3, v0, v1

    const/16 v1, 0x235

    const v2, 0xa000800

    aput v2, v0, v1

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

    const v2, 0x1000600

    aput v2, v0, v1

    const/16 v1, 0x242

    aput v3, v0, v1

    const/16 v1, 0x247

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x248

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x249

    aput v3, v0, v1

    const/16 v1, 0x24e

    .line 106
    aput v6, v0, v1

    const/16 v1, 0x24f

    const v2, 0x1000600

    aput v2, v0, v1

    const/16 v1, 0x250

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x256

    .line 107
    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x25c

    .line 108
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x25d

    const v2, 0x1000600

    aput v2, v0, v1

    const/16 v1, 0x25e

    aput v7, v0, v1

    const/16 v1, 0x263

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x264

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x265

    aput v3, v0, v1

    const/16 v1, 0x26a

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x26b

    const v2, 0x1000600

    aput v2, v0, v1

    const/16 v1, 0x26c

    aput v3, v0, v1

    const/16 v1, 0x271

    .line 111
    aput v6, v0, v1

    const/16 v1, 0x272

    const v2, 0x1000700

    aput v2, v0, v1

    const/16 v1, 0x273

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x279

    .line 112
    const v2, 0x1000600

    aput v2, v0, v1

    const/16 v1, 0x280

    .line 113
    aput v3, v0, v1

    const/16 v1, 0x286

    .line 114
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x287

    aput v4, v0, v1

    const/16 v1, 0x288

    aput v7, v0, v1

    const/16 v1, 0x28d

    .line 115
    aput v3, v0, v1

    const/16 v1, 0x28e

    aput v3, v0, v1

    const/16 v1, 0x28f

    aput v3, v0, v1

    const/16 v1, 0x294

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x295

    aput v4, v0, v1

    const/16 v1, 0x296

    aput v3, v0, v1

    const/16 v1, 0x29a

    .line 117
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x29b

    aput v3, v0, v1

    const/16 v1, 0x29c

    aput v3, v0, v1

    const/16 v1, 0x29d

    aput v4, v0, v1

    const/16 v1, 0x29e

    aput v7, v0, v1

    const/16 v1, 0x2a1

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2a2

    aput v3, v0, v1

    const/16 v1, 0x2a3

    aput v4, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a8

    .line 119
    aput v3, v0, v1

    const/16 v1, 0x2a9

    aput v3, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ab

    aput v4, v0, v1

    const/16 v1, 0x2ac

    aput v3, v0, v1

    const/16 v1, 0x2af

    .line 120
    aput v6, v0, v1

    const/16 v1, 0x2b0

    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v3, v0, v1

    const/16 v1, 0x2b3

    aput v3, v0, v1

    const/16 v1, 0x2b8

    .line 121
    aput v6, v0, v1

    const/16 v1, 0x2b9

    aput v4, v0, v1

    const/16 v1, 0x2ba

    aput v4, v0, v1

    const/16 v1, 0x2c0

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x2c1

    aput v3, v0, v1

    const/16 v1, 0x2c7

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x2c8

    aput v4, v0, v1

    const/16 v1, 0x2cd

    .line 124
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2ce

    aput v3, v0, v1

    const/16 v1, 0x2cf

    aput v3, v0, v1

    const/16 v1, 0x2d3

    .line 125
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2d4

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2d5

    aput v3, v0, v1

    const/16 v1, 0x2d6

    aput v3, v0, v1

    const/16 v1, 0x2da

    .line 126
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2db

    aput v3, v0, v1

    const/16 v1, 0x2dc

    aput v3, v0, v1

    const/16 v1, 0x2dd

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x2e1

    .line 127
    aput v3, v0, v1

    const/16 v1, 0x2e2

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2e3

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x2e8

    .line 128
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2e9

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x2ef

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x2f6

    .line 130
    aput v4, v0, v1

    const/16 v1, 0x2fd

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x304

    .line 132
    aput v4, v0, v1

    const/16 v1, 0x30a

    .line 133
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x30b

    aput v3, v0, v1

    const/16 v1, 0x30c

    aput v7, v0, v1

    const/16 v1, 0x311

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x312

    aput v4, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x318

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x319

    aput v3, v0, v1

    const/16 v1, 0x31a

    aput v3, v0, v1

    const/16 v1, 0x31f

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x320

    aput v4, v0, v1

    const/16 v1, 0x321

    aput v3, v0, v1

    const/16 v1, 0x326

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x327

    aput v3, v0, v1

    const/16 v1, 0x328

    aput v3, v0, v1

    const/16 v1, 0x32d

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x32e

    aput v4, v0, v1

    const/16 v1, 0x32f

    aput v3, v0, v1

    const/16 v1, 0x330

    aput v7, v0, v1

    const/16 v1, 0x334

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x336

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x337

    aput v3, v0, v1

    const/16 v1, 0x338

    aput v7, v0, v1

    const/16 v1, 0x33b

    .line 140
    aput v6, v0, v1

    const/16 v1, 0x33c

    aput v4, v0, v1

    const/16 v1, 0x33d

    aput v3, v0, v1

    const/16 v1, 0x33e

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x33f

    aput v3, v0, v1

    const/16 v1, 0x343

    .line 141
    aput v6, v0, v1

    const/16 v1, 0x344

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x345

    aput v3, v0, v1

    const/16 v1, 0x346

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x34b

    .line 142
    aput v6, v0, v1

    const/16 v1, 0x34c

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x34d

    aput v3, v0, v1

    const/16 v1, 0x353

    .line 143
    aput v6, v0, v1

    const/16 v1, 0x354

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x35b

    .line 144
    aput v3, v0, v1

    const/16 v1, 0x362

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x369

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x370

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x376

    .line 148
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x377

    aput v4, v0, v1

    const/16 v1, 0x37c

    .line 149
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x37d

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x37e

    aput v3, v0, v1

    const/16 v1, 0x383

    .line 150
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x384

    aput v3, v0, v1

    const/16 v1, 0x385

    aput v4, v0, v1

    const/16 v1, 0x38a

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x38b

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x38c

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x391

    .line 152
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x392

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x398

    .line 153
    aput v3, v0, v1

    const/16 v1, 0x39f

    .line 154
    aput v4, v0, v1

    const/16 v1, 0x3a6

    .line 155
    aput v5, v0, v1

    const/16 v1, 0x3ad

    .line 156
    aput v4, v0, v1

    const/16 v1, 0x3b4

    .line 157
    aput v5, v0, v1

    const/16 v1, 0x3ba

    .line 158
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3bb

    aput v4, v0, v1

    const/16 v1, 0x3bc

    aput v7, v0, v1

    const/16 v1, 0x3c1

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x3c2

    aput v5, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c7

    .line 160
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3c8

    aput v3, v0, v1

    const/16 v1, 0x3c9

    aput v4, v0, v1

    const/16 v1, 0x3ca

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3cb

    aput v7, v0, v1

    const/16 v1, 0x3ce

    .line 161
    aput v3, v0, v1

    const/16 v1, 0x3cf

    aput v3, v0, v1

    const/16 v1, 0x3d0

    aput v5, v0, v1

    const/16 v1, 0x3d1

    aput v3, v0, v1

    const/16 v1, 0x3d2

    aput v3, v0, v1

    const/16 v1, 0x3d5

    .line 162
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3d6

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x3d8

    aput v3, v0, v1

    const/16 v1, 0x3d9

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3dc

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x3df

    aput v3, v0, v1

    const/16 v1, 0x3e0

    aput v3, v0, v1

    const/16 v1, 0x3e3

    .line 164
    aput v4, v0, v1

    const/16 v1, 0x3e6

    aput v4, v0, v1

    const/16 v1, 0x3e7

    aput v4, v0, v1

    const/16 v1, 0x3ea

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3ee

    aput v3, v0, v1

    const/16 v1, 0x3f1

    .line 166
    aput v4, v0, v1

    const/16 v1, 0x3f2

    aput v7, v0, v1

    const/16 v1, 0x3f4

    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v3, v0, v1

    const/16 v1, 0x3f8

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x3f9

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x3fc

    aput v3, v0, v1

    const/16 v1, 0x3ff

    .line 168
    aput v6, v0, v1

    const/16 v1, 0x400

    aput v3, v0, v1

    const/16 v1, 0x402

    aput v3, v0, v1

    const/16 v1, 0x403

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x407

    .line 169
    aput v4, v0, v1

    const/16 v1, 0x409

    aput v4, v0, v1

    const/16 v1, 0x40e

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x410

    aput v3, v0, v1

    const/16 v1, 0x415

    .line 171
    aput v4, v0, v1

    const/16 v1, 0x416

    aput v7, v0, v1

    const/16 v1, 0x417

    aput v4, v0, v1

    const/16 v1, 0x418

    aput v7, v0, v1

    const/16 v1, 0x41c

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x41d

    aput v3, v0, v1

    const/16 v1, 0x41e

    aput v3, v0, v1

    const/16 v1, 0x41f

    aput v3, v0, v1

    const/16 v1, 0x422

    .line 173
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x423

    aput v4, v0, v1

    const/16 v1, 0x424

    aput v3, v0, v1

    const/16 v1, 0x425

    aput v4, v0, v1

    const/16 v1, 0x426

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x429

    .line 174
    aput v3, v0, v1

    const/16 v1, 0x42a

    aput v3, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42c

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x430

    .line 175
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x431

    aput v3, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x434

    aput v4, v0, v1

    const/16 v1, 0x437

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x439

    aput v6, v0, v1

    const/16 v1, 0x43a

    aput v3, v0, v1

    const/16 v1, 0x43b

    aput v4, v0, v1

    const/16 v1, 0x43e

    .line 177
    aput v4, v0, v1

    const/16 v1, 0x43f

    aput v7, v0, v1

    const/16 v1, 0x441

    aput v6, v0, v1

    const/16 v1, 0x442

    aput v4, v0, v1

    const/16 v1, 0x445

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x446

    aput v3, v0, v1

    const/16 v1, 0x447

    aput v7, v0, v1

    const/16 v1, 0x449

    aput v4, v0, v1

    const/16 v1, 0x44c

    .line 179
    aput v4, v0, v1

    const/16 v1, 0x44d

    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v3, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x450

    aput v4, v0, v1

    const/16 v1, 0x453

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x454

    aput v3, v0, v1

    const/16 v1, 0x455

    aput v3, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    const/16 v1, 0x457

    aput v4, v0, v1

    const/16 v1, 0x45a

    .line 181
    aput v6, v0, v1

    const/16 v1, 0x45b

    aput v3, v0, v1

    const/16 v1, 0x45c

    aput v3, v0, v1

    const/16 v1, 0x45d

    aput v3, v0, v1

    const/16 v1, 0x45e

    aput v4, v0, v1

    const/16 v1, 0x462

    .line 182
    aput v6, v0, v1

    const/16 v1, 0x463

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x464

    aput v3, v0, v1

    const/16 v1, 0x465

    aput v4, v0, v1

    const/16 v1, 0x46a

    .line 183
    aput v3, v0, v1

    const/16 v1, 0x46b

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x46c

    aput v4, v0, v1

    const/16 v1, 0x470

    .line 184
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x471

    aput v4, v0, v1

    const/16 v1, 0x473

    aput v4, v0, v1

    const/16 v1, 0x477

    .line 185
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x478

    aput v3, v0, v1

    const/16 v1, 0x47a

    aput v4, v0, v1

    const/16 v1, 0x47e

    .line 186
    aput v3, v0, v1

    const/16 v1, 0x47f

    aput v3, v0, v1

    const/16 v1, 0x481

    aput v4, v0, v1

    const/16 v1, 0x485

    .line 187
    aput v3, v0, v1

    const/16 v1, 0x486

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x488

    aput v4, v0, v1

    const/16 v1, 0x48c

    .line 188
    aput v4, v0, v1

    const/16 v1, 0x48d

    aput v7, v0, v1

    const/16 v1, 0x48f

    aput v4, v0, v1

    const/16 v1, 0x493

    .line 189
    aput v3, v0, v1

    const/16 v1, 0x494

    aput v3, v0, v1

    const/16 v1, 0x496

    aput v4, v0, v1

    const/16 v1, 0x49a

    .line 190
    aput v3, v0, v1

    const/16 v1, 0x49b

    aput v3, v0, v1

    const/16 v1, 0x49d

    aput v4, v0, v1

    const/16 v1, 0x4a1

    .line 191
    aput v4, v0, v1

    const/16 v1, 0x4a2

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4a4

    aput v4, v0, v1

    const/16 v1, 0x4a8

    .line 192
    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v4, v0, v1

    const/16 v1, 0x4af

    .line 193
    aput v3, v0, v1

    const/16 v1, 0x4b2

    aput v4, v0, v1

    const/16 v1, 0x4b6

    .line 194
    aput v4, v0, v1

    const/16 v1, 0x4b7

    aput v7, v0, v1

    const/16 v1, 0x4b8

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4b9

    aput v4, v0, v1

    const/16 v1, 0x4bd

    .line 195
    aput v3, v0, v1

    const/16 v1, 0x4be

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x4bf

    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x4c0

    aput v4, v0, v1

    const/16 v1, 0x4c4

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x4c5

    aput v3, v0, v1

    const/16 v1, 0x4c6

    aput v3, v0, v1

    const/16 v1, 0x4c7

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4cb

    .line 197
    aput v6, v0, v1

    const/16 v1, 0x4cc

    aput v4, v0, v1

    const/16 v1, 0x4cd

    aput v4, v0, v1

    const/16 v1, 0x4d3

    .line 198
    aput v3, v0, v1

    const/16 v1, 0x4d4

    aput v3, v0, v1

    const/16 v1, 0x4d9

    .line 199
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4da

    aput v4, v0, v1

    const/16 v1, 0x4db

    aput v4, v0, v1

    const/16 v1, 0x4e0

    .line 200
    aput v3, v0, v1

    const/16 v1, 0x4e1

    aput v3, v0, v1

    const/16 v1, 0x4e2

    aput v3, v0, v1

    const/16 v1, 0x4e7

    .line 201
    aput v3, v0, v1

    const/16 v1, 0x4e8

    aput v4, v0, v1

    const/16 v1, 0x4e9

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x4ee

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x4ef

    aput v3, v0, v1

    const/16 v1, 0x4f0

    aput v7, v0, v1

    const/16 v1, 0x4f5

    .line 203
    aput v3, v0, v1

    const/16 v1, 0x4f6

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

    const/16 v1, 0x50b

    aput v3, v0, v1

    const/16 v1, 0x50c

    aput v3, v0, v1

    const/16 v1, 0x511

    .line 207
    aput v6, v0, v1

    const/16 v1, 0x512

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x513

    const v2, 0xa000800

    aput v2, v0, v1

    const/16 v1, 0x519

    .line 208
    aput v3, v0, v1

    const/16 v1, 0x51f

    .line 209
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x520

    aput v4, v0, v1

    const/16 v1, 0x521

    aput v7, v0, v1

    const/16 v1, 0x525

    .line 210
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x526

    aput v3, v0, v1

    const/16 v1, 0x527

    aput v3, v0, v1

    const/16 v1, 0x528

    aput v3, v0, v1

    const/16 v1, 0x529

    aput v7, v0, v1

    const/16 v1, 0x52c

    .line 211
    aput v3, v0, v1

    const/16 v1, 0x52d

    aput v3, v0, v1

    const/16 v1, 0x52e

    aput v4, v0, v1

    const/16 v1, 0x52f

    aput v3, v0, v1

    const/16 v1, 0x530

    aput v3, v0, v1

    const/16 v1, 0x533

    .line 212
    aput v3, v0, v1

    const/16 v1, 0x534

    aput v4, v0, v1

    const/16 v1, 0x535

    aput v3, v0, v1

    const/16 v1, 0x536

    aput v4, v0, v1

    const/16 v1, 0x537

    aput v3, v0, v1

    const/16 v1, 0x53a

    .line 213
    aput v3, v0, v1

    const/16 v1, 0x53c

    aput v4, v0, v1

    const/16 v1, 0x53e

    aput v3, v0, v1

    const/16 v1, 0x541

    .line 214
    aput v3, v0, v1

    const/16 v1, 0x543

    aput v3, v0, v1

    const/16 v1, 0x545

    aput v3, v0, v1

    const/16 v1, 0x548

    .line 215
    aput v3, v0, v1

    const/16 v1, 0x549

    aput v3, v0, v1

    const/16 v1, 0x54a

    aput v4, v0, v1

    const/16 v1, 0x54b

    aput v3, v0, v1

    const/16 v1, 0x54c

    aput v3, v0, v1

    const/16 v1, 0x54f

    .line 216
    aput v3, v0, v1

    const/16 v1, 0x550

    aput v4, v0, v1

    const/16 v1, 0x551

    aput v3, v0, v1

    const/16 v1, 0x552

    aput v4, v0, v1

    const/16 v1, 0x553

    aput v3, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x55e

    aput v4, v0, v1

    const/16 v1, 0x560

    aput v4, v0, v1

    const/16 v1, 0x561

    aput v3, v0, v1

    const/16 v1, 0x564

    .line 219
    aput v3, v0, v1

    const/16 v1, 0x565

    aput v3, v0, v1

    const/16 v1, 0x567

    aput v3, v0, v1

    const/16 v1, 0x568

    aput v3, v0, v1

    const/16 v1, 0x56b

    .line 220
    aput v3, v0, v1

    const/16 v1, 0x56c

    aput v4, v0, v1

    const/16 v1, 0x56d

    aput v3, v0, v1

    const/16 v1, 0x56e

    aput v4, v0, v1

    const/16 v1, 0x56f

    aput v3, v0, v1

    const/16 v1, 0x573

    .line 221
    aput v3, v0, v1

    const/16 v1, 0x574

    aput v4, v0, v1

    const/16 v1, 0x575

    aput v3, v0, v1

    const/16 v1, 0x57a

    .line 222
    aput v4, v0, v1

    const/16 v1, 0x57b

    aput v3, v0, v1

    const/16 v1, 0x57c

    aput v4, v0, v1

    const/16 v1, 0x581

    .line 223
    aput v3, v0, v1

    const/16 v1, 0x583

    aput v3, v0, v1

    const/16 v1, 0x588

    .line 224
    aput v4, v0, v1

    const/16 v1, 0x58a

    aput v4, v0, v1

    const/16 v1, 0x58e

    .line 225
    aput v3, v0, v1

    const/16 v1, 0x58f

    aput v3, v0, v1

    const/16 v1, 0x591

    aput v3, v0, v1

    const/16 v1, 0x592

    aput v3, v0, v1

    const/16 v1, 0x596

    .line 226
    aput v4, v0, v1

    const/16 v1, 0x597

    aput v3, v0, v1

    const/16 v1, 0x598

    aput v4, v0, v1

    const/16 v1, 0x59d

    .line 227
    aput v3, v0, v1

    const/16 v1, 0x59e

    aput v4, v0, v1

    const/16 v1, 0x59f

    aput v3, v0, v1

    const/16 v1, 0x5a4

    .line 228
    aput v4, v0, v1

    const/16 v1, 0x5a5

    aput v3, v0, v1

    const/16 v1, 0x5a6

    aput v4, v0, v1

    const/16 v1, 0x5ab

    .line 229
    aput v3, v0, v1

    const/16 v1, 0x5ac

    aput v4, v0, v1

    const/16 v1, 0x5ad

    aput v3, v0, v1

    const/16 v1, 0x5b1

    .line 230
    aput v3, v0, v1

    const/16 v1, 0x5b2

    aput v4, v0, v1

    const/16 v1, 0x5b3

    aput v3, v0, v1

    const/16 v1, 0x5b4

    aput v4, v0, v1

    const/16 v1, 0x5b5

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mTiles:[I

    .line 235
    const/16 v0, 0x5d

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 237
    const v2, 0x11010305

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 238
    const v2, 0x1101020a

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 239
    const v2, 0x1101040a

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 240
    const v2, 0x31010210

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 241
    const v2, 0x11010410

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 242
    const v2, 0x21010317

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 243
    const v2, 0x2101031d

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 244
    const v2, 0x11010323

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 245
    const v2, 0x11010423

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 246
    const v2, 0x40010524

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 247
    const v2, 0x31010234

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 248
    const v2, 0x3101033a

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 249
    const v2, 0x21010441

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 250
    const v2, 0x11010143

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 251
    const v2, 0x31010260

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, 0x21010266

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 253
    const v2, 0x1101046a

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 254
    const v2, 0x21010372

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 255
    const v2, 0x31010273

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 256
    const v2, 0x1101027f

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 257
    const v2, 0x1101047f

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 258
    const v2, 0x31010188

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 259
    const v2, 0x40010388

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 260
    const v2, 0x31010588

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 261
    const v2, 0x21010296

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 262
    const v2, 0x110102a1

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 263
    const v2, 0x110104a1

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 264
    const v2, 0x210103a8

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 265
    const v2, 0x310103b2

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 266
    const v2, 0x310103b9

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 267
    const v2, 0x110102c3

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 268
    const v2, 0x110104c3

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 271
    const v2, 0x2010101

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 272
    const v2, 0x2010501

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 273
    const v2, 0x2010106

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 274
    const v2, 0x2010506

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 275
    const v2, 0x2010110

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 276
    const v2, 0x2010510

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 277
    const v2, 0x2010218

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 278
    const v2, 0x2010418

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 279
    const v2, 0x2010319

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 280
    const v2, 0x2010222

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 281
    const v2, 0x2010523

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 282
    const v2, 0x2010328

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 283
    const v2, 0x2010430

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 284
    const v2, 0x2010132

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 285
    const v2, 0x201013a

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 286
    const v2, 0x201053c

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 287
    const v2, 0x201013f

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 288
    const v2, 0x201053f

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 289
    const v2, 0x2010147

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 290
    const v2, 0x2010547

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 291
    const v2, 0x201044f

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 292
    const v2, 0x2010550

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 293
    const v2, 0x2010352

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 294
    const v2, 0x2010453

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 295
    const v2, 0x2010458

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 296
    const v2, 0x2010359

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 297
    const v2, 0x201055c

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 298
    const v2, 0x201045d

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 299
    const v2, 0x2010162

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 300
    const v2, 0x2010362

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 301
    const v2, 0x2010367

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 302
    const v2, 0x2010468

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 303
    const v2, 0x201026a

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 304
    const v2, 0x201036b

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 305
    const v2, 0x2010172

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 306
    const v2, 0x2010572

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 307
    const v2, 0x2010278

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 308
    const v2, 0x2010478

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 309
    const v2, 0x201027b

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 310
    const v2, 0x201047b

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 311
    const v2, 0x2010381

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 312
    const v2, 0x2010288

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 313
    const v2, 0x2010488

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 314
    const v2, 0x2010490

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 315
    const v2, 0x2010293

    aput v2, v0, v1

    const/16 v1, 0x4d

    .line 316
    const v2, 0x2010198

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 317
    const v2, 0x2010599

    aput v2, v0, v1

    const/16 v1, 0x4f

    .line 318
    const v2, 0x20101a2

    aput v2, v0, v1

    const/16 v1, 0x50

    .line 319
    const v2, 0x20105a2

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 320
    const v2, 0x20102a6

    aput v2, v0, v1

    const/16 v1, 0x52

    .line 321
    const v2, 0x20104a6

    aput v2, v0, v1

    const/16 v1, 0x53

    .line 322
    const v2, 0x20102aa

    aput v2, v0, v1

    const/16 v1, 0x54

    .line 323
    const v2, 0x20104aa

    aput v2, v0, v1

    const/16 v1, 0x55

    .line 324
    const v2, 0x20102bb

    aput v2, v0, v1

    const/16 v1, 0x56

    .line 325
    const v2, 0x20104bb

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 326
    const v2, 0x20101c2

    aput v2, v0, v1

    const/16 v1, 0x58

    .line 327
    const v2, 0x20105c2

    aput v2, v0, v1

    const/16 v1, 0x59

    .line 328
    const v2, 0x20101c4

    aput v2, v0, v1

    const/16 v1, 0x5a

    .line 329
    const v2, 0x20105c4

    aput v2, v0, v1

    const/16 v1, 0x5b

    .line 330
    const v2, 0x630103c9

    aput v2, v0, v1

    .line 235
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_07;->mObjects:[I

    .line 333
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
