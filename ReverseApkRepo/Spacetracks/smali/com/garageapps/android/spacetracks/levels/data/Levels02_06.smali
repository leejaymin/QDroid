.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_06.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xa000800

    const v6, 0x1000700

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mMaxTime:I

    .line 21
    const/16 v0, 0x320

    new-array v0, v0, [I

    const/16 v1, 0x34

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x48

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x4c

    .line 37
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4d

    aput v4, v0, v1

    const/16 v1, 0x4e

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x51

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x52

    aput v3, v0, v1

    const/16 v1, 0x53

    aput v3, v0, v1

    const/16 v1, 0x56

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    aput v4, v0, v1

    const/16 v1, 0x5b

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x5c

    aput v4, v0, v1

    const/16 v1, 0x5d

    aput v4, v0, v1

    const/16 v1, 0x60

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x61

    aput v4, v0, v1

    const/16 v1, 0x62

    aput v4, v0, v1

    const/16 v1, 0x65

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x6a

    .line 43
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x6b

    aput v4, v0, v1

    const/16 v1, 0x6c

    aput v7, v0, v1

    const/16 v1, 0x6f

    .line 44
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x70

    aput v4, v0, v1

    const/16 v1, 0x71

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x74

    .line 45
    aput v3, v0, v1

    const/16 v1, 0x75

    aput v3, v0, v1

    const/16 v1, 0x76

    aput v3, v0, v1

    const/16 v1, 0x79

    .line 46
    aput v4, v0, v1

    const/16 v1, 0x7a

    aput v4, v0, v1

    const/16 v1, 0x7b

    aput v4, v0, v1

    const/16 v1, 0x7e

    .line 47
    aput v4, v0, v1

    const/16 v1, 0x7f

    aput v4, v0, v1

    const/16 v1, 0x80

    aput v4, v0, v1

    const/16 v1, 0x83

    .line 48
    aput v4, v0, v1

    const/16 v1, 0x84

    aput v4, v0, v1

    const/16 v1, 0x85

    aput v4, v0, v1

    const/16 v1, 0x88

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8d

    .line 50
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v7, v0, v1

    const/16 v1, 0x92

    .line 51
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x93

    aput v4, v0, v1

    const/16 v1, 0x94

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x97

    .line 52
    aput v3, v0, v1

    const/16 v1, 0x98

    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9c

    .line 53
    aput v4, v0, v1

    const/16 v1, 0x9d

    aput v4, v0, v1

    const/16 v1, 0x9e

    aput v4, v0, v1

    const/16 v1, 0xa1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xa2

    aput v4, v0, v1

    const/16 v1, 0xa3

    aput v4, v0, v1

    const/16 v1, 0xa6

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xa7

    aput v4, v0, v1

    const/16 v1, 0xa8

    aput v4, v0, v1

    const/16 v1, 0xab

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 57
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0xb1

    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v7, v0, v1

    const/16 v1, 0xb6

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xbb

    .line 59
    aput v4, v0, v1

    const/16 v1, 0xc0

    .line 60
    aput v3, v0, v1

    const/16 v1, 0xc5

    .line 61
    aput v4, v0, v1

    const/16 v1, 0xca

    .line 62
    aput v3, v0, v1

    const/16 v1, 0xcf

    .line 63
    aput v3, v0, v1

    const/16 v1, 0xd4

    .line 64
    aput v4, v0, v1

    const/16 v1, 0xd9

    .line 65
    aput v3, v0, v1

    const/16 v1, 0xde

    .line 66
    aput v4, v0, v1

    const/16 v1, 0xe2

    .line 67
    aput v4, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v4, v0, v1

    const/16 v1, 0xe7

    .line 68
    aput v3, v0, v1

    const/16 v1, 0xe8

    aput v4, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xec

    .line 69
    aput v4, v0, v1

    const/16 v1, 0xee

    aput v4, v0, v1

    const/16 v1, 0xf1

    .line 70
    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf6

    .line 71
    aput v4, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xfb

    .line 72
    aput v3, v0, v1

    const/16 v1, 0xfd

    aput v3, v0, v1

    const/16 v1, 0x100

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x102

    aput v4, v0, v1

    const/16 v1, 0x105

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v3, v0, v1

    const/16 v1, 0x10a

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x10c

    aput v4, v0, v1

    const/16 v1, 0x10f

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x111

    aput v3, v0, v1

    const/16 v1, 0x114

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x116

    aput v4, v0, v1

    const/16 v1, 0x119

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11e

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x11f

    aput v3, v0, v1

    const/16 v1, 0x120

    aput v4, v0, v1

    const/16 v1, 0x123

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x124

    aput v4, v0, v1

    const/16 v1, 0x125

    aput v3, v0, v1

    const/16 v1, 0x129

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x12e

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x133

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x138

    .line 84
    aput v4, v0, v1

    const/16 v1, 0x13c

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13e

    aput v4, v0, v1

    const/16 v1, 0x141

    .line 86
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x142

    aput v4, v0, v1

    const/16 v1, 0x143

    aput v7, v0, v1

    const/16 v1, 0x147

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x14c

    .line 88
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x14d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x152

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x157

    .line 90
    aput v6, v0, v1

    const/16 v1, 0x15a

    .line 91
    aput v5, v0, v1

    const/16 v1, 0x15c

    aput v3, v0, v1

    const/16 v1, 0x161

    .line 92
    aput v6, v0, v1

    const/16 v1, 0x164

    .line 93
    aput v5, v0, v1

    const/16 v1, 0x166

    aput v3, v0, v1

    const/16 v1, 0x16b

    .line 94
    aput v6, v0, v1

    const/16 v1, 0x16e

    .line 95
    aput v5, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x175

    .line 96
    aput v6, v0, v1

    const/16 v1, 0x178

    .line 97
    aput v5, v0, v1

    const/16 v1, 0x17a

    aput v3, v0, v1

    const/16 v1, 0x17f

    .line 98
    aput v6, v0, v1

    const/16 v1, 0x182

    .line 99
    aput v5, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x189

    .line 100
    aput v6, v0, v1

    const/16 v1, 0x18c

    .line 101
    aput v5, v0, v1

    const/16 v1, 0x18e

    aput v3, v0, v1

    const/16 v1, 0x193

    .line 102
    aput v6, v0, v1

    const/16 v1, 0x196

    .line 103
    aput v5, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x19d

    .line 104
    aput v6, v0, v1

    const/16 v1, 0x1a0

    .line 105
    aput v5, v0, v1

    const/16 v1, 0x1a2

    aput v3, v0, v1

    const/16 v1, 0x1a7

    .line 106
    aput v6, v0, v1

    const/16 v1, 0x1aa

    .line 107
    aput v5, v0, v1

    const/16 v1, 0x1ac

    aput v3, v0, v1

    const/16 v1, 0x1b1

    .line 108
    aput v6, v0, v1

    const/16 v1, 0x1b4

    .line 109
    aput v5, v0, v1

    const/16 v1, 0x1b6

    aput v3, v0, v1

    const/16 v1, 0x1bb

    .line 110
    aput v6, v0, v1

    const/16 v1, 0x1bf

    .line 111
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1c0

    aput v7, v0, v1

    const/16 v1, 0x1c4

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x1c9

    .line 113
    aput v4, v0, v1

    const/16 v1, 0x1cd

    .line 114
    aput v5, v0, v1

    const/16 v1, 0x1ce

    aput v3, v0, v1

    const/16 v1, 0x1cf

    aput v5, v0, v1

    const/16 v1, 0x1d3

    .line 115
    aput v4, v0, v1

    const/16 v1, 0x1d7

    .line 116
    aput v5, v0, v1

    const/16 v1, 0x1d8

    aput v3, v0, v1

    const/16 v1, 0x1d9

    aput v5, v0, v1

    const/16 v1, 0x1dd

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x1e1

    .line 118
    aput v5, v0, v1

    const/16 v1, 0x1e2

    aput v3, v0, v1

    const/16 v1, 0x1e3

    aput v5, v0, v1

    const/16 v1, 0x1e7

    .line 119
    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 120
    aput v5, v0, v1

    const/16 v1, 0x1ec

    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v5, v0, v1

    const/16 v1, 0x1f1

    .line 121
    aput v4, v0, v1

    const/16 v1, 0x1f5

    .line 122
    aput v5, v0, v1

    const/16 v1, 0x1f6

    aput v3, v0, v1

    const/16 v1, 0x1f7

    aput v5, v0, v1

    const/16 v1, 0x1fb

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x1ff

    .line 124
    aput v5, v0, v1

    const/16 v1, 0x200

    aput v3, v0, v1

    const/16 v1, 0x201

    aput v5, v0, v1

    const/16 v1, 0x205

    .line 125
    aput v4, v0, v1

    const/16 v1, 0x209

    .line 126
    aput v5, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    const/16 v1, 0x20b

    aput v5, v0, v1

    const/16 v1, 0x20f

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x213

    .line 128
    aput v5, v0, v1

    const/16 v1, 0x214

    aput v3, v0, v1

    const/16 v1, 0x215

    aput v5, v0, v1

    const/16 v1, 0x219

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x21e

    .line 130
    aput v3, v0, v1

    const/16 v1, 0x222

    .line 131
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x223

    aput v7, v0, v1

    const/16 v1, 0x227

    .line 132
    aput v3, v0, v1

    const/16 v1, 0x22c

    .line 133
    aput v6, v0, v1

    const/16 v1, 0x231

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x233

    aput v5, v0, v1

    const/16 v1, 0x236

    .line 135
    aput v6, v0, v1

    const/16 v1, 0x23b

    .line 136
    aput v3, v0, v1

    const/16 v1, 0x23d

    aput v5, v0, v1

    const/16 v1, 0x240

    .line 137
    aput v6, v0, v1

    const/16 v1, 0x245

    .line 138
    aput v3, v0, v1

    const/16 v1, 0x247

    aput v5, v0, v1

    const/16 v1, 0x24a

    .line 139
    aput v6, v0, v1

    const/16 v1, 0x24f

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x251

    aput v5, v0, v1

    const/16 v1, 0x254

    .line 141
    aput v6, v0, v1

    const/16 v1, 0x259

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x25b

    aput v5, v0, v1

    const/16 v1, 0x25e

    .line 143
    aput v6, v0, v1

    const/16 v1, 0x263

    .line 144
    aput v3, v0, v1

    const/16 v1, 0x265

    aput v5, v0, v1

    const/16 v1, 0x268

    .line 145
    aput v6, v0, v1

    const/16 v1, 0x26d

    .line 146
    aput v3, v0, v1

    const/16 v1, 0x26f

    aput v5, v0, v1

    const/16 v1, 0x272

    .line 147
    aput v6, v0, v1

    const/16 v1, 0x277

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x279

    aput v5, v0, v1

    const/16 v1, 0x27c

    .line 149
    aput v6, v0, v1

    const/16 v1, 0x281

    .line 150
    aput v3, v0, v1

    const/16 v1, 0x283

    aput v5, v0, v1

    const/16 v1, 0x286

    .line 151
    aput v6, v0, v1

    const/16 v1, 0x28b

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x28c

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x290

    .line 153
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x291

    aput v3, v0, v1

    const/16 v1, 0x296

    .line 154
    aput v4, v0, v1

    const/16 v1, 0x297

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x29a

    .line 155
    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x29b

    aput v3, v0, v1

    const/16 v1, 0x29c

    aput v7, v0, v1

    const/16 v1, 0x29f

    .line 156
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x2a0

    aput v4, v0, v1

    const/16 v1, 0x2a5

    .line 157
    aput v3, v0, v1

    const/16 v1, 0x2a6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2aa

    .line 158
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x2ab

    aput v3, v0, v1

    const/16 v1, 0x2af

    .line 159
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2b0

    aput v7, v0, v1

    const/16 v1, 0x2b3

    .line 160
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2b4

    aput v3, v0, v1

    const/16 v1, 0x2b5

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2b8

    .line 161
    aput v6, v0, v1

    const/16 v1, 0x2ba

    aput v6, v0, v1

    const/16 v1, 0x2bd

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x2be

    aput v5, v0, v1

    const/16 v1, 0x2bf

    aput v3, v0, v1

    const/16 v1, 0x2c2

    .line 163
    aput v6, v0, v1

    const/16 v1, 0x2c4

    aput v6, v0, v1

    const/16 v1, 0x2c7

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x2c8

    aput v5, v0, v1

    const/16 v1, 0x2c9

    aput v3, v0, v1

    const/16 v1, 0x2cc

    .line 165
    aput v6, v0, v1

    const/16 v1, 0x2ce

    aput v6, v0, v1

    const/16 v1, 0x2d1

    .line 166
    aput v3, v0, v1

    const/16 v1, 0x2d2

    aput v5, v0, v1

    const/16 v1, 0x2d3

    aput v3, v0, v1

    const/16 v1, 0x2d6

    .line 167
    aput v6, v0, v1

    const/16 v1, 0x2d8

    aput v6, v0, v1

    const/16 v1, 0x2db

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x2dc

    aput v5, v0, v1

    const/16 v1, 0x2dd

    aput v3, v0, v1

    const/16 v1, 0x2e0

    .line 169
    aput v6, v0, v1

    const/16 v1, 0x2e2

    aput v6, v0, v1

    const/16 v1, 0x2e5

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x2e6

    aput v5, v0, v1

    const/16 v1, 0x2e7

    aput v3, v0, v1

    const/16 v1, 0x2ea

    .line 171
    aput v6, v0, v1

    const/16 v1, 0x2ec

    aput v6, v0, v1

    const/16 v1, 0x2ef

    .line 172
    aput v3, v0, v1

    const/16 v1, 0x2f0

    aput v5, v0, v1

    const/16 v1, 0x2f1

    aput v3, v0, v1

    const/16 v1, 0x2f4

    .line 173
    aput v6, v0, v1

    const/16 v1, 0x2f6

    aput v6, v0, v1

    const/16 v1, 0x2f9

    .line 174
    aput v3, v0, v1

    const/16 v1, 0x2fa

    aput v5, v0, v1

    const/16 v1, 0x2fb

    aput v3, v0, v1

    const/16 v1, 0x2fe

    .line 175
    aput v6, v0, v1

    const/16 v1, 0x300

    aput v6, v0, v1

    const/16 v1, 0x303

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x304

    aput v3, v0, v1

    const/16 v1, 0x305

    aput v3, v0, v1

    const/16 v1, 0x308

    .line 177
    const v2, 0xb000800

    aput v2, v0, v1

    const/16 v1, 0x309

    aput v4, v0, v1

    const/16 v1, 0x30a

    aput v7, v0, v1

    const/16 v1, 0x30e

    .line 178
    aput v4, v0, v1

    const/16 v1, 0x312

    .line 179
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x313

    aput v4, v0, v1

    const/16 v1, 0x314

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x317

    .line 180
    aput v3, v0, v1

    const/16 v1, 0x318

    aput v3, v0, v1

    const/16 v1, 0x319

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mTiles:[I

    .line 185
    const/16 v0, 0x4e

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x40010105

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x40010305

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x1101010d

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x1101030d

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x3101021c

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x4001011f

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x40010233

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x31010245

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x40010347

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x2101025e

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x11010169

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x11010369

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x1101016f

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x1101036f

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x31010278

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x2101027d

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 203
    const v2, 0x21010284

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 204
    const v2, 0x11010188

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 205
    const v2, 0x31010388

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 206
    const v2, 0x2101028b

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 209
    const v2, 0x2010101

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 210
    const v2, 0x2010301

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 211
    const v2, 0x2010205

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 212
    const v2, 0x2010207

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 213
    const v2, 0x2010209

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 214
    const v2, 0x201020b

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 215
    const v2, 0x201020d

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 216
    const v2, 0x201020f

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x2010211

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x2010213

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x201011a

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x201031b

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x201031f

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x2010321

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x2010323

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x2010325

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x2010327

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x2010329

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x201032a

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x201032c

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x201032d

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x201032f

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x2010135

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x2010335

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x2010143

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x2010343

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x2010148

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x201014a

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x201014c

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x201014e

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x2010150

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x2010152

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x2010154

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x2010156

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x2010158

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x201015a

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x2010160

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 246
    const v2, 0x2010360

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 247
    const v2, 0x2010165

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 248
    const v2, 0x2010365

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 249
    const v2, 0x201026b

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 250
    const v2, 0x201026c

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 251
    const v2, 0x2010172

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 252
    const v2, 0x2010372

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 253
    const v2, 0x201017d

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 254
    const v2, 0x201037d

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 255
    const v2, 0x2010181

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 256
    const v2, 0x2010381

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 257
    const v2, 0x2010184

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 258
    const v2, 0x2010384

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 259
    const v2, 0x2010188

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 260
    const v2, 0x2010388

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 261
    const v2, 0x201018b

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 262
    const v2, 0x201038b

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 263
    const v2, 0x201018f

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 264
    const v2, 0x201038f

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 265
    const v2, 0x63010297

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_06;->mObjects:[I

    .line 268
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
