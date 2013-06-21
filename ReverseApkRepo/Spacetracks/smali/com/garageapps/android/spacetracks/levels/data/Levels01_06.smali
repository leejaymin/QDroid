.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_06.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const v5, 0x1000200

    const v4, 0x1000800

    const v3, 0x1000900

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mTileMapId:I

    .line 14
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mNebulaColor:[F

    .line 15
    new-array v0, v6, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mFogColor:[F

    .line 16
    iput v7, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mMaxTime:I

    .line 21
    const/16 v0, 0x226

    new-array v0, v0, [I

    const/16 v1, 0x33

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x42

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x44

    aput v3, v0, v1

    const/16 v1, 0x47

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x49

    aput v3, v0, v1

    const/16 v1, 0x4c

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x4e

    aput v3, v0, v1

    const/16 v1, 0x51

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x53

    aput v3, v0, v1

    const/16 v1, 0x56

    .line 39
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
    aput v3, v0, v1

    const/16 v1, 0x62

    aput v3, v0, v1

    const/16 v1, 0x65

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x66

    aput v4, v0, v1

    const/16 v1, 0x67

    aput v4, v0, v1

    const/16 v1, 0x6a

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x6b

    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6f

    .line 44
    aput v4, v0, v1

    const/16 v1, 0x70

    aput v4, v0, v1

    const/16 v1, 0x71

    aput v4, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x7f

    aput v3, v0, v1

    const/16 v1, 0x80

    aput v3, v0, v1

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
    aput v4, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    aput v4, v0, v1

    const/16 v1, 0x92

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x97

    .line 52
    aput v4, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x99

    aput v4, v0, v1

    const/16 v1, 0x9c

    .line 53
    aput v5, v0, v1

    const/16 v1, 0x9d

    aput v5, v0, v1

    const/16 v1, 0x9e

    aput v5, v0, v1

    const/16 v1, 0xa1

    .line 54
    aput v3, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa6

    .line 55
    aput v4, v0, v1

    const/16 v1, 0xa8

    aput v4, v0, v1

    const/16 v1, 0xab

    .line 56
    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 57
    aput v4, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb5

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xb7

    aput v3, v0, v1

    const/16 v1, 0xba

    .line 59
    aput v4, v0, v1

    const/16 v1, 0xbc

    aput v4, v0, v1

    const/16 v1, 0xbf

    .line 60
    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc4

    .line 61
    aput v4, v0, v1

    const/16 v1, 0xc6

    aput v4, v0, v1

    const/16 v1, 0xc9

    .line 62
    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v3, v0, v1

    const/16 v1, 0xce

    .line 63
    aput v5, v0, v1

    const/16 v1, 0xcf

    aput v5, v0, v1

    const/16 v1, 0xd0

    aput v5, v0, v1

    const/16 v1, 0xd3

    .line 64
    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd8

    .line 65
    aput v4, v0, v1

    const/16 v1, 0xda

    aput v4, v0, v1

    const/16 v1, 0xdd

    .line 66
    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe2

    .line 67
    aput v4, v0, v1

    const/16 v1, 0xe4

    aput v4, v0, v1

    const/16 v1, 0xe7

    .line 68
    aput v3, v0, v1

    const/16 v1, 0xe8

    aput v3, v0, v1

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
    aput v5, v0, v1

    const/16 v1, 0x101

    aput v5, v0, v1

    const/16 v1, 0x102

    aput v5, v0, v1

    const/16 v1, 0x106

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x10b

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x110

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x115

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x11a

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x11f

    .line 79
    aput v4, v0, v1

    const/16 v1, 0x124

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x129

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x12e

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x132

    .line 83
    aput v5, v0, v1

    const/16 v1, 0x133

    aput v5, v0, v1

    const/16 v1, 0x137

    .line 84
    aput v3, v0, v1

    const/16 v1, 0x13c

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x13e

    aput v4, v0, v1

    const/16 v1, 0x141

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x146

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x148

    aput v4, v0, v1

    const/16 v1, 0x14b

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x150

    .line 89
    aput v5, v0, v1

    const/16 v1, 0x152

    aput v4, v0, v1

    const/16 v1, 0x155

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x15a

    .line 91
    aput v4, v0, v1

    const/16 v1, 0x15c

    aput v4, v0, v1

    const/16 v1, 0x15f

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x164

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x166

    aput v4, v0, v1

    const/16 v1, 0x169

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x16e

    .line 95
    aput v5, v0, v1

    const/16 v1, 0x170

    aput v4, v0, v1

    const/16 v1, 0x173

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x178

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x17a

    aput v4, v0, v1

    const/16 v1, 0x17d

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x182

    .line 99
    aput v4, v0, v1

    const/16 v1, 0x184

    aput v4, v0, v1

    const/16 v1, 0x187

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x18c

    .line 101
    aput v5, v0, v1

    const/16 v1, 0x18d

    aput v5, v0, v1

    const/16 v1, 0x18e

    aput v5, v0, v1

    const/16 v1, 0x193

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x196

    .line 103
    aput v4, v0, v1

    const/16 v1, 0x198

    aput v4, v0, v1

    const/16 v1, 0x19d

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 105
    aput v4, v0, v1

    const/16 v1, 0x1a2

    aput v4, v0, v1

    const/16 v1, 0x1a7

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x1aa

    .line 107
    aput v4, v0, v1

    const/16 v1, 0x1ac

    aput v5, v0, v1

    const/16 v1, 0x1b1

    .line 108
    aput v3, v0, v1

    const/16 v1, 0x1b4

    .line 109
    aput v4, v0, v1

    const/16 v1, 0x1b6

    aput v4, v0, v1

    const/16 v1, 0x1bb

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x1be

    .line 111
    aput v4, v0, v1

    const/16 v1, 0x1c0

    aput v4, v0, v1

    const/16 v1, 0x1c5

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x1c8

    .line 113
    aput v4, v0, v1

    const/16 v1, 0x1ca

    aput v5, v0, v1

    const/16 v1, 0x1cf

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x1d2

    .line 115
    aput v4, v0, v1

    const/16 v1, 0x1d4

    aput v4, v0, v1

    const/16 v1, 0x1d9

    .line 116
    aput v3, v0, v1

    const/16 v1, 0x1dc

    .line 117
    aput v4, v0, v1

    const/16 v1, 0x1de

    aput v4, v0, v1

    const/16 v1, 0x1e3

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x1e7

    .line 119
    aput v5, v0, v1

    const/16 v1, 0x1e8

    aput v5, v0, v1

    const/16 v1, 0x1ec

    .line 120
    aput v3, v0, v1

    const/16 v1, 0x1f1

    .line 121
    aput v4, v0, v1

    const/16 v1, 0x1f6

    .line 122
    aput v3, v0, v1

    const/16 v1, 0x1fb

    .line 123
    aput v4, v0, v1

    const/16 v1, 0x200

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x205

    .line 125
    aput v5, v0, v1

    const/16 v1, 0x20a

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x20f

    .line 127
    aput v4, v0, v1

    const/16 v1, 0x214

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x219

    .line 129
    aput v4, v0, v1

    const/16 v1, 0x21e

    .line 130
    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mTiles:[I

    .line 135
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x10010206

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x20010312

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x10010318

    aput v2, v0, v1

    .line 140
    const v1, 0x4001011e

    aput v1, v0, v7

    .line 141
    const v1, 0x30010234

    aput v1, v0, v6

    const/4 v1, 0x5

    .line 142
    const v2, 0x30010144

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x10010344

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 144
    const v2, 0x40010155

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 145
    const v2, 0x30010355

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 148
    const v2, 0x101010e

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 149
    const v2, 0x1010110

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 150
    const v2, 0x1010112

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 151
    const v2, 0x1010114

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 152
    const v2, 0x1010116

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 153
    const v2, 0x1010118

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x101011a

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x101011c

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x1010320

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x1010322

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x1010324

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x1010326

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x1010328

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x101032a

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x101032c

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x101023a

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x101023f

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x1010244

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x1010249

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x101024e

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x1010251

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 169
    const v2, 0x1010253

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 170
    const v2, 0x1010255

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 171
    const v2, 0x1010257

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 172
    const v2, 0x1010259

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 173
    const v2, 0x63010265

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_06;->mObjects:[I

    .line 176
    return-void

    .line 14
    nop

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
