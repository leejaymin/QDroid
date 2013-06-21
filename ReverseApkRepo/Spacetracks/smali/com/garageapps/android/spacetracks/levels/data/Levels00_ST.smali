.class public Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels00_ST.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    const v3, 0x1000003

    const/high16 v2, 0x100

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/4 v0, 0x7

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mSizeX:I

    .line 11
    const/16 v0, 0x4c

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mSizeY:I

    .line 12
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mTileMapId:I

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mFogColor:[F

    .line 14
    iput v4, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mRenderMode:I

    .line 15
    iput v5, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mMaxSpeed:I

    .line 16
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mMaxTime:I

    .line 19
    const/16 v0, 0x214

    new-array v0, v0, [I

    const/16 v1, 0x48

    .line 30
    aput v2, v0, v1

    const/16 v1, 0x49

    aput v2, v0, v1

    const/16 v1, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 31
    aput v2, v0, v1

    const/16 v1, 0x56

    .line 32
    aput v2, v0, v1

    const/16 v1, 0x57

    aput v2, v0, v1

    const/16 v1, 0x58

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 33
    aput v2, v0, v1

    const/16 v1, 0x63

    .line 34
    aput v2, v0, v1

    const/16 v1, 0x64

    aput v2, v0, v1

    const/16 v1, 0x65

    aput v2, v0, v1

    const/16 v1, 0x66

    aput v2, v0, v1

    const/16 v1, 0x71

    .line 36
    aput v2, v0, v1

    const/16 v1, 0x75

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 37
    aput v2, v0, v1

    const/16 v1, 0x7c

    aput v2, v0, v1

    const/16 v1, 0x7f

    .line 38
    aput v2, v0, v1

    const/16 v1, 0x80

    aput v2, v0, v1

    const/16 v1, 0x81

    aput v2, v0, v1

    const/16 v1, 0x82

    aput v2, v0, v1

    const/16 v1, 0x86

    .line 39
    aput v2, v0, v1

    const/16 v1, 0x8a

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 40
    aput v2, v0, v1

    const/16 v1, 0x91

    aput v2, v0, v1

    const/16 v1, 0x9c

    .line 42
    aput v2, v0, v1

    const/16 v1, 0x9d

    aput v2, v0, v1

    const/16 v1, 0x9e

    aput v2, v0, v1

    const/16 v1, 0xa2

    .line 43
    aput v2, v0, v1

    const/16 v1, 0xa6

    aput v2, v0, v1

    const/16 v1, 0xa9

    .line 44
    aput v2, v0, v1

    const/16 v1, 0xb0

    .line 45
    aput v2, v0, v1

    const/16 v1, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xb8

    .line 46
    aput v2, v0, v1

    const/16 v1, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xba

    aput v2, v0, v1

    const/16 v1, 0xc6

    .line 48
    aput v2, v0, v1

    const/16 v1, 0xc7

    aput v2, v0, v1

    aput v2, v0, v5

    const/16 v1, 0xcc

    .line 49
    aput v2, v0, v1

    const/16 v1, 0xd0

    aput v2, v0, v1

    const/16 v1, 0xd3

    .line 50
    aput v2, v0, v1

    const/16 v1, 0xd4

    aput v2, v0, v1

    const/16 v1, 0xd5

    aput v2, v0, v1

    const/16 v1, 0xd6

    aput v2, v0, v1

    const/16 v1, 0xd7

    aput v2, v0, v1

    const/16 v1, 0xda

    .line 51
    aput v2, v0, v1

    const/16 v1, 0xde

    aput v2, v0, v1

    const/16 v1, 0xe1

    .line 52
    aput v2, v0, v1

    const/16 v1, 0xe5

    aput v2, v0, v1

    const/16 v1, 0xef

    .line 54
    aput v2, v0, v1

    const/16 v1, 0xf0

    aput v2, v0, v1

    const/16 v1, 0xf1

    aput v2, v0, v1

    const/16 v1, 0xf2

    aput v2, v0, v1

    const/16 v1, 0xf6

    .line 55
    aput v2, v0, v1

    const/16 v1, 0xfa

    aput v2, v0, v1

    const/16 v1, 0xfd

    .line 56
    aput v2, v0, v1

    const/16 v1, 0xfe

    aput v2, v0, v1

    const/16 v1, 0xff

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v2, v0, v1

    const/16 v1, 0x104

    .line 57
    aput v2, v0, v1

    const/16 v1, 0x108

    aput v2, v0, v1

    const/16 v1, 0x10b

    .line 58
    aput v2, v0, v1

    const/16 v1, 0x10f

    aput v2, v0, v1

    const/16 v1, 0x119

    .line 60
    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v2, v0, v1

    const/16 v1, 0x11b

    aput v2, v0, v1

    const/16 v1, 0x11c

    aput v2, v0, v1

    const/16 v1, 0x11d

    aput v2, v0, v1

    const/16 v1, 0x122

    .line 61
    aput v2, v0, v1

    const/16 v1, 0x129

    .line 62
    aput v2, v0, v1

    const/16 v1, 0x130

    .line 63
    aput v2, v0, v1

    const/16 v1, 0x137

    .line 64
    aput v2, v0, v1

    const/16 v1, 0x143

    .line 66
    aput v2, v0, v1

    const/16 v1, 0x144

    aput v2, v0, v1

    const/16 v1, 0x145

    aput v2, v0, v1

    const/16 v1, 0x146

    aput v2, v0, v1

    const/16 v1, 0x147

    aput v2, v0, v1

    const/16 v1, 0x14a

    .line 67
    aput v2, v0, v1

    const/16 v1, 0x151

    .line 68
    aput v2, v0, v1

    const/16 v1, 0x152

    aput v2, v0, v1

    const/16 v1, 0x153

    aput v2, v0, v1

    const/16 v1, 0x154

    aput v2, v0, v1

    const/16 v1, 0x158

    .line 69
    aput v2, v0, v1

    const/16 v1, 0x15f

    .line 70
    aput v2, v0, v1

    const/16 v1, 0x160

    aput v2, v0, v1

    const/16 v1, 0x161

    aput v2, v0, v1

    const/16 v1, 0x162

    aput v2, v0, v1

    const/16 v1, 0x163

    aput v2, v0, v1

    const/16 v1, 0x16e

    .line 72
    aput v2, v0, v1

    const/16 v1, 0x16f

    aput v2, v0, v1

    const/16 v1, 0x170

    aput v2, v0, v1

    const/16 v1, 0x174

    .line 73
    aput v2, v0, v1

    const/16 v1, 0x178

    aput v2, v0, v1

    const/16 v1, 0x17b

    .line 74
    aput v2, v0, v1

    const/16 v1, 0x182

    .line 75
    aput v2, v0, v1

    const/16 v1, 0x186

    aput v2, v0, v1

    const/16 v1, 0x18a

    .line 76
    aput v2, v0, v1

    const/16 v1, 0x18b

    aput v2, v0, v1

    const/16 v1, 0x18c

    aput v2, v0, v1

    const/16 v1, 0x198

    .line 78
    aput v2, v0, v1

    const/16 v1, 0x199

    aput v2, v0, v1

    const/16 v1, 0x19a

    aput v2, v0, v1

    const/16 v1, 0x19e

    .line 79
    aput v2, v0, v1

    const/16 v1, 0x1a2

    aput v2, v0, v1

    const/16 v1, 0x1a5

    .line 80
    aput v2, v0, v1

    const/16 v1, 0x1a6

    aput v2, v0, v1

    const/16 v1, 0x1a7

    aput v2, v0, v1

    const/16 v1, 0x1a8

    aput v2, v0, v1

    const/16 v1, 0x1a9

    aput v2, v0, v1

    const/16 v1, 0x1ac

    .line 81
    aput v2, v0, v1

    const/16 v1, 0x1b0

    aput v2, v0, v1

    const/16 v1, 0x1b3

    .line 82
    aput v2, v0, v1

    const/16 v1, 0x1b7

    aput v2, v0, v1

    const/16 v1, 0x1c1

    .line 84
    aput v2, v0, v1

    const/16 v1, 0x1c2

    aput v2, v0, v1

    const/16 v1, 0x1c3

    aput v2, v0, v1

    const/16 v1, 0x1c4

    aput v2, v0, v1

    const/16 v1, 0x1c8

    .line 85
    aput v2, v0, v1

    const/16 v1, 0x1cc

    aput v2, v0, v1

    const/16 v1, 0x1cf

    .line 86
    aput v2, v0, v1

    const/16 v1, 0x1d0

    aput v2, v0, v1

    const/16 v1, 0x1d1

    aput v2, v0, v1

    const/16 v1, 0x1d2

    aput v2, v0, v1

    const/16 v1, 0x1d6

    .line 87
    aput v2, v0, v1

    const/16 v1, 0x1dd

    .line 88
    aput v2, v0, v1

    const/16 v1, 0x1ec

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1ed

    aput v3, v0, v1

    const/16 v1, 0x1ee

    aput v3, v0, v1

    const/16 v1, 0x1ef

    aput v3, v0, v1

    const/16 v1, 0x1f2

    .line 91
    aput v3, v0, v1

    const/16 v1, 0x1fa

    .line 92
    aput v3, v0, v1

    const/16 v1, 0x1fb

    aput v3, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x204

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x207

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x209

    aput v3, v0, v1

    const/16 v1, 0x20a

    aput v3, v0, v1

    .line 19
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mTiles:[I

    .line 99
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels00_ST;->mObjects:[I

    .line 100
    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
