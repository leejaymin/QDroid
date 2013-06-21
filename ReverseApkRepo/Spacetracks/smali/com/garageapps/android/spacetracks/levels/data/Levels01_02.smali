.class public Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels01_02.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x1000b00

    const v5, 0x1000900

    const v4, 0x1000200

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mSizeX:I

    .line 11
    const/16 v0, 0x3c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mTileMapId:I

    .line 14
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mNebulaColor:[F

    .line 15
    new-array v0, v7, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mRenderMode:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mMaxTime:I

    .line 21
    const/16 v0, 0x1a4

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
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x57

    aput v4, v0, v1

    const/16 v1, 0x58

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x5d

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x63

    .line 36
    aput v4, v0, v1

    const/16 v1, 0x64

    aput v5, v0, v1

    const/16 v1, 0x65

    aput v4, v0, v1

    const/16 v1, 0x66

    aput v5, v0, v1

    const/16 v1, 0x67

    aput v4, v0, v1

    const/16 v1, 0x6a

    .line 37
    aput v4, v0, v1

    const/16 v1, 0x6b

    aput v5, v0, v1

    const/16 v1, 0x6c

    aput v4, v0, v1

    const/16 v1, 0x6d

    aput v5, v0, v1

    const/16 v1, 0x6e

    aput v4, v0, v1

    const/16 v1, 0x71

    .line 38
    aput v4, v0, v1

    const/16 v1, 0x72

    aput v5, v0, v1

    const/16 v1, 0x73

    aput v4, v0, v1

    const/16 v1, 0x74

    aput v5, v0, v1

    const/16 v1, 0x75

    aput v4, v0, v1

    const/16 v1, 0x78

    .line 39
    aput v4, v0, v1

    const/16 v1, 0x79

    aput v5, v0, v1

    const/16 v1, 0x7a

    aput v4, v0, v1

    const/16 v1, 0x7b

    aput v5, v0, v1

    const/16 v1, 0x7c

    aput v4, v0, v1

    const/16 v1, 0x7f

    .line 40
    aput v4, v0, v1

    const/16 v1, 0x80

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v4, v0, v1

    const/16 v1, 0x86

    .line 41
    aput v4, v0, v1

    const/16 v1, 0x87

    aput v5, v0, v1

    const/16 v1, 0x88

    aput v4, v0, v1

    const/16 v1, 0x89

    aput v5, v0, v1

    const/16 v1, 0x8a

    aput v4, v0, v1

    const/16 v1, 0x8d

    .line 42
    aput v4, v0, v1

    const/16 v1, 0x8e

    aput v5, v0, v1

    const/16 v1, 0x8f

    aput v4, v0, v1

    const/16 v1, 0x90

    aput v5, v0, v1

    const/16 v1, 0x91

    aput v4, v0, v1

    const/16 v1, 0x94

    .line 43
    aput v4, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    aput v4, v0, v1

    const/16 v1, 0x9b

    .line 44
    aput v4, v0, v1

    const/16 v1, 0x9c

    aput v5, v0, v1

    const/16 v1, 0x9e

    aput v5, v0, v1

    const/16 v1, 0x9f

    aput v4, v0, v1

    const/16 v1, 0xa3

    .line 45
    aput v5, v0, v1

    const/16 v1, 0xa4

    aput v4, v0, v1

    const/16 v1, 0xa5

    aput v5, v0, v1

    const/16 v1, 0xaa

    .line 46
    aput v5, v0, v1

    const/16 v1, 0xab

    aput v4, v0, v1

    const/16 v1, 0xac

    aput v5, v0, v1

    const/16 v1, 0xb1

    .line 47
    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb8

    .line 48
    aput v5, v0, v1

    const/16 v1, 0xb9

    aput v4, v0, v1

    const/16 v1, 0xba

    aput v5, v0, v1

    const/16 v1, 0xbf

    .line 49
    aput v5, v0, v1

    const/16 v1, 0xc0

    aput v4, v0, v1

    const/16 v1, 0xc1

    aput v5, v0, v1

    const/16 v1, 0xc6

    .line 50
    aput v5, v0, v1

    const/16 v1, 0xc7

    aput v4, v0, v1

    const/16 v1, 0xc8

    aput v5, v0, v1

    const/16 v1, 0xcd

    .line 51
    aput v5, v0, v1

    const/16 v1, 0xce

    aput v4, v0, v1

    const/16 v1, 0xcf

    aput v5, v0, v1

    const/16 v1, 0xd4

    .line 52
    aput v5, v0, v1

    const/16 v1, 0xd5

    aput v4, v0, v1

    const/16 v1, 0xd6

    aput v5, v0, v1

    const/16 v1, 0xdb

    .line 53
    aput v5, v0, v1

    const/16 v1, 0xdc

    aput v4, v0, v1

    const/16 v1, 0xdd

    aput v5, v0, v1

    const/16 v1, 0xe2

    .line 54
    aput v4, v0, v1

    const/16 v1, 0xe4

    aput v4, v0, v1

    const/16 v1, 0xe9

    .line 55
    aput v5, v0, v1

    const/16 v1, 0xea

    aput v4, v0, v1

    const/16 v1, 0xeb

    aput v5, v0, v1

    const/16 v1, 0xf0

    .line 56
    aput v5, v0, v1

    const/16 v1, 0xf1

    aput v4, v0, v1

    const/16 v1, 0xf2

    aput v5, v0, v1

    const/16 v1, 0xf6

    .line 57
    aput v3, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v4, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfd

    .line 58
    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    aput v3, v0, v1

    const/16 v1, 0x104

    .line 59
    aput v6, v0, v1

    const/16 v1, 0x105

    aput v6, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    aput v6, v0, v1

    const/16 v1, 0x108

    aput v6, v0, v1

    const/16 v1, 0x10b

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10e

    aput v3, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x112

    .line 61
    aput v6, v0, v1

    const/16 v1, 0x113

    aput v6, v0, v1

    const/16 v1, 0x114

    aput v4, v0, v1

    const/16 v1, 0x115

    aput v6, v0, v1

    const/16 v1, 0x116

    aput v6, v0, v1

    const/16 v1, 0x119

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11c

    aput v3, v0, v1

    const/16 v1, 0x11d

    aput v3, v0, v1

    const/16 v1, 0x120

    .line 63
    aput v6, v0, v1

    const/16 v1, 0x121

    aput v6, v0, v1

    const/16 v1, 0x122

    aput v4, v0, v1

    const/16 v1, 0x123

    aput v6, v0, v1

    const/16 v1, 0x124

    aput v6, v0, v1

    const/16 v1, 0x127

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x128

    aput v3, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v3, v0, v1

    const/16 v1, 0x12e

    .line 65
    aput v6, v0, v1

    const/16 v1, 0x12f

    aput v6, v0, v1

    const/16 v1, 0x130

    aput v4, v0, v1

    const/16 v1, 0x131

    aput v6, v0, v1

    const/16 v1, 0x132

    aput v6, v0, v1

    const/16 v1, 0x135

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x136

    aput v3, v0, v1

    const/16 v1, 0x138

    aput v3, v0, v1

    const/16 v1, 0x139

    aput v3, v0, v1

    const/16 v1, 0x13c

    .line 67
    aput v6, v0, v1

    const/16 v1, 0x13d

    aput v6, v0, v1

    const/16 v1, 0x13e

    aput v4, v0, v1

    const/16 v1, 0x13f

    aput v6, v0, v1

    const/16 v1, 0x140

    aput v6, v0, v1

    const/16 v1, 0x143

    .line 68
    aput v3, v0, v1

    const/16 v1, 0x144

    aput v3, v0, v1

    const/16 v1, 0x146

    aput v3, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

    const/16 v1, 0x14a

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x14b

    aput v3, v0, v1

    const/16 v1, 0x14c

    aput v4, v0, v1

    const/16 v1, 0x14d

    aput v3, v0, v1

    const/16 v1, 0x14e

    aput v3, v0, v1

    const/16 v1, 0x152

    .line 70
    aput v3, v0, v1

    const/16 v1, 0x153

    aput v5, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x159

    .line 71
    aput v3, v0, v1

    const/16 v1, 0x15a

    aput v5, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x160

    .line 72
    aput v3, v0, v1

    const/16 v1, 0x161

    aput v5, v0, v1

    const/16 v1, 0x162

    aput v3, v0, v1

    const/16 v1, 0x167

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x168

    aput v5, v0, v1

    const/16 v1, 0x169

    aput v3, v0, v1

    const/16 v1, 0x16e

    .line 74
    aput v3, v0, v1

    const/16 v1, 0x16f

    aput v5, v0, v1

    const/16 v1, 0x170

    aput v3, v0, v1

    const/16 v1, 0x175

    .line 75
    aput v3, v0, v1

    const/16 v1, 0x176

    aput v5, v0, v1

    const/16 v1, 0x177

    aput v3, v0, v1

    const/16 v1, 0x17c

    .line 76
    aput v3, v0, v1

    const/16 v1, 0x17d

    aput v5, v0, v1

    const/16 v1, 0x17e

    aput v3, v0, v1

    const/16 v1, 0x183

    .line 77
    aput v3, v0, v1

    const/16 v1, 0x184

    aput v5, v0, v1

    const/16 v1, 0x185

    aput v3, v0, v1

    const/16 v1, 0x18a

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x18b

    aput v5, v0, v1

    const/16 v1, 0x18c

    aput v3, v0, v1

    const/16 v1, 0x191

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x192

    aput v5, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x198

    .line 80
    aput v3, v0, v1

    const/16 v1, 0x199

    aput v5, v0, v1

    const/16 v1, 0x19a

    aput v3, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mTiles:[I

    .line 85
    const/16 v0, 0x25

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 87
    const v2, 0x1001020d

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 88
    const v2, 0x1001040d

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 89
    const v2, 0x10010217

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 90
    const v2, 0x10010417

    aput v2, v0, v1

    .line 91
    const v1, 0x3001031f

    aput v1, v0, v7

    const/4 v1, 0x5

    .line 92
    const v2, 0x3001032c

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 95
    const v2, 0x1010201

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 96
    const v2, 0x1010401

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 97
    const v2, 0x1010203

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 98
    const v2, 0x1010403

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 99
    const v2, 0x1010205

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 100
    const v2, 0x1010405

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 101
    const v2, 0x1010207

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 102
    const v2, 0x1010407

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 103
    const v2, 0x1010209

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 104
    const v2, 0x1010409

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 105
    const v2, 0x101010c

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 106
    const v2, 0x101030c

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 107
    const v2, 0x101050c

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 108
    const v2, 0x1010312

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 109
    const v2, 0x1010118

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 110
    const v2, 0x1010318

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 111
    const v2, 0x1010518

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 112
    const v2, 0x1010323

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 113
    const v2, 0x1010324

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 114
    const v2, 0x1010125

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 115
    const v2, 0x1010525

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 116
    const v2, 0x1010127

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 117
    const v2, 0x1010527

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 118
    const v2, 0x1010129

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 119
    const v2, 0x1010529

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 120
    const v2, 0x101012b

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 121
    const v2, 0x101052b

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 122
    const v2, 0x101012d

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 123
    const v2, 0x101052d

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 124
    const v2, 0x63010333

    aput v2, v0, v1

    .line 85
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels01_02;->mObjects:[I

    .line 127
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
