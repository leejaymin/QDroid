.class public Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels02_03.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xc000800

    const v6, 0xb000800

    const v5, 0xa000800

    const v4, 0x1000700

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mSizeX:I

    .line 11
    const/16 v0, 0x6e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mRenderMode:I

    .line 17
    const/16 v0, 0x190

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mMaxTime:I

    .line 21
    const/16 v0, 0x226

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
    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

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
    aput v3, v0, v1

    const/16 v1, 0x51

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x52

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x53

    aput v7, v0, v1

    const/16 v1, 0x56

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x57

    aput v6, v0, v1

    const/16 v1, 0x58

    aput v5, v0, v1

    const/16 v1, 0x5b

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x5c

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5d

    aput v7, v0, v1

    const/16 v1, 0x60

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x61

    aput v6, v0, v1

    const/16 v1, 0x62

    aput v5, v0, v1

    const/16 v1, 0x65

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x66

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x67

    aput v7, v0, v1

    const/16 v1, 0x6a

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x6b

    aput v6, v0, v1

    const/16 v1, 0x6c

    aput v5, v0, v1

    const/16 v1, 0x6f

    .line 44
    aput v4, v0, v1

    const/16 v1, 0x70

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x71

    aput v7, v0, v1

    const/16 v1, 0x74

    .line 45
    aput v3, v0, v1

    const/16 v1, 0x75

    aput v6, v0, v1

    const/16 v1, 0x76

    aput v5, v0, v1

    const/16 v1, 0x79

    .line 46
    aput v4, v0, v1

    const/16 v1, 0x7a

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x7b

    aput v7, v0, v1

    const/16 v1, 0x7e

    .line 47
    aput v3, v0, v1

    const/16 v1, 0x7f

    aput v6, v0, v1

    const/16 v1, 0x80

    aput v5, v0, v1

    const/16 v1, 0x83

    .line 48
    aput v4, v0, v1

    const/16 v1, 0x84

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x85

    aput v7, v0, v1

    const/16 v1, 0x88

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x89

    aput v6, v0, v1

    const/16 v1, 0x8a

    aput v5, v0, v1

    const/16 v1, 0x8d

    .line 50
    aput v4, v0, v1

    const/16 v1, 0x8e

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x8f

    aput v7, v0, v1

    const/16 v1, 0x92

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x93

    aput v6, v0, v1

    const/16 v1, 0x94

    aput v5, v0, v1

    const/16 v1, 0x97

    .line 52
    aput v4, v0, v1

    const/16 v1, 0x98

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x99

    aput v7, v0, v1

    const/16 v1, 0x9c

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v6, v0, v1

    const/16 v1, 0x9e

    aput v5, v0, v1

    const/16 v1, 0xa1

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xa2

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xa3

    aput v7, v0, v1

    const/16 v1, 0xa6

    .line 55
    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v6, v0, v1

    const/16 v1, 0xa8

    aput v5, v0, v1

    const/16 v1, 0xab

    .line 56
    aput v4, v0, v1

    const/16 v1, 0xac

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xad

    aput v7, v0, v1

    const/16 v1, 0xb0

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v6, v0, v1

    const/16 v1, 0xb2

    aput v5, v0, v1

    const/16 v1, 0xb5

    .line 58
    aput v4, v0, v1

    const/16 v1, 0xb6

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xb7

    aput v7, v0, v1

    const/16 v1, 0xba

    .line 59
    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v6, v0, v1

    const/16 v1, 0xbc

    aput v5, v0, v1

    const/16 v1, 0xbf

    .line 60
    aput v4, v0, v1

    const/16 v1, 0xc4

    .line 61
    aput v3, v0, v1

    const/16 v1, 0xc5

    const v2, 0x1000400

    aput v2, v0, v1

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

    const/16 v1, 0xe3

    .line 67
    aput v3, v0, v1

    const/16 v1, 0xe8

    .line 68
    aput v4, v0, v1

    const/16 v1, 0xed

    .line 69
    aput v3, v0, v1

    const/16 v1, 0xf2

    .line 70
    aput v4, v0, v1

    const/16 v1, 0xf7

    .line 71
    aput v3, v0, v1

    const/16 v1, 0xfc

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x101

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x106

    .line 74
    aput v4, v0, v1

    const/16 v1, 0x10b

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x110

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x115

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x11a

    .line 78
    aput v4, v0, v1

    const/16 v1, 0x11f

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x124

    .line 80
    aput v4, v0, v1

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

    const/16 v1, 0x13d

    .line 85
    aput v3, v0, v1

    const/16 v1, 0x142

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x147

    .line 87
    aput v3, v0, v1

    const/16 v1, 0x14c

    .line 88
    aput v4, v0, v1

    const/16 v1, 0x151

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x156

    .line 90
    aput v4, v0, v1

    const/16 v1, 0x15b

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x160

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x165

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x16a

    .line 94
    aput v4, v0, v1

    const/16 v1, 0x16f

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x174

    .line 96
    aput v4, v0, v1

    const/16 v1, 0x179

    .line 97
    aput v3, v0, v1

    const/16 v1, 0x17e

    .line 98
    aput v4, v0, v1

    const/16 v1, 0x183

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x188

    .line 100
    aput v4, v0, v1

    const/16 v1, 0x18d

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x18e

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x193

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x196

    .line 103
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x197

    aput v7, v0, v1

    const/16 v1, 0x198

    aput v4, v0, v1

    const/16 v1, 0x19b

    .line 104
    aput v6, v0, v1

    const/16 v1, 0x19c

    aput v5, v0, v1

    const/16 v1, 0x19d

    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 105
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1a1

    aput v7, v0, v1

    const/16 v1, 0x1a2

    aput v4, v0, v1

    const/16 v1, 0x1a5

    .line 106
    aput v6, v0, v1

    const/16 v1, 0x1a6

    aput v5, v0, v1

    const/16 v1, 0x1a7

    aput v3, v0, v1

    const/16 v1, 0x1aa

    .line 107
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ab

    aput v7, v0, v1

    const/16 v1, 0x1ac

    aput v4, v0, v1

    const/16 v1, 0x1af

    .line 108
    aput v6, v0, v1

    const/16 v1, 0x1b0

    aput v5, v0, v1

    const/16 v1, 0x1b1

    aput v3, v0, v1

    const/16 v1, 0x1b4

    .line 109
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1b5

    aput v7, v0, v1

    const/16 v1, 0x1b6

    aput v4, v0, v1

    const/16 v1, 0x1b9

    .line 110
    aput v6, v0, v1

    const/16 v1, 0x1ba

    aput v5, v0, v1

    const/16 v1, 0x1bb

    aput v3, v0, v1

    const/16 v1, 0x1be

    .line 111
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1bf

    aput v7, v0, v1

    const/16 v1, 0x1c0

    aput v4, v0, v1

    const/16 v1, 0x1c3

    .line 112
    aput v6, v0, v1

    const/16 v1, 0x1c4

    aput v5, v0, v1

    const/16 v1, 0x1c5

    aput v3, v0, v1

    const/16 v1, 0x1c8

    .line 113
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1c9

    aput v7, v0, v1

    const/16 v1, 0x1ca

    aput v4, v0, v1

    const/16 v1, 0x1cd

    .line 114
    aput v6, v0, v1

    const/16 v1, 0x1ce

    aput v5, v0, v1

    const/16 v1, 0x1cf

    aput v3, v0, v1

    const/16 v1, 0x1d2

    .line 115
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1d3

    aput v7, v0, v1

    const/16 v1, 0x1d4

    aput v4, v0, v1

    const/16 v1, 0x1d7

    .line 116
    aput v6, v0, v1

    const/16 v1, 0x1d8

    aput v5, v0, v1

    const/16 v1, 0x1d9

    aput v3, v0, v1

    const/16 v1, 0x1dc

    .line 117
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1dd

    aput v7, v0, v1

    const/16 v1, 0x1de

    aput v4, v0, v1

    const/16 v1, 0x1e1

    .line 118
    aput v6, v0, v1

    const/16 v1, 0x1e2

    aput v5, v0, v1

    const/16 v1, 0x1e3

    aput v3, v0, v1

    const/16 v1, 0x1e6

    .line 119
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1e7

    aput v7, v0, v1

    const/16 v1, 0x1e8

    aput v4, v0, v1

    const/16 v1, 0x1eb

    .line 120
    aput v6, v0, v1

    const/16 v1, 0x1ec

    aput v5, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1f0

    .line 121
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1f1

    aput v7, v0, v1

    const/16 v1, 0x1f2

    aput v4, v0, v1

    const/16 v1, 0x1f5

    .line 122
    aput v6, v0, v1

    const/16 v1, 0x1f6

    aput v5, v0, v1

    const/16 v1, 0x1f7

    aput v3, v0, v1

    const/16 v1, 0x1fa

    .line 123
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1fb

    aput v7, v0, v1

    const/16 v1, 0x1fc

    aput v4, v0, v1

    const/16 v1, 0x1ff

    .line 124
    aput v6, v0, v1

    const/16 v1, 0x200

    aput v5, v0, v1

    const/16 v1, 0x201

    aput v3, v0, v1

    const/16 v1, 0x206

    .line 125
    aput v4, v0, v1

    const/16 v1, 0x20a

    .line 126
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x20b

    aput v3, v0, v1

    const/16 v1, 0x20f

    .line 127
    aput v3, v0, v1

    const/16 v1, 0x214

    .line 128
    aput v4, v0, v1

    const/16 v1, 0x219

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x21e

    .line 130
    aput v4, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mTiles:[I

    .line 135
    const/16 v0, 0x1f

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 137
    const v2, 0x40010305

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 138
    const v2, 0x2101021e

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 139
    const v2, 0x11010226

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 140
    const v2, 0x31010234

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 141
    const v2, 0x1101023e

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 142
    const v2, 0x40010146

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 143
    const v2, 0x21010152

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 146
    const v2, 0x2010108

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 147
    const v2, 0x201010a

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 148
    const v2, 0x201010c

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 149
    const v2, 0x201010e

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 150
    const v2, 0x2010110

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 151
    const v2, 0x2010112

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 152
    const v2, 0x2010114

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 153
    const v2, 0x2010116

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 154
    const v2, 0x2010118

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 155
    const v2, 0x201011a

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 156
    const v2, 0x201011c

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 157
    const v2, 0x2010349

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 158
    const v2, 0x201034b

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 159
    const v2, 0x201034d

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 160
    const v2, 0x201034f

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 161
    const v2, 0x2010351

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 162
    const v2, 0x2010353

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, 0x2010355

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 164
    const v2, 0x2010357

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 165
    const v2, 0x2010359

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 166
    const v2, 0x201035b

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 167
    const v2, 0x201035d

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 168
    const v2, 0x63010265

    aput v2, v0, v1

    .line 135
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels02_03;->mObjects:[I

    .line 171
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
