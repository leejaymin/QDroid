.class public Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels04_05.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xa000800

    const v6, 0xb000800

    const v5, 0x1000200

    const v4, 0x1000d00

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mSizeX:I

    .line 11
    const/16 v0, 0x104

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mRenderMode:I

    .line 17
    const/16 v0, 0x320

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mMaxTime:I

    .line 21
    const/16 v0, 0x514

    new-array v0, v0, [I

    const/16 v1, 0x33

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x43

    aput v3, v0, v1

    const/16 v1, 0x44

    aput v3, v0, v1

    const/16 v1, 0x47

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x48

    aput v3, v0, v1

    const/16 v1, 0x49

    aput v3, v0, v1

    const/16 v1, 0x4c

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x4d

    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x4e

    aput v3, v0, v1

    const/16 v1, 0x51

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x52

    aput v3, v0, v1

    const/16 v1, 0x53

    aput v3, v0, v1

    const/16 v1, 0x56

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x57

    aput v3, v0, v1

    const/16 v1, 0x58

    aput v3, v0, v1

    const/16 v1, 0x5b

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x60

    .line 41
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x6a

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x6b

    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6f

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x70

    aput v3, v0, v1

    const/16 v1, 0x71

    aput v3, v0, v1

    const/16 v1, 0x74

    .line 45
    aput v3, v0, v1

    const/16 v1, 0x75

    aput v3, v0, v1

    const/16 v1, 0x76

    aput v3, v0, v1

    const/16 v1, 0x7a

    .line 46
    aput v3, v0, v1

    const/16 v1, 0x7f

    .line 47
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 48
    aput v3, v0, v1

    const/16 v1, 0x88

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8d

    .line 50
    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v3, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x92

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x97

    .line 52
    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9c

    .line 53
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xa1

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa6

    .line 55
    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xab

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb6

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xbb

    .line 59
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 60
    aput v3, v0, v1

    const/16 v1, 0xc4

    .line 61
    aput v3, v0, v1

    const/16 v1, 0xc5

    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc9

    .line 62
    aput v3, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v3, v0, v1

    const/16 v1, 0xce

    .line 63
    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd4

    .line 64
    aput v6, v0, v1

    const/16 v1, 0xd5

    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xda

    .line 65
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xdf

    .line 66
    aput v3, v0, v1

    const/16 v1, 0xe4

    .line 67
    aput v3, v0, v1

    const/16 v1, 0xe9

    .line 68
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xee

    .line 69
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0xf3

    .line 70
    aput v3, v0, v1

    const/16 v1, 0xf8

    .line 71
    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 72
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x102

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x107

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x10c

    .line 75
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x111

    .line 76
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x114

    .line 77
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x115

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x116

    aput v3, v0, v1

    const/16 v1, 0x119

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11e

    .line 79
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x123

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x128

    .line 81
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x12d

    .line 82
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x132

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x137

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x13c

    .line 85
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x141

    .line 86
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x146

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x14b

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x150

    .line 89
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x155

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x15a

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x15f

    .line 92
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x164

    .line 93
    const v2, 0x1000c00

    aput v2, v0, v1

    const/16 v1, 0x169

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x16e

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x16f

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x173

    .line 96
    aput v6, v0, v1

    const/16 v1, 0x174

    aput v5, v0, v1

    const/16 v1, 0x175

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x179

    .line 97
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x17a

    aput v3, v0, v1

    const/16 v1, 0x17f

    .line 98
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x183

    .line 99
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x187

    .line 100
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x188

    aput v5, v0, v1

    const/16 v1, 0x189

    aput v7, v0, v1

    const/16 v1, 0x18c

    .line 101
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x18d

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x191

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x192

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x196

    .line 103
    aput v6, v0, v1

    const/16 v1, 0x197

    aput v5, v0, v1

    const/16 v1, 0x198

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x19c

    .line 104
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x19d

    aput v3, v0, v1

    const/16 v1, 0x1a2

    .line 105
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1a6

    .line 106
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1aa

    .line 107
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ab

    aput v5, v0, v1

    const/16 v1, 0x1ac

    aput v7, v0, v1

    const/16 v1, 0x1af

    .line 108
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1b0

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x1b4

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x1b5

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x1b9

    .line 110
    aput v6, v0, v1

    const/16 v1, 0x1ba

    aput v5, v0, v1

    const/16 v1, 0x1bb

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1bf

    .line 111
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x1c0

    aput v3, v0, v1

    const/16 v1, 0x1c5

    .line 112
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1c9

    .line 113
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x1ca

    aput v3, v0, v1

    const/16 v1, 0x1cd

    .line 114
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ce

    aput v5, v0, v1

    const/16 v1, 0x1cf

    aput v7, v0, v1

    const/16 v1, 0x1d2

    .line 115
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1d3

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x1d7

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x1d8

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x1dc

    .line 117
    aput v6, v0, v1

    const/16 v1, 0x1dd

    aput v5, v0, v1

    const/16 v1, 0x1de

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x1e2

    .line 118
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x1e3

    aput v3, v0, v1

    const/16 v1, 0x1e8

    .line 119
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x1ec

    .line 120
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1f0

    .line 121
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1f1

    aput v5, v0, v1

    const/16 v1, 0x1f2

    aput v7, v0, v1

    const/16 v1, 0x1f5

    .line 122
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x1f6

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x1fa

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x1fb

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x1ff

    .line 124
    aput v6, v0, v1

    const/16 v1, 0x200

    aput v5, v0, v1

    const/16 v1, 0x201

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x205

    .line 125
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x206

    aput v3, v0, v1

    const/16 v1, 0x20b

    .line 126
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x20f

    .line 127
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x213

    .line 128
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x214

    aput v5, v0, v1

    const/16 v1, 0x215

    aput v7, v0, v1

    const/16 v1, 0x218

    .line 129
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x219

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x21d

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x21e

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x222

    .line 131
    aput v6, v0, v1

    const/16 v1, 0x223

    aput v5, v0, v1

    const/16 v1, 0x224

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x228

    .line 132
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x229

    aput v3, v0, v1

    const/16 v1, 0x22e

    .line 133
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x232

    .line 134
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x236

    .line 135
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x237

    aput v5, v0, v1

    const/16 v1, 0x238

    aput v7, v0, v1

    const/16 v1, 0x23b

    .line 136
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x23c

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x240

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x241

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x245

    .line 138
    aput v6, v0, v1

    const/16 v1, 0x246

    aput v5, v0, v1

    const/16 v1, 0x247

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x24b

    .line 139
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x24c

    aput v3, v0, v1

    const/16 v1, 0x251

    .line 140
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x255

    .line 141
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x256

    aput v3, v0, v1

    const/16 v1, 0x259

    .line 142
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x25a

    aput v5, v0, v1

    const/16 v1, 0x25b

    aput v7, v0, v1

    const/16 v1, 0x25e

    .line 143
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x25f

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x263

    .line 144
    aput v3, v0, v1

    const/16 v1, 0x264

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x268

    .line 145
    aput v6, v0, v1

    const/16 v1, 0x269

    aput v5, v0, v1

    const/16 v1, 0x26a

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x26e

    .line 146
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x26f

    aput v3, v0, v1

    const/16 v1, 0x274

    .line 147
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x278

    .line 148
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x279

    aput v3, v0, v1

    const/16 v1, 0x27c

    .line 149
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x27d

    aput v5, v0, v1

    const/16 v1, 0x27e

    aput v7, v0, v1

    const/16 v1, 0x281

    .line 150
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x282

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x286

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x287

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x28b

    .line 152
    aput v6, v0, v1

    const/16 v1, 0x28c

    aput v5, v0, v1

    const/16 v1, 0x28d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x291

    .line 153
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x292

    aput v3, v0, v1

    const/16 v1, 0x297

    .line 154
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x29b

    .line 155
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x29c

    aput v3, v0, v1

    const/16 v1, 0x29f

    .line 156
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2a0

    aput v5, v0, v1

    const/16 v1, 0x2a1

    aput v7, v0, v1

    const/16 v1, 0x2a4

    .line 157
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2a5

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x2a9

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x2aa

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x2ae

    .line 159
    aput v6, v0, v1

    const/16 v1, 0x2af

    aput v5, v0, v1

    const/16 v1, 0x2b0

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2b4

    .line 160
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x2b5

    aput v3, v0, v1

    const/16 v1, 0x2ba

    .line 161
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2be

    .line 162
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x2bf

    aput v3, v0, v1

    const/16 v1, 0x2c2

    .line 163
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2c3

    aput v5, v0, v1

    const/16 v1, 0x2c4

    aput v7, v0, v1

    const/16 v1, 0x2c7

    .line 164
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2c8

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x2cc

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x2cd

    const v2, 0xc000200

    aput v2, v0, v1

    const/16 v1, 0x2d1

    .line 166
    aput v6, v0, v1

    const/16 v1, 0x2d2

    aput v5, v0, v1

    const/16 v1, 0x2d3

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2d7

    .line 167
    const v2, 0xb000200

    aput v2, v0, v1

    const/16 v1, 0x2d8

    aput v3, v0, v1

    const/16 v1, 0x2dd

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x2e1

    .line 169
    const v2, 0xd000200

    aput v2, v0, v1

    const/16 v1, 0x2e2

    aput v3, v0, v1

    const/16 v1, 0x2e5

    .line 170
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2e6

    aput v5, v0, v1

    const/16 v1, 0x2e7

    aput v3, v0, v1

    const/16 v1, 0x2ea

    .line 171
    aput v3, v0, v1

    const/16 v1, 0x2eb

    const v2, 0xa000200

    aput v2, v0, v1

    const/16 v1, 0x2ec

    aput v3, v0, v1

    const/16 v1, 0x2ef

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x2f1

    aput v3, v0, v1

    const/16 v1, 0x2f4

    .line 173
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x2f6

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x2f9

    .line 174
    aput v3, v0, v1

    const/16 v1, 0x2fb

    aput v3, v0, v1

    const/16 v1, 0x2fe

    .line 175
    aput v3, v0, v1

    const/16 v1, 0x300

    aput v3, v0, v1

    const/16 v1, 0x303

    .line 176
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x305

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x308

    .line 177
    aput v3, v0, v1

    const/16 v1, 0x30a

    aput v3, v0, v1

    const/16 v1, 0x30d

    .line 178
    aput v3, v0, v1

    const/16 v1, 0x30f

    aput v3, v0, v1

    const/16 v1, 0x312

    .line 179
    aput v4, v0, v1

    const/16 v1, 0x314

    aput v4, v0, v1

    const/16 v1, 0x317

    .line 180
    aput v4, v0, v1

    const/16 v1, 0x318

    aput v7, v0, v1

    const/16 v1, 0x319

    aput v4, v0, v1

    const/16 v1, 0x31c

    .line 181
    aput v3, v0, v1

    const/16 v1, 0x31e

    aput v3, v0, v1

    const/16 v1, 0x321

    .line 182
    aput v3, v0, v1

    const/16 v1, 0x323

    aput v3, v0, v1

    const/16 v1, 0x326

    .line 183
    aput v4, v0, v1

    const/16 v1, 0x327

    aput v6, v0, v1

    const/16 v1, 0x328

    aput v4, v0, v1

    const/16 v1, 0x32b

    .line 184
    aput v4, v0, v1

    const/16 v1, 0x32d

    aput v4, v0, v1

    const/16 v1, 0x330

    .line 185
    aput v3, v0, v1

    const/16 v1, 0x332

    aput v3, v0, v1

    const/16 v1, 0x335

    .line 186
    aput v4, v0, v1

    const/16 v1, 0x337

    aput v4, v0, v1

    const/16 v1, 0x33a

    .line 187
    aput v4, v0, v1

    const/16 v1, 0x33b

    aput v7, v0, v1

    const/16 v1, 0x33c

    aput v4, v0, v1

    const/16 v1, 0x33f

    .line 188
    aput v3, v0, v1

    const/16 v1, 0x341

    aput v3, v0, v1

    const/16 v1, 0x344

    .line 189
    aput v3, v0, v1

    const/16 v1, 0x346

    aput v3, v0, v1

    const/16 v1, 0x349

    .line 190
    aput v4, v0, v1

    const/16 v1, 0x34a

    aput v6, v0, v1

    const/16 v1, 0x34b

    aput v4, v0, v1

    const/16 v1, 0x34e

    .line 191
    aput v4, v0, v1

    const/16 v1, 0x350

    aput v4, v0, v1

    const/16 v1, 0x353

    .line 192
    aput v3, v0, v1

    const/16 v1, 0x355

    aput v3, v0, v1

    const/16 v1, 0x358

    .line 193
    aput v4, v0, v1

    const/16 v1, 0x35a

    aput v4, v0, v1

    const/16 v1, 0x35d

    .line 194
    aput v4, v0, v1

    const/16 v1, 0x35e

    aput v7, v0, v1

    const/16 v1, 0x35f

    aput v4, v0, v1

    const/16 v1, 0x362

    .line 195
    aput v3, v0, v1

    const/16 v1, 0x364

    aput v3, v0, v1

    const/16 v1, 0x367

    .line 196
    aput v3, v0, v1

    const/16 v1, 0x369

    aput v3, v0, v1

    const/16 v1, 0x36c

    .line 197
    aput v4, v0, v1

    const/16 v1, 0x36d

    aput v6, v0, v1

    const/16 v1, 0x36e

    aput v4, v0, v1

    const/16 v1, 0x371

    .line 198
    aput v4, v0, v1

    const/16 v1, 0x373

    aput v4, v0, v1

    const/16 v1, 0x376

    .line 199
    aput v3, v0, v1

    const/16 v1, 0x378

    aput v3, v0, v1

    const/16 v1, 0x37b

    .line 200
    aput v4, v0, v1

    const/16 v1, 0x37d

    aput v4, v0, v1

    const/16 v1, 0x380

    .line 201
    aput v4, v0, v1

    const/16 v1, 0x381

    aput v7, v0, v1

    const/16 v1, 0x382

    aput v4, v0, v1

    const/16 v1, 0x385

    .line 202
    aput v3, v0, v1

    const/16 v1, 0x387

    aput v3, v0, v1

    const/16 v1, 0x38a

    .line 203
    aput v3, v0, v1

    const/16 v1, 0x38c

    aput v3, v0, v1

    const/16 v1, 0x38f

    .line 204
    aput v4, v0, v1

    const/16 v1, 0x390

    aput v6, v0, v1

    const/16 v1, 0x391

    aput v4, v0, v1

    const/16 v1, 0x394

    .line 205
    aput v4, v0, v1

    const/16 v1, 0x396

    aput v4, v0, v1

    const/16 v1, 0x399

    .line 206
    aput v3, v0, v1

    const/16 v1, 0x39b

    aput v3, v0, v1

    const/16 v1, 0x39e

    .line 207
    aput v4, v0, v1

    const/16 v1, 0x3a0

    aput v4, v0, v1

    const/16 v1, 0x3a3

    .line 208
    aput v4, v0, v1

    const/16 v1, 0x3a4

    aput v7, v0, v1

    const/16 v1, 0x3a5

    aput v4, v0, v1

    const/16 v1, 0x3a8

    .line 209
    aput v3, v0, v1

    const/16 v1, 0x3aa

    aput v3, v0, v1

    const/16 v1, 0x3ad

    .line 210
    aput v3, v0, v1

    const/16 v1, 0x3af

    aput v3, v0, v1

    const/16 v1, 0x3b2

    .line 211
    aput v4, v0, v1

    const/16 v1, 0x3b3

    aput v6, v0, v1

    const/16 v1, 0x3b4

    aput v4, v0, v1

    const/16 v1, 0x3b7

    .line 212
    aput v4, v0, v1

    const/16 v1, 0x3b9

    aput v4, v0, v1

    const/16 v1, 0x3bc

    .line 213
    aput v5, v0, v1

    const/16 v1, 0x3bd

    aput v5, v0, v1

    const/16 v1, 0x3be

    aput v5, v0, v1

    const/16 v1, 0x3c1

    .line 214
    aput v4, v0, v1

    const/16 v1, 0x3c3

    aput v4, v0, v1

    const/16 v1, 0x3c6

    .line 215
    aput v4, v0, v1

    const/16 v1, 0x3c7

    aput v7, v0, v1

    const/16 v1, 0x3c8

    aput v4, v0, v1

    const/16 v1, 0x3cb

    .line 216
    aput v3, v0, v1

    const/16 v1, 0x3cd

    aput v3, v0, v1

    const/16 v1, 0x3d0

    .line 217
    aput v3, v0, v1

    const/16 v1, 0x3d2

    aput v3, v0, v1

    const/16 v1, 0x3d5

    .line 218
    aput v4, v0, v1

    const/16 v1, 0x3d6

    aput v6, v0, v1

    const/16 v1, 0x3d7

    aput v4, v0, v1

    const/16 v1, 0x3da

    .line 219
    aput v4, v0, v1

    const/16 v1, 0x3dc

    aput v4, v0, v1

    const/16 v1, 0x3df

    .line 220
    aput v5, v0, v1

    const/16 v1, 0x3e0

    aput v5, v0, v1

    const/16 v1, 0x3e1

    aput v5, v0, v1

    const/16 v1, 0x3e4

    .line 221
    aput v4, v0, v1

    const/16 v1, 0x3e6

    aput v4, v0, v1

    const/16 v1, 0x3e9

    .line 222
    aput v4, v0, v1

    const/16 v1, 0x3ea

    aput v7, v0, v1

    const/16 v1, 0x3eb

    aput v4, v0, v1

    const/16 v1, 0x3ee

    .line 223
    aput v3, v0, v1

    const/16 v1, 0x3f0

    aput v3, v0, v1

    const/16 v1, 0x3f3

    .line 224
    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v3, v0, v1

    const/16 v1, 0x3f8

    .line 225
    aput v4, v0, v1

    const/16 v1, 0x3f9

    aput v6, v0, v1

    const/16 v1, 0x3fa

    aput v4, v0, v1

    const/16 v1, 0x3fd

    .line 226
    aput v4, v0, v1

    const/16 v1, 0x3ff

    aput v4, v0, v1

    const/16 v1, 0x402

    .line 227
    aput v5, v0, v1

    const/16 v1, 0x403

    aput v5, v0, v1

    const/16 v1, 0x404

    aput v5, v0, v1

    const/16 v1, 0x407

    .line 228
    aput v4, v0, v1

    const/16 v1, 0x409

    aput v4, v0, v1

    const/16 v1, 0x40c

    .line 229
    aput v4, v0, v1

    const/16 v1, 0x40d

    aput v7, v0, v1

    const/16 v1, 0x40e

    aput v4, v0, v1

    const/16 v1, 0x411

    .line 230
    aput v3, v0, v1

    const/16 v1, 0x413

    aput v3, v0, v1

    const/16 v1, 0x416

    .line 231
    aput v3, v0, v1

    const/16 v1, 0x418

    aput v3, v0, v1

    const/16 v1, 0x41b

    .line 232
    aput v4, v0, v1

    const/16 v1, 0x41c

    aput v6, v0, v1

    const/16 v1, 0x41d

    aput v4, v0, v1

    const/16 v1, 0x420

    .line 233
    aput v4, v0, v1

    const/16 v1, 0x422

    aput v4, v0, v1

    const/16 v1, 0x425

    .line 234
    aput v5, v0, v1

    const/16 v1, 0x426

    aput v5, v0, v1

    const/16 v1, 0x427

    aput v5, v0, v1

    const/16 v1, 0x42a

    .line 235
    aput v4, v0, v1

    const/16 v1, 0x42c

    aput v4, v0, v1

    const/16 v1, 0x42f

    .line 236
    aput v4, v0, v1

    const/16 v1, 0x430

    aput v7, v0, v1

    const/16 v1, 0x431

    aput v4, v0, v1

    const/16 v1, 0x434

    .line 237
    aput v3, v0, v1

    const/16 v1, 0x436

    aput v3, v0, v1

    const/16 v1, 0x439

    .line 238
    aput v3, v0, v1

    const/16 v1, 0x43b

    aput v3, v0, v1

    const/16 v1, 0x43e

    .line 239
    aput v4, v0, v1

    const/16 v1, 0x43f

    aput v6, v0, v1

    const/16 v1, 0x440

    aput v4, v0, v1

    const/16 v1, 0x443

    .line 240
    aput v4, v0, v1

    const/16 v1, 0x445

    aput v4, v0, v1

    const/16 v1, 0x448

    .line 241
    aput v5, v0, v1

    const/16 v1, 0x449

    aput v5, v0, v1

    const/16 v1, 0x44a

    aput v5, v0, v1

    const/16 v1, 0x44d

    .line 242
    aput v4, v0, v1

    const/16 v1, 0x44f

    aput v4, v0, v1

    const/16 v1, 0x452

    .line 243
    aput v4, v0, v1

    const/16 v1, 0x453

    aput v7, v0, v1

    const/16 v1, 0x454

    aput v4, v0, v1

    const/16 v1, 0x457

    .line 244
    aput v3, v0, v1

    const/16 v1, 0x459

    aput v3, v0, v1

    const/16 v1, 0x45c

    .line 245
    aput v3, v0, v1

    const/16 v1, 0x45e

    aput v3, v0, v1

    const/16 v1, 0x461

    .line 246
    aput v4, v0, v1

    const/16 v1, 0x462

    aput v6, v0, v1

    const/16 v1, 0x463

    aput v4, v0, v1

    const/16 v1, 0x466

    .line 247
    aput v4, v0, v1

    const/16 v1, 0x468

    aput v4, v0, v1

    const/16 v1, 0x46b

    .line 248
    aput v3, v0, v1

    const/16 v1, 0x46c

    aput v3, v0, v1

    const/16 v1, 0x46d

    aput v3, v0, v1

    const/16 v1, 0x470

    .line 249
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x471

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x472

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x475

    .line 250
    aput v6, v0, v1

    const/16 v1, 0x476

    aput v3, v0, v1

    const/16 v1, 0x477

    aput v7, v0, v1

    const/16 v1, 0x47b

    .line 251
    aput v4, v0, v1

    const/16 v1, 0x480

    .line 252
    aput v4, v0, v1

    const/16 v1, 0x484

    .line 253
    aput v6, v0, v1

    const/16 v1, 0x485

    aput v3, v0, v1

    const/16 v1, 0x486

    aput v7, v0, v1

    const/16 v1, 0x48a

    .line 254
    aput v4, v0, v1

    const/16 v1, 0x48f

    .line 255
    aput v4, v0, v1

    const/16 v1, 0x493

    .line 256
    aput v6, v0, v1

    const/16 v1, 0x494

    aput v3, v0, v1

    const/16 v1, 0x495

    aput v7, v0, v1

    const/16 v1, 0x499

    .line 257
    aput v4, v0, v1

    const/16 v1, 0x49e

    .line 258
    aput v4, v0, v1

    const/16 v1, 0x4a2

    .line 259
    aput v6, v0, v1

    const/16 v1, 0x4a3

    aput v3, v0, v1

    const/16 v1, 0x4a4

    aput v7, v0, v1

    const/16 v1, 0x4a8

    .line 260
    aput v4, v0, v1

    const/16 v1, 0x4ad

    .line 261
    aput v4, v0, v1

    const/16 v1, 0x4b1

    .line 262
    aput v6, v0, v1

    const/16 v1, 0x4b2

    aput v3, v0, v1

    const/16 v1, 0x4b3

    aput v7, v0, v1

    const/16 v1, 0x4b7

    .line 263
    aput v4, v0, v1

    const/16 v1, 0x4bc

    .line 264
    aput v4, v0, v1

    const/16 v1, 0x4c0

    .line 265
    aput v6, v0, v1

    const/16 v1, 0x4c1

    aput v3, v0, v1

    const/16 v1, 0x4c2

    aput v7, v0, v1

    const/16 v1, 0x4c6

    .line 266
    aput v4, v0, v1

    const/16 v1, 0x4cb

    .line 267
    aput v4, v0, v1

    const/16 v1, 0x4cf

    .line 268
    aput v6, v0, v1

    const/16 v1, 0x4d0

    aput v3, v0, v1

    const/16 v1, 0x4d1

    aput v7, v0, v1

    const/16 v1, 0x4d5

    .line 269
    aput v4, v0, v1

    const/16 v1, 0x4da

    .line 270
    aput v4, v0, v1

    const/16 v1, 0x4de

    .line 271
    aput v6, v0, v1

    const/16 v1, 0x4df

    aput v3, v0, v1

    const/16 v1, 0x4e0

    aput v7, v0, v1

    const/16 v1, 0x4e4

    .line 272
    aput v4, v0, v1

    const/16 v1, 0x4e9

    .line 273
    aput v4, v0, v1

    const/16 v1, 0x4ed

    .line 274
    aput v6, v0, v1

    const/16 v1, 0x4ee

    aput v3, v0, v1

    const/16 v1, 0x4ef

    aput v7, v0, v1

    const/16 v1, 0x4f3

    .line 275
    aput v4, v0, v1

    const/16 v1, 0x4f8

    .line 276
    aput v4, v0, v1

    const/16 v1, 0x4fc

    .line 277
    aput v6, v0, v1

    const/16 v1, 0x4fd

    aput v3, v0, v1

    const/16 v1, 0x4fe

    aput v7, v0, v1

    const/16 v1, 0x502

    .line 278
    aput v4, v0, v1

    const/16 v1, 0x507

    .line 279
    aput v4, v0, v1

    const/16 v1, 0x50c

    .line 280
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mTiles:[I

    .line 285
    const/16 v0, 0x45

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 287
    const v2, 0x40010204

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 288
    const v2, 0x1301021f

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 289
    const v2, 0x40010124

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 290
    const v2, 0x40010324

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 291
    const v2, 0x13010148

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 292
    const v2, 0x33010348

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 293
    const v2, 0x1301015d

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 294
    const v2, 0x3301035d

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 295
    const v2, 0x3301026f

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 296
    const v2, 0x13010371

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 297
    const v2, 0x130103cb

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 298
    const v2, 0x330103cc

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 299
    const v2, 0x330103db

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 300
    const v2, 0x230102e1

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 301
    const v2, 0x230102e7

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 302
    const v2, 0x330101ed

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 303
    const v2, 0x130103ed

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 304
    const v2, 0x330102f3

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 307
    const v2, 0x4010104

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 308
    const v2, 0x4010307

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 309
    const v2, 0x401010a

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 310
    const v2, 0x401030d

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 311
    const v2, 0x4010110

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 312
    const v2, 0x4010313

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 313
    const v2, 0x4010116

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 314
    const v2, 0x4010319

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 315
    const v2, 0x401011c

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 316
    const v2, 0x4020120

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 317
    const v2, 0x4020320

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 318
    const v2, 0x4010228

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 319
    const v2, 0x401022f

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 320
    const v2, 0x4010236

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 321
    const v2, 0x401023d

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 322
    const v2, 0x4010244

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 323
    const v2, 0x401016f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 324
    const v2, 0x4010373

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 325
    const v2, 0x4010176

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 326
    const v2, 0x401037a

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 327
    const v2, 0x401017d

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 328
    const v2, 0x4010381

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 329
    const v2, 0x4010184

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 330
    const v2, 0x4010388

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 331
    const v2, 0x401018b

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 332
    const v2, 0x401038f

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 333
    const v2, 0x4010192

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 334
    const v2, 0x4010396

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 335
    const v2, 0x4010199

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 336
    const v2, 0x401039d

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 337
    const v2, 0x40101a0

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 338
    const v2, 0x40103a4

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 339
    const v2, 0x40101a7

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 340
    const v2, 0x40103ab

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 341
    const v2, 0x40101ae

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 342
    const v2, 0x40103b2

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 343
    const v2, 0x40101b5

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 344
    const v2, 0x40103b9

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 345
    const v2, 0x40201cc

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 346
    const v2, 0x40101dc

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 347
    const v2, 0x40103dc

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 348
    const v2, 0x40101e0

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 349
    const v2, 0x40103e0

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 350
    const v2, 0x40101e8

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 351
    const v2, 0x40103e8

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 352
    const v2, 0x40101ec

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 353
    const v2, 0x40103ec

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 354
    const v2, 0x40101f6

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 355
    const v2, 0x40103f6

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 356
    const v2, 0x630102fb

    aput v2, v0, v1

    .line 285
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels04_05;->mObjects:[I

    .line 359
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
