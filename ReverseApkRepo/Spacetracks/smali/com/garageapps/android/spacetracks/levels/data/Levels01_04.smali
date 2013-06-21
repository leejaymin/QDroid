.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_04.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0x1000400

    const v6, 0x1000a00

    const v5, 0x1000200

    const v4, 0x1000900

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mSizeX:I

    .line 11
    const/16 v0, 0x55

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mMaxTime:I

    .line 21
    const/16 v0, 0x1a9

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
    aput v4, v0, v1

    const/16 v1, 0x43

    aput v4, v0, v1

    const/16 v1, 0x44

    aput v4, v0, v1

    const/16 v1, 0x47

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x48

    aput v3, v0, v1

    const/16 v1, 0x49

    aput v3, v0, v1

    const/16 v1, 0x4c

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x4d

    aput v4, v0, v1

    const/16 v1, 0x4e

    aput v4, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x5c

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x60

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x61

    aput v4, v0, v1

    const/16 v1, 0x62

    aput v3, v0, v1

    const/16 v1, 0x66

    .line 42
    aput v3, v0, v1

    const/16 v1, 0x6b

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v5, v0, v1

    const/16 v1, 0x70

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x71

    aput v3, v0, v1

    const/16 v1, 0x75

    .line 45
    aput v3, v0, v1

    const/16 v1, 0x76

    aput v7, v0, v1

    const/16 v1, 0x7a

    .line 46
    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x7f

    .line 47
    aput v3, v0, v1

    const/16 v1, 0x80

    aput v4, v0, v1

    const/16 v1, 0x85

    .line 48
    aput v4, v0, v1

    const/16 v1, 0x89

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v4, v0, v1

    const/16 v1, 0x8e

    .line 50
    aput v3, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x93

    .line 51
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x98

    .line 52
    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9d

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v5, v0, v1

    const/16 v1, 0xa1

    .line 54
    aput v5, v0, v1

    const/16 v1, 0xa2

    aput v3, v0, v1

    const/16 v1, 0xa6

    .line 55
    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xab

    .line 56
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xb0

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb5

    .line 58
    aput v4, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xba

    .line 59
    aput v4, v0, v1

    const/16 v1, 0xbf

    .line 60
    aput v4, v0, v1

    const/16 v1, 0xc0

    aput v3, v0, v1

    const/16 v1, 0xc4

    .line 61
    aput v3, v0, v1

    const/16 v1, 0xc5

    aput v3, v0, v1

    const/16 v1, 0xc9

    .line 62
    aput v3, v0, v1

    const/16 v1, 0xca

    aput v7, v0, v1

    const/16 v1, 0xce

    .line 63
    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd3

    .line 64
    aput v5, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd9

    .line 65
    aput v3, v0, v1

    const/16 v1, 0xda

    aput v5, v0, v1

    const/16 v1, 0xde

    .line 66
    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe3

    .line 67
    aput v4, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 68
    aput v4, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xed

    .line 69
    aput v4, v0, v1

    const/16 v1, 0xee

    aput v3, v0, v1

    const/16 v1, 0xf2

    .line 70
    aput v4, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf7

    .line 71
    aput v4, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xfc

    .line 72
    aput v4, v0, v1

    const/16 v1, 0xfd

    aput v3, v0, v1

    const/16 v1, 0x101

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x102

    aput v3, v0, v1

    const/16 v1, 0x106

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x107

    aput v5, v0, v1

    const/16 v1, 0x10a

    .line 75
    aput v5, v0, v1

    const/16 v1, 0x10b

    aput v3, v0, v1

    const/16 v1, 0x10f

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x110

    aput v3, v0, v1

    const/16 v1, 0x114

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x115

    aput v4, v0, v1

    const/16 v1, 0x119

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v4, v0, v1

    const/16 v1, 0x11e

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x11f

    aput v4, v0, v1

    const/16 v1, 0x123

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x124

    aput v4, v0, v1

    const/16 v1, 0x128

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x129

    aput v4, v0, v1

    const/16 v1, 0x12d

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x12e

    aput v4, v0, v1

    const/16 v1, 0x132

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x133

    aput v3, v0, v1

    const/16 v1, 0x137

    .line 84
    aput v5, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x13d

    .line 85
    aput v6, v0, v1

    const/16 v1, 0x142

    .line 86
    aput v6, v0, v1

    const/16 v1, 0x147

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x14c

    .line 88
    aput v6, v0, v1

    const/16 v1, 0x151

    .line 89
    aput v6, v0, v1

    const/16 v1, 0x155

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x156

    aput v4, v0, v1

    const/16 v1, 0x157

    aput v3, v0, v1

    const/16 v1, 0x15b

    .line 91
    aput v6, v0, v1

    const/16 v1, 0x160

    .line 92
    aput v6, v0, v1

    const/16 v1, 0x165

    .line 93
    aput v4, v0, v1

    const/16 v1, 0x16a

    .line 94
    aput v6, v0, v1

    const/16 v1, 0x16f

    .line 95
    aput v6, v0, v1

    const/16 v1, 0x173

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x174

    aput v3, v0, v1

    const/16 v1, 0x175

    aput v3, v0, v1

    const/16 v1, 0x178

    .line 97
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x179

    aput v4, v0, v1

    const/16 v1, 0x17a

    aput v7, v0, v1

    const/16 v1, 0x17d

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x17e

    aput v4, v0, v1

    const/16 v1, 0x17f

    aput v3, v0, v1

    const/16 v1, 0x182

    .line 99
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x183

    aput v4, v0, v1

    const/16 v1, 0x184

    aput v7, v0, v1

    const/16 v1, 0x187

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x188

    aput v4, v0, v1

    const/16 v1, 0x189

    aput v3, v0, v1

    const/16 v1, 0x18c

    .line 101
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x18d

    aput v4, v0, v1

    const/16 v1, 0x18e

    aput v7, v0, v1

    const/16 v1, 0x191

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x192

    aput v4, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x196

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x197

    aput v3, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x19b

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x19c

    aput v3, v0, v1

    const/16 v1, 0x19d

    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x1a1

    aput v3, v0, v1

    const/16 v1, 0x1a2

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mTiles:[I

    .line 110
    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 112
    const v2, 0x2001020a

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 113
    const v2, 0x10010119

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 114
    const v2, 0x1001011c

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 115
    const v2, 0x10010323

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 116
    const v2, 0x10010326

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 117
    const v2, 0x3001012f

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 118
    const v2, 0x3001033a

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 119
    const v2, 0x4001023d

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 122
    const v2, 0x1010101

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 123
    const v2, 0x1010301

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 124
    const v2, 0x1010103

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 125
    const v2, 0x1010303

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 126
    const v2, 0x101010a

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 127
    const v2, 0x101030a

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 128
    const v2, 0x1010110

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 129
    const v2, 0x1010310

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 130
    const v2, 0x1010116

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 131
    const v2, 0x101011f

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 132
    const v2, 0x1010320

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 133
    const v2, 0x1010329

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 134
    const v2, 0x101012a

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 135
    const v2, 0x1010134

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 136
    const v2, 0x1010335

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 137
    const v2, 0x101033f

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 138
    const v2, 0x1010144

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 139
    const v2, 0x1010344

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 140
    const v2, 0x1010146

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 141
    const v2, 0x1010346

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 142
    const v2, 0x6301024c

    aput v2, v0, v1

    .line 110
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_04;->mObjects:[I

    .line 145
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
