.class public Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels03_07.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xa000800

    const v6, 0xb000800

    const v5, 0x1000900

    const v4, 0x10a0200

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0x9

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mNebulaId:I

    .line 13
    const/16 v0, 0x2e

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mFogColor:[F

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mRenderMode:I

    .line 17
    const/16 v0, 0x258

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mMaxTime:I

    .line 21
    const/16 v0, 0x5a0

    new-array v0, v0, [I

    const/16 v1, 0x5c

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x65

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x6e

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x6f

    aput v3, v0, v1

    const/16 v1, 0x70

    aput v3, v0, v1

    const/16 v1, 0x71

    aput v3, v0, v1

    const/16 v1, 0x72

    aput v3, v0, v1

    const/16 v1, 0x77

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x78

    aput v3, v0, v1

    const/16 v1, 0x79

    aput v4, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x80

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x84

    aput v3, v0, v1

    const/16 v1, 0x89

    .line 37
    aput v5, v0, v1

    const/16 v1, 0x8a

    aput v4, v0, v1

    const/16 v1, 0x8b

    aput v3, v0, v1

    const/16 v1, 0x8c

    aput v4, v0, v1

    const/16 v1, 0x8d

    aput v5, v0, v1

    const/16 v1, 0x92

    .line 38
    aput v5, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x96

    aput v5, v0, v1

    const/16 v1, 0x9b

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x9c

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x9d

    aput v4, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa4

    .line 40
    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xad

    .line 41
    aput v4, v0, v1

    const/16 v1, 0xae

    aput v4, v0, v1

    const/16 v1, 0xaf

    aput v5, v0, v1

    const/16 v1, 0xb0

    aput v4, v0, v1

    const/16 v1, 0xb1

    aput v4, v0, v1

    const/16 v1, 0xb5

    .line 42
    aput v4, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xb7

    aput v5, v0, v1

    const/16 v1, 0xb8

    aput v5, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v4, v0, v1

    const/16 v1, 0xbe

    .line 43
    aput v6, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc8

    .line 44
    aput v6, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v4, v0, v1

    const/16 v1, 0xd2

    .line 45
    aput v6, v0, v1

    const/16 v1, 0xd3

    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v4, v0, v1

    const/16 v1, 0xdc

    .line 46
    aput v6, v0, v1

    const/16 v1, 0xdd

    aput v3, v0, v1

    const/16 v1, 0xde

    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v4, v0, v1

    const/16 v1, 0xe6

    .line 47
    aput v6, v0, v1

    const/16 v1, 0xe7

    aput v3, v0, v1

    const/16 v1, 0xe8

    aput v3, v0, v1

    const/16 v1, 0xf0

    .line 48
    aput v6, v0, v1

    const/16 v1, 0xf1

    aput v3, v0, v1

    const/16 v1, 0xf9

    .line 49
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0x101

    .line 50
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x102

    aput v3, v0, v1

    const/16 v1, 0x103

    aput v7, v0, v1

    const/16 v1, 0x109

    .line 51
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x10a

    aput v3, v0, v1

    const/16 v1, 0x10b

    aput v7, v0, v1

    const/16 v1, 0x111

    .line 52
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x112

    aput v3, v0, v1

    const/16 v1, 0x113

    aput v7, v0, v1

    const/16 v1, 0x119

    .line 53
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x11a

    aput v3, v0, v1

    const/16 v1, 0x11b

    aput v7, v0, v1

    const/16 v1, 0x121

    .line 54
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x122

    aput v3, v0, v1

    const/16 v1, 0x123

    aput v7, v0, v1

    const/16 v1, 0x12a

    .line 55
    aput v3, v0, v1

    const/16 v1, 0x12b

    aput v7, v0, v1

    const/16 v1, 0x133

    .line 56
    aput v3, v0, v1

    const/16 v1, 0x134

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x13c

    .line 57
    aput v3, v0, v1

    const/16 v1, 0x13d

    aput v3, v0, v1

    const/16 v1, 0x13e

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x146

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x147

    aput v3, v0, v1

    const/16 v1, 0x148

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x14f

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x150

    aput v6, v0, v1

    const/16 v1, 0x151

    aput v3, v0, v1

    const/16 v1, 0x152

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x158

    .line 60
    aput v5, v0, v1

    const/16 v1, 0x15a

    aput v6, v0, v1

    const/16 v1, 0x15b

    aput v3, v0, v1

    const/16 v1, 0x15c

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x161

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x164

    aput v6, v0, v1

    const/16 v1, 0x165

    aput v3, v0, v1

    const/16 v1, 0x166

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x16a

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x16e

    aput v6, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x173

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x177

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x17c

    .line 64
    aput v5, v0, v1

    const/16 v1, 0x17f

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x180

    aput v5, v0, v1

    const/16 v1, 0x181

    aput v7, v0, v1

    const/16 v1, 0x185

    .line 65
    aput v3, v0, v1

    const/16 v1, 0x187

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x188

    aput v3, v0, v1

    const/16 v1, 0x189

    aput v3, v0, v1

    const/16 v1, 0x18e

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x18f

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x190

    aput v3, v0, v1

    const/16 v1, 0x191

    aput v7, v0, v1

    const/16 v1, 0x192

    aput v3, v0, v1

    const/16 v1, 0x197

    .line 67
    aput v3, v0, v1

    const/16 v1, 0x198

    aput v3, v0, v1

    const/16 v1, 0x199

    aput v7, v0, v1

    const/16 v1, 0x19b

    aput v3, v0, v1

    const/16 v1, 0x1a0

    .line 68
    aput v5, v0, v1

    const/16 v1, 0x1a1

    aput v7, v0, v1

    const/16 v1, 0x1a4

    aput v5, v0, v1

    const/16 v1, 0x1a9

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x1ad

    aput v3, v0, v1

    const/16 v1, 0x1b2

    .line 70
    aput v5, v0, v1

    const/16 v1, 0x1b3

    aput v3, v0, v1

    const/16 v1, 0x1b4

    aput v4, v0, v1

    const/16 v1, 0x1b5

    aput v3, v0, v1

    const/16 v1, 0x1b6

    aput v5, v0, v1

    const/16 v1, 0x1bb

    .line 71
    aput v6, v0, v1

    const/16 v1, 0x1bc

    aput v3, v0, v1

    const/16 v1, 0x1bd

    aput v3, v0, v1

    const/16 v1, 0x1be

    aput v3, v0, v1

    const/16 v1, 0x1bf

    aput v7, v0, v1

    const/16 v1, 0x1c5

    .line 72
    aput v6, v0, v1

    const/16 v1, 0x1c6

    aput v3, v0, v1

    const/16 v1, 0x1c7

    aput v7, v0, v1

    const/16 v1, 0x1ce

    .line 73
    aput v4, v0, v1

    const/16 v1, 0x1cf

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1d0

    aput v4, v0, v1

    const/16 v1, 0x1d7

    .line 74
    aput v4, v0, v1

    const/16 v1, 0x1d8

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1d9

    aput v4, v0, v1

    const/16 v1, 0x1e0

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x1e1

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1e2

    aput v4, v0, v1

    const/16 v1, 0x1e9

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x1ea

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1eb

    aput v4, v0, v1

    const/16 v1, 0x1f2

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x1f3

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x1f4

    aput v4, v0, v1

    const/16 v1, 0x1fb

    .line 78
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1fc

    aput v5, v0, v1

    const/16 v1, 0x1fd

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x203

    .line 79
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x204

    aput v5, v0, v1

    const/16 v1, 0x205

    aput v3, v0, v1

    const/16 v1, 0x206

    aput v5, v0, v1

    const/16 v1, 0x207

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x20b

    .line 80
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x20c

    aput v3, v0, v1

    const/16 v1, 0x20d

    aput v7, v0, v1

    const/16 v1, 0x20f

    aput v6, v0, v1

    const/16 v1, 0x210

    aput v3, v0, v1

    const/16 v1, 0x211

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x214

    .line 81
    aput v3, v0, v1

    const/16 v1, 0x215

    aput v7, v0, v1

    const/16 v1, 0x219

    aput v6, v0, v1

    const/16 v1, 0x21a

    aput v3, v0, v1

    const/16 v1, 0x21d

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x21e

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x222

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x223

    aput v3, v0, v1

    const/16 v1, 0x226

    .line 83
    aput v6, v0, v1

    const/16 v1, 0x227

    aput v3, v0, v1

    const/16 v1, 0x228

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x22a

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x22b

    aput v3, v0, v1

    const/16 v1, 0x22c

    aput v3, v0, v1

    const/16 v1, 0x230

    .line 84
    aput v6, v0, v1

    const/16 v1, 0x231

    aput v3, v0, v1

    const/16 v1, 0x233

    aput v3, v0, v1

    const/16 v1, 0x234

    aput v7, v0, v1

    const/16 v1, 0x23a

    .line 85
    aput v5, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x23c

    aput v5, v0, v1

    const/16 v1, 0x242

    .line 86
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x243

    aput v5, v0, v1

    const/16 v1, 0x244

    aput v3, v0, v1

    const/16 v1, 0x245

    aput v5, v0, v1

    const/16 v1, 0x246

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x24a

    .line 87
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x24b

    aput v3, v0, v1

    const/16 v1, 0x24c

    aput v7, v0, v1

    const/16 v1, 0x24e

    aput v6, v0, v1

    const/16 v1, 0x24f

    aput v3, v0, v1

    const/16 v1, 0x250

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x253

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x254

    aput v7, v0, v1

    const/16 v1, 0x258

    aput v6, v0, v1

    const/16 v1, 0x259

    aput v3, v0, v1

    const/16 v1, 0x25c

    .line 89
    aput v3, v0, v1

    const/16 v1, 0x25d

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x261

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x262

    aput v3, v0, v1

    const/16 v1, 0x265

    .line 90
    aput v6, v0, v1

    const/16 v1, 0x266

    aput v3, v0, v1

    const/16 v1, 0x267

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x269

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x26a

    aput v3, v0, v1

    const/16 v1, 0x26b

    aput v3, v0, v1

    const/16 v1, 0x26f

    .line 91
    aput v6, v0, v1

    const/16 v1, 0x270

    aput v3, v0, v1

    const/16 v1, 0x272

    aput v3, v0, v1

    const/16 v1, 0x273

    aput v7, v0, v1

    const/16 v1, 0x279

    .line 92
    aput v5, v0, v1

    const/16 v1, 0x27a

    aput v3, v0, v1

    const/16 v1, 0x27b

    aput v5, v0, v1

    const/16 v1, 0x281

    .line 93
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x282

    aput v5, v0, v1

    const/16 v1, 0x283

    aput v3, v0, v1

    const/16 v1, 0x284

    aput v5, v0, v1

    const/16 v1, 0x285

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x289

    .line 94
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x28a

    aput v3, v0, v1

    const/16 v1, 0x28b

    aput v7, v0, v1

    const/16 v1, 0x28d

    aput v6, v0, v1

    const/16 v1, 0x28e

    aput v3, v0, v1

    const/16 v1, 0x28f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x292

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x293

    aput v7, v0, v1

    const/16 v1, 0x297

    aput v6, v0, v1

    const/16 v1, 0x298

    aput v3, v0, v1

    const/16 v1, 0x29b

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x29c

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2a0

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2a1

    aput v3, v0, v1

    const/16 v1, 0x2a4

    .line 97
    aput v6, v0, v1

    const/16 v1, 0x2a5

    aput v3, v0, v1

    const/16 v1, 0x2a6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2a8

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2a9

    aput v3, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ae

    .line 98
    aput v6, v0, v1

    const/16 v1, 0x2af

    aput v3, v0, v1

    const/16 v1, 0x2b1

    aput v3, v0, v1

    const/16 v1, 0x2b2

    aput v7, v0, v1

    const/16 v1, 0x2b8

    .line 99
    aput v5, v0, v1

    const/16 v1, 0x2b9

    aput v3, v0, v1

    const/16 v1, 0x2ba

    aput v5, v0, v1

    const/16 v1, 0x2c0

    .line 100
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2c1

    aput v5, v0, v1

    const/16 v1, 0x2c2

    aput v3, v0, v1

    const/16 v1, 0x2c3

    aput v5, v0, v1

    const/16 v1, 0x2c4

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2c8

    .line 101
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2c9

    aput v3, v0, v1

    const/16 v1, 0x2ca

    aput v7, v0, v1

    const/16 v1, 0x2cc

    aput v6, v0, v1

    const/16 v1, 0x2cd

    aput v3, v0, v1

    const/16 v1, 0x2ce

    const v2, 0xc000900

    aput v2, v0, v1

    const/16 v1, 0x2d1

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x2d2

    aput v7, v0, v1

    const/16 v1, 0x2d6

    aput v6, v0, v1

    const/16 v1, 0x2d7

    aput v3, v0, v1

    const/16 v1, 0x2da

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x2db

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x2df

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x2e0

    aput v3, v0, v1

    const/16 v1, 0x2e3

    .line 104
    aput v6, v0, v1

    const/16 v1, 0x2e4

    aput v3, v0, v1

    const/16 v1, 0x2e8

    aput v3, v0, v1

    const/16 v1, 0x2e9

    aput v7, v0, v1

    const/16 v1, 0x2ed

    .line 105
    aput v5, v0, v1

    const/16 v1, 0x2f1

    aput v5, v0, v1

    const/16 v1, 0x2f6

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x2fa

    aput v3, v0, v1

    const/16 v1, 0x2ff

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x303

    aput v3, v0, v1

    const/16 v1, 0x308

    .line 108
    aput v5, v0, v1

    const/16 v1, 0x309

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x30b

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x30c

    aput v5, v0, v1

    const/16 v1, 0x311

    .line 109
    aput v3, v0, v1

    const/16 v1, 0x312

    aput v3, v0, v1

    const/16 v1, 0x313

    aput v4, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x315

    aput v3, v0, v1

    const/16 v1, 0x319

    .line 110
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x31a

    aput v3, v0, v1

    const/16 v1, 0x31b

    aput v7, v0, v1

    const/16 v1, 0x31d

    aput v6, v0, v1

    const/16 v1, 0x31e

    aput v3, v0, v1

    const/16 v1, 0x31f

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x322

    .line 111
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x323

    aput v7, v0, v1

    const/16 v1, 0x327

    aput v6, v0, v1

    const/16 v1, 0x328

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x32b

    .line 112
    aput v3, v0, v1

    const/16 v1, 0x32c

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x330

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x331

    aput v3, v0, v1

    const/16 v1, 0x334

    .line 113
    aput v6, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x336

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x338

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x339

    aput v3, v0, v1

    const/16 v1, 0x33a

    aput v7, v0, v1

    const/16 v1, 0x33e

    .line 114
    aput v6, v0, v1

    const/16 v1, 0x33f

    aput v3, v0, v1

    const/16 v1, 0x340

    aput v4, v0, v1

    const/16 v1, 0x341

    aput v3, v0, v1

    const/16 v1, 0x342

    aput v7, v0, v1

    const/16 v1, 0x347

    .line 115
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x348

    aput v3, v0, v1

    const/16 v1, 0x349

    aput v4, v0, v1

    const/16 v1, 0x34a

    aput v3, v0, v1

    const/16 v1, 0x34b

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x34f

    .line 116
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x350

    aput v3, v0, v1

    const/16 v1, 0x351

    aput v7, v0, v1

    const/16 v1, 0x353

    aput v6, v0, v1

    const/16 v1, 0x354

    aput v3, v0, v1

    const/16 v1, 0x355

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x358

    .line 117
    aput v3, v0, v1

    const/16 v1, 0x359

    aput v3, v0, v1

    const/16 v1, 0x35d

    aput v3, v0, v1

    const/16 v1, 0x35e

    aput v3, v0, v1

    const/16 v1, 0x361

    .line 118
    aput v6, v0, v1

    const/16 v1, 0x362

    aput v3, v0, v1

    const/16 v1, 0x363

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x365

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x366

    aput v3, v0, v1

    const/16 v1, 0x367

    aput v7, v0, v1

    const/16 v1, 0x36b

    .line 119
    aput v6, v0, v1

    const/16 v1, 0x36c

    aput v3, v0, v1

    const/16 v1, 0x36d

    aput v3, v0, v1

    const/16 v1, 0x36e

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v7, v0, v1

    const/16 v1, 0x375

    .line 120
    aput v6, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x377

    aput v7, v0, v1

    const/16 v1, 0x37f

    .line 121
    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x387

    .line 122
    aput v4, v0, v1

    const/16 v1, 0x388

    aput v3, v0, v1

    const/16 v1, 0x391

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x392

    aput v4, v0, v1

    const/16 v1, 0x39a

    .line 124
    aput v3, v0, v1

    const/16 v1, 0x3a2

    .line 125
    aput v4, v0, v1

    const/16 v1, 0x3a3

    aput v5, v0, v1

    const/16 v1, 0x3ac

    .line 126
    aput v3, v0, v1

    const/16 v1, 0x3ad

    aput v4, v0, v1

    const/16 v1, 0x3b4

    .line 127
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3b5

    aput v3, v0, v1

    const/16 v1, 0x3b6

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x3bc

    .line 128
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3bd

    aput v3, v0, v1

    const/16 v1, 0x3be

    aput v5, v0, v1

    const/16 v1, 0x3bf

    aput v3, v0, v1

    const/16 v1, 0x3c0

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x3c5

    .line 129
    aput v3, v0, v1

    const/16 v1, 0x3c6

    aput v7, v0, v1

    const/16 v1, 0x3c8

    aput v6, v0, v1

    const/16 v1, 0x3c9

    aput v3, v0, v1

    const/16 v1, 0x3ce

    .line 130
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3d2

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3d7

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x3db

    aput v3, v0, v1

    const/16 v1, 0x3e0

    .line 132
    aput v3, v0, v1

    const/16 v1, 0x3e4

    aput v3, v0, v1

    const/16 v1, 0x3e8

    .line 133
    aput v4, v0, v1

    const/16 v1, 0x3e9

    aput v3, v0, v1

    const/16 v1, 0x3ea

    aput v5, v0, v1

    const/16 v1, 0x3eb

    aput v5, v0, v1

    const/16 v1, 0x3ec

    aput v5, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3ee

    aput v4, v0, v1

    const/16 v1, 0x3f2

    .line 134
    aput v3, v0, v1

    const/16 v1, 0x3f6

    aput v3, v0, v1

    const/16 v1, 0x3fb

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x3ff

    aput v3, v0, v1

    const/16 v1, 0x403

    .line 136
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x404

    aput v3, v0, v1

    const/16 v1, 0x405

    aput v3, v0, v1

    const/16 v1, 0x406

    aput v4, v0, v1

    const/16 v1, 0x407

    aput v3, v0, v1

    const/16 v1, 0x408

    aput v3, v0, v1

    const/16 v1, 0x409

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x40c

    .line 137
    aput v3, v0, v1

    const/16 v1, 0x40d

    aput v5, v0, v1

    const/16 v1, 0x40e

    aput v3, v0, v1

    const/16 v1, 0x40f

    aput v4, v0, v1

    const/16 v1, 0x410

    aput v3, v0, v1

    const/16 v1, 0x411

    aput v5, v0, v1

    const/16 v1, 0x412

    aput v3, v0, v1

    const/16 v1, 0x415

    .line 138
    aput v5, v0, v1

    const/16 v1, 0x416

    aput v3, v0, v1

    const/16 v1, 0x417

    aput v5, v0, v1

    const/16 v1, 0x418

    aput v3, v0, v1

    const/16 v1, 0x419

    aput v5, v0, v1

    const/16 v1, 0x41a

    aput v3, v0, v1

    const/16 v1, 0x41b

    aput v5, v0, v1

    const/16 v1, 0x41e

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x420

    aput v3, v0, v1

    const/16 v1, 0x422

    aput v3, v0, v1

    const/16 v1, 0x424

    aput v3, v0, v1

    const/16 v1, 0x427

    .line 140
    aput v3, v0, v1

    const/16 v1, 0x429

    aput v3, v0, v1

    const/16 v1, 0x42b

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x430

    .line 141
    aput v5, v0, v1

    const/16 v1, 0x431

    aput v3, v0, v1

    const/16 v1, 0x432

    aput v5, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x434

    aput v5, v0, v1

    const/16 v1, 0x435

    aput v3, v0, v1

    const/16 v1, 0x436

    aput v5, v0, v1

    const/16 v1, 0x439

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x43b

    aput v3, v0, v1

    const/16 v1, 0x43d

    aput v3, v0, v1

    const/16 v1, 0x43f

    aput v3, v0, v1

    const/16 v1, 0x442

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x444

    aput v3, v0, v1

    const/16 v1, 0x446

    aput v3, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x44b

    .line 144
    aput v5, v0, v1

    const/16 v1, 0x44c

    aput v3, v0, v1

    const/16 v1, 0x44d

    aput v5, v0, v1

    const/16 v1, 0x44e

    aput v3, v0, v1

    const/16 v1, 0x44f

    aput v5, v0, v1

    const/16 v1, 0x450

    aput v3, v0, v1

    const/16 v1, 0x451

    aput v5, v0, v1

    const/16 v1, 0x454

    .line 145
    aput v3, v0, v1

    const/16 v1, 0x456

    aput v3, v0, v1

    const/16 v1, 0x458

    aput v3, v0, v1

    const/16 v1, 0x45a

    aput v3, v0, v1

    const/16 v1, 0x45d

    .line 146
    aput v3, v0, v1

    const/16 v1, 0x45f

    aput v3, v0, v1

    const/16 v1, 0x461

    aput v3, v0, v1

    const/16 v1, 0x463

    aput v3, v0, v1

    const/16 v1, 0x466

    .line 147
    aput v5, v0, v1

    const/16 v1, 0x467

    aput v3, v0, v1

    const/16 v1, 0x468

    aput v3, v0, v1

    const/16 v1, 0x469

    aput v4, v0, v1

    const/16 v1, 0x46a

    aput v3, v0, v1

    const/16 v1, 0x46b

    aput v3, v0, v1

    const/16 v1, 0x46c

    aput v5, v0, v1

    const/16 v1, 0x46f

    .line 148
    aput v6, v0, v1

    const/16 v1, 0x470

    aput v3, v0, v1

    const/16 v1, 0x471

    aput v3, v0, v1

    const/16 v1, 0x472

    aput v3, v0, v1

    const/16 v1, 0x473

    aput v3, v0, v1

    const/16 v1, 0x474

    aput v3, v0, v1

    const/16 v1, 0x475

    aput v7, v0, v1

    const/16 v1, 0x479

    .line 149
    aput v6, v0, v1

    const/16 v1, 0x47a

    aput v3, v0, v1

    const/16 v1, 0x47b

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x47c

    aput v3, v0, v1

    const/16 v1, 0x47d

    aput v7, v0, v1

    const/16 v1, 0x483

    .line 150
    aput v6, v0, v1

    const/16 v1, 0x484

    aput v3, v0, v1

    const/16 v1, 0x485

    aput v7, v0, v1

    const/16 v1, 0x48c

    .line 151
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x48d

    aput v5, v0, v1

    const/16 v1, 0x48e

    aput v4, v0, v1

    const/16 v1, 0x495

    .line 152
    aput v3, v0, v1

    const/16 v1, 0x496

    aput v3, v0, v1

    const/16 v1, 0x497

    aput v4, v0, v1

    const/16 v1, 0x49e

    .line 153
    aput v4, v0, v1

    const/16 v1, 0x49f

    aput v5, v0, v1

    const/16 v1, 0x4a0

    aput v3, v0, v1

    const/16 v1, 0x4a7

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x4a8

    aput v3, v0, v1

    const/16 v1, 0x4a9

    aput v3, v0, v1

    const/16 v1, 0x4b0

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x4b1

    aput v4, v0, v1

    const/16 v1, 0x4b2

    aput v3, v0, v1

    const/16 v1, 0x4b9

    .line 156
    aput v3, v0, v1

    const/16 v1, 0x4ba

    aput v3, v0, v1

    const/16 v1, 0x4bb

    aput v4, v0, v1

    const/16 v1, 0x4c2

    .line 157
    aput v4, v0, v1

    const/16 v1, 0x4c3

    aput v3, v0, v1

    const/16 v1, 0x4c4

    aput v3, v0, v1

    const/16 v1, 0x4cb

    .line 158
    aput v3, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    aput v3, v0, v1

    const/16 v1, 0x4d4

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x4d5

    aput v4, v0, v1

    const/16 v1, 0x4d6

    aput v3, v0, v1

    const/16 v1, 0x4dd

    .line 160
    aput v3, v0, v1

    const/16 v1, 0x4de

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x4df

    aput v4, v0, v1

    const/16 v1, 0x4e6

    .line 161
    aput v4, v0, v1

    const/16 v1, 0x4e7

    aput v3, v0, v1

    const/16 v1, 0x4e8

    aput v3, v0, v1

    const/16 v1, 0x4ef

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x4f0

    aput v3, v0, v1

    const/16 v1, 0x4f1

    aput v3, v0, v1

    const/16 v1, 0x4f8

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x4f9

    aput v3, v0, v1

    const/16 v1, 0x4fa

    aput v3, v0, v1

    const/16 v1, 0x501

    .line 164
    aput v5, v0, v1

    const/16 v1, 0x503

    aput v5, v0, v1

    const/16 v1, 0x50a

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x50b

    aput v3, v0, v1

    const/16 v1, 0x50c

    aput v3, v0, v1

    const/16 v1, 0x512

    .line 166
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x513

    aput v3, v0, v1

    const/16 v1, 0x514

    aput v3, v0, v1

    const/16 v1, 0x515

    aput v3, v0, v1

    const/16 v1, 0x516

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x51a

    .line 167
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x51b

    aput v3, v0, v1

    const/16 v1, 0x51c

    aput v3, v0, v1

    const/16 v1, 0x51d

    aput v5, v0, v1

    const/16 v1, 0x51e

    aput v3, v0, v1

    const/16 v1, 0x51f

    aput v3, v0, v1

    const/16 v1, 0x520

    const v2, 0xc000800

    aput v2, v0, v1

    const/16 v1, 0x523

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x524

    aput v3, v0, v1

    const/16 v1, 0x525

    aput v4, v0, v1

    const/16 v1, 0x526

    aput v3, v0, v1

    const/16 v1, 0x527

    aput v4, v0, v1

    const/16 v1, 0x528

    aput v3, v0, v1

    const/16 v1, 0x529

    aput v3, v0, v1

    const/16 v1, 0x52c

    .line 169
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x52d

    aput v4, v0, v1

    const/16 v1, 0x52e

    aput v4, v0, v1

    const/16 v1, 0x52f

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x530

    aput v4, v0, v1

    const/16 v1, 0x531

    aput v4, v0, v1

    const/16 v1, 0x532

    const v2, 0x1000a00

    aput v2, v0, v1

    const/16 v1, 0x535

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x536

    aput v3, v0, v1

    const/16 v1, 0x537

    aput v4, v0, v1

    const/16 v1, 0x538

    aput v3, v0, v1

    const/16 v1, 0x539

    aput v4, v0, v1

    const/16 v1, 0x53a

    aput v3, v0, v1

    const/16 v1, 0x53b

    aput v3, v0, v1

    const/16 v1, 0x53e

    .line 171
    aput v3, v0, v1

    const/16 v1, 0x53f

    aput v3, v0, v1

    const/16 v1, 0x540

    aput v4, v0, v1

    const/16 v1, 0x541

    aput v3, v0, v1

    const/16 v1, 0x542

    aput v4, v0, v1

    const/16 v1, 0x543

    aput v3, v0, v1

    const/16 v1, 0x544

    aput v3, v0, v1

    const/16 v1, 0x547

    .line 172
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x548

    aput v4, v0, v1

    const/16 v1, 0x549

    aput v4, v0, v1

    const/16 v1, 0x54a

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x54b

    aput v4, v0, v1

    const/16 v1, 0x54c

    aput v4, v0, v1

    const/16 v1, 0x54d

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x550

    .line 173
    aput v3, v0, v1

    const/16 v1, 0x551

    aput v3, v0, v1

    const/16 v1, 0x552

    aput v4, v0, v1

    const/16 v1, 0x553

    aput v3, v0, v1

    const/16 v1, 0x554

    aput v4, v0, v1

    const/16 v1, 0x555

    aput v3, v0, v1

    const/16 v1, 0x556

    aput v3, v0, v1

    const/16 v1, 0x559

    .line 174
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x55a

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x55b

    aput v4, v0, v1

    const/16 v1, 0x55c

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x55d

    aput v4, v0, v1

    const/16 v1, 0x55e

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x55f

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x562

    .line 175
    aput v6, v0, v1

    const/16 v1, 0x563

    aput v3, v0, v1

    const/16 v1, 0x564

    aput v4, v0, v1

    const/16 v1, 0x565

    aput v3, v0, v1

    const/16 v1, 0x566

    aput v4, v0, v1

    const/16 v1, 0x567

    aput v3, v0, v1

    const/16 v1, 0x568

    aput v7, v0, v1

    const/16 v1, 0x56c

    .line 176
    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x56d

    aput v4, v0, v1

    const/16 v1, 0x56e

    aput v3, v0, v1

    const/16 v1, 0x56f

    aput v4, v0, v1

    const/16 v1, 0x570

    const v2, 0x1000b00

    aput v2, v0, v1

    const/16 v1, 0x575

    .line 177
    aput v3, v0, v1

    const/16 v1, 0x576

    aput v4, v0, v1

    const/16 v1, 0x577

    aput v3, v0, v1

    const/16 v1, 0x578

    aput v4, v0, v1

    const/16 v1, 0x579

    aput v3, v0, v1

    const/16 v1, 0x57e

    .line 178
    aput v5, v0, v1

    const/16 v1, 0x57f

    aput v4, v0, v1

    const/16 v1, 0x580

    aput v5, v0, v1

    const/16 v1, 0x581

    aput v4, v0, v1

    const/16 v1, 0x582

    aput v5, v0, v1

    const/16 v1, 0x587

    .line 179
    aput v6, v0, v1

    const/16 v1, 0x588

    aput v3, v0, v1

    const/16 v1, 0x589

    aput v3, v0, v1

    const/16 v1, 0x58a

    aput v3, v0, v1

    const/16 v1, 0x58b

    aput v7, v0, v1

    const/16 v1, 0x591

    .line 180
    aput v6, v0, v1

    const/16 v1, 0x592

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x593

    aput v7, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mTiles:[I

    .line 185
    const/16 v0, 0x49

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x13010405

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x3301010b

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x3301070b

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x13010313

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x3301031a

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x3301051b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x1301041f

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x13010126

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x13010326

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x13010526

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x13010726

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x13010230

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x33010630

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x2301043d

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x13010248

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x33010648

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 203
    const v2, 0x33010452

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 204
    const v2, 0x1301035a

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 205
    const v2, 0x1301055a

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 206
    const v2, 0x33010460

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 207
    const v2, 0x1301046a

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 208
    const v2, 0x33010274

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 209
    const v2, 0x13010674

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 210
    const v2, 0x3301017d

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 211
    const v2, 0x33010785

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 212
    const v2, 0x13010392

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 213
    const v2, 0x13010592

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 216
    const v2, 0x3010301

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x3010501

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x3010106

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x3010706

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x301010e

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x301070e

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x301020f

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x301060f

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x3010412

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x3010121

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x3010721

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x3010228

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x3010628

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x301012d

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x301072d

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x3010235

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x3010635

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x301033d

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x301053d

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x3010140

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x3010740

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x3010145

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x3010745

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x301024a

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x301064a

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x301014e

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x301074e

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x3010451

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x3010155

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x3010755

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 246
    const v2, 0x301015c

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 247
    const v2, 0x301075c

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 248
    const v2, 0x3010163

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 249
    const v2, 0x3010763

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 250
    const v2, 0x3010466

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 251
    const v2, 0x301026e

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 252
    const v2, 0x301066e

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 253
    const v2, 0x3010776

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 254
    const v2, 0x301017c

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 255
    const v2, 0x3010784

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 256
    const v2, 0x301028d

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 257
    const v2, 0x301068d

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 258
    const v2, 0x3010291

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 259
    const v2, 0x3010691

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 260
    const v2, 0x63010498

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels03_07;->mObjects:[I

    .line 263
    return-void

    .line 14
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
