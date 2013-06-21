.class public Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;
.super Lcom/garageapps/android/spacetracks/levels/Levels;
.source "Levels05_07.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const v7, 0xc000800

    const v6, 0xa000800

    const v5, 0xb000800

    const v4, 0x1000c00

    const v3, 0x1000800

    .line 8
    invoke-direct {p0}, Lcom/garageapps/android/spacetracks/levels/Levels;-><init>()V

    .line 10
    const/16 v0, 0xb

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mSizeX:I

    .line 11
    const/16 v0, 0xa0

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mSizeY:I

    .line 12
    const/16 v0, 0xe

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mNebulaId:I

    .line 13
    const/16 v0, 0x2f

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mTileMapId:I

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mNebulaColor:[F

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mFogColor:[F

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mRenderMode:I

    .line 17
    const/16 v0, 0x320

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mMaxSpeed:I

    .line 18
    const/16 v0, 0x14

    iput v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mMaxTime:I

    .line 21
    const/16 v0, 0x6e0

    new-array v0, v0, [I

    const/16 v1, 0x73

    .line 32
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x7e

    .line 33
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x89

    .line 34
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x94

    .line 35
    aput v4, v0, v1

    const/16 v1, 0x9f

    .line 36
    aput v4, v0, v1

    const/16 v1, 0xaa

    .line 37
    aput v4, v0, v1

    const/16 v1, 0xb4

    .line 38
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0xb5

    aput v3, v0, v1

    const/16 v1, 0xb6

    aput v7, v0, v1

    const/16 v1, 0xc0

    .line 39
    aput v3, v0, v1

    const/16 v1, 0xcb

    .line 40
    aput v4, v0, v1

    const/16 v1, 0xd5

    .line 41
    aput v4, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xd7

    aput v4, v0, v1

    const/16 v1, 0xe1

    .line 42
    aput v4, v0, v1

    const/16 v1, 0xec

    .line 43
    aput v3, v0, v1

    const/16 v1, 0xf6

    .line 44
    aput v5, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v6, v0, v1

    const/16 v1, 0x102

    .line 45
    aput v4, v0, v1

    const/16 v1, 0x10d

    .line 46
    aput v4, v0, v1

    const/16 v1, 0x118

    .line 47
    aput v4, v0, v1

    const/16 v1, 0x122

    .line 48
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x123

    aput v3, v0, v1

    const/16 v1, 0x124

    aput v7, v0, v1

    const/16 v1, 0x12e

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x139

    .line 50
    aput v4, v0, v1

    const/16 v1, 0x143

    .line 51
    aput v4, v0, v1

    const/16 v1, 0x144

    aput v4, v0, v1

    const/16 v1, 0x145

    aput v4, v0, v1

    const/16 v1, 0x14f

    .line 52
    aput v4, v0, v1

    const/16 v1, 0x15a

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x164

    .line 54
    aput v5, v0, v1

    const/16 v1, 0x165

    aput v3, v0, v1

    const/16 v1, 0x166

    aput v6, v0, v1

    const/16 v1, 0x170

    .line 55
    aput v4, v0, v1

    const/16 v1, 0x17b

    .line 56
    aput v4, v0, v1

    const/16 v1, 0x186

    .line 57
    aput v4, v0, v1

    const/16 v1, 0x190

    .line 58
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x191

    aput v3, v0, v1

    const/16 v1, 0x192

    aput v7, v0, v1

    const/16 v1, 0x19c

    .line 59
    aput v3, v0, v1

    const/16 v1, 0x1a7

    .line 60
    aput v4, v0, v1

    const/16 v1, 0x1b1

    .line 61
    aput v4, v0, v1

    const/16 v1, 0x1b2

    aput v4, v0, v1

    const/16 v1, 0x1b3

    aput v4, v0, v1

    const/16 v1, 0x1bd

    .line 62
    aput v4, v0, v1

    const/16 v1, 0x1c8

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x1d2

    .line 64
    aput v5, v0, v1

    const/16 v1, 0x1d3

    aput v3, v0, v1

    const/16 v1, 0x1d4

    aput v6, v0, v1

    const/16 v1, 0x1de

    .line 65
    aput v4, v0, v1

    const/16 v1, 0x1e9

    .line 66
    aput v4, v0, v1

    const/16 v1, 0x1f4

    .line 67
    aput v4, v0, v1

    const/16 v1, 0x1fe

    .line 68
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x1ff

    aput v3, v0, v1

    const/16 v1, 0x200

    aput v7, v0, v1

    const/16 v1, 0x20a

    .line 69
    aput v3, v0, v1

    const/16 v1, 0x215

    .line 70
    aput v4, v0, v1

    const/16 v1, 0x21f

    .line 71
    aput v4, v0, v1

    const/16 v1, 0x220

    aput v4, v0, v1

    const/16 v1, 0x221

    aput v4, v0, v1

    const/16 v1, 0x22b

    .line 72
    aput v4, v0, v1

    const/16 v1, 0x236

    .line 73
    aput v3, v0, v1

    const/16 v1, 0x240

    .line 74
    aput v5, v0, v1

    const/16 v1, 0x241

    aput v3, v0, v1

    const/16 v1, 0x242

    aput v6, v0, v1

    const/16 v1, 0x24c

    .line 75
    aput v4, v0, v1

    const/16 v1, 0x257

    .line 76
    aput v4, v0, v1

    const/16 v1, 0x262

    .line 77
    aput v4, v0, v1

    const/16 v1, 0x26c

    .line 78
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x26d

    aput v3, v0, v1

    const/16 v1, 0x26e

    aput v7, v0, v1

    const/16 v1, 0x278

    .line 79
    aput v3, v0, v1

    const/16 v1, 0x283

    .line 80
    aput v4, v0, v1

    const/16 v1, 0x28d

    .line 81
    aput v4, v0, v1

    const/16 v1, 0x28e

    aput v4, v0, v1

    const/16 v1, 0x28f

    aput v4, v0, v1

    const/16 v1, 0x299

    .line 82
    aput v4, v0, v1

    const/16 v1, 0x2a4

    .line 83
    aput v3, v0, v1

    const/16 v1, 0x2ae

    .line 84
    aput v5, v0, v1

    const/16 v1, 0x2af

    aput v3, v0, v1

    const/16 v1, 0x2b0

    aput v6, v0, v1

    const/16 v1, 0x2ba

    .line 85
    aput v4, v0, v1

    const/16 v1, 0x2c5

    .line 86
    aput v4, v0, v1

    const/16 v1, 0x2d0

    .line 87
    aput v4, v0, v1

    const/16 v1, 0x2db

    .line 88
    aput v3, v0, v1

    const/16 v1, 0x2e5

    .line 89
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x2e6

    aput v3, v0, v1

    const/16 v1, 0x2e7

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x2e8

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x2f0

    .line 90
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x2f1

    aput v3, v0, v1

    const/16 v1, 0x2f2

    aput v3, v0, v1

    const/16 v1, 0x2f3

    aput v3, v0, v1

    const/16 v1, 0x2fb

    .line 91
    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x2fc

    aput v3, v0, v1

    const/16 v1, 0x2fd

    aput v4, v0, v1

    const/16 v1, 0x2fe

    aput v3, v0, v1

    const/16 v1, 0x307

    .line 92
    aput v4, v0, v1

    const/16 v1, 0x308

    aput v3, v0, v1

    const/16 v1, 0x309

    aput v4, v0, v1

    const/16 v1, 0x312

    .line 93
    aput v3, v0, v1

    const/16 v1, 0x313

    aput v4, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x31d

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x31e

    aput v3, v0, v1

    const/16 v1, 0x31f

    aput v3, v0, v1

    const/16 v1, 0x328

    .line 95
    aput v3, v0, v1

    const/16 v1, 0x329

    aput v3, v0, v1

    const/16 v1, 0x32a

    aput v3, v0, v1

    const/16 v1, 0x333

    .line 96
    aput v3, v0, v1

    const/16 v1, 0x334

    aput v4, v0, v1

    const/16 v1, 0x335

    aput v3, v0, v1

    const/16 v1, 0x33e

    .line 97
    aput v4, v0, v1

    const/16 v1, 0x33f

    aput v3, v0, v1

    const/16 v1, 0x340

    aput v4, v0, v1

    const/16 v1, 0x349

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x34a

    aput v4, v0, v1

    const/16 v1, 0x34b

    aput v3, v0, v1

    const/16 v1, 0x354

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x355

    aput v3, v0, v1

    const/16 v1, 0x356

    aput v3, v0, v1

    const/16 v1, 0x35b

    .line 100
    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x35c

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x35d

    const v2, 0x63000f00

    aput v2, v0, v1

    const/16 v1, 0x35f

    aput v3, v0, v1

    const/16 v1, 0x360

    aput v3, v0, v1

    const/16 v1, 0x361

    aput v3, v0, v1

    const/16 v1, 0x366

    .line 101
    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x367

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x368

    const v2, 0x62000f00

    aput v2, v0, v1

    const/16 v1, 0x36a

    aput v3, v0, v1

    const/16 v1, 0x36b

    aput v4, v0, v1

    const/16 v1, 0x36c

    aput v3, v0, v1

    const/16 v1, 0x371

    .line 102
    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x372

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x373

    const v2, 0x1001300

    aput v2, v0, v1

    const/16 v1, 0x375

    aput v4, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x377

    aput v4, v0, v1

    const/16 v1, 0x37c

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x37d

    aput v3, v0, v1

    const/16 v1, 0x37e

    aput v3, v0, v1

    const/16 v1, 0x380

    aput v3, v0, v1

    const/16 v1, 0x381

    aput v4, v0, v1

    const/16 v1, 0x382

    aput v3, v0, v1

    const/16 v1, 0x387

    .line 104
    aput v4, v0, v1

    const/16 v1, 0x388

    aput v4, v0, v1

    const/16 v1, 0x389

    aput v4, v0, v1

    const/16 v1, 0x38b

    aput v3, v0, v1

    const/16 v1, 0x38c

    aput v3, v0, v1

    const/16 v1, 0x38d

    aput v3, v0, v1

    const/16 v1, 0x392

    .line 105
    aput v3, v0, v1

    const/16 v1, 0x393

    aput v3, v0, v1

    const/16 v1, 0x394

    aput v3, v0, v1

    const/16 v1, 0x396

    aput v3, v0, v1

    const/16 v1, 0x397

    aput v3, v0, v1

    const/16 v1, 0x398

    aput v3, v0, v1

    const/16 v1, 0x39d

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x3a1

    aput v3, v0, v1

    const/16 v1, 0x3a2

    aput v4, v0, v1

    const/16 v1, 0x3a3

    aput v3, v0, v1

    const/16 v1, 0x3a8

    .line 107
    aput v3, v0, v1

    const/16 v1, 0x3a9

    aput v7, v0, v1

    const/16 v1, 0x3ac

    aput v4, v0, v1

    const/16 v1, 0x3ad

    aput v3, v0, v1

    const/16 v1, 0x3ae

    aput v4, v0, v1

    const/16 v1, 0x3b3

    .line 108
    aput v5, v0, v1

    const/16 v1, 0x3b4

    aput v3, v0, v1

    const/16 v1, 0x3b5

    aput v7, v0, v1

    const/16 v1, 0x3b7

    aput v3, v0, v1

    const/16 v1, 0x3b8

    aput v4, v0, v1

    const/16 v1, 0x3b9

    aput v3, v0, v1

    const/16 v1, 0x3bf

    .line 109
    aput v5, v0, v1

    const/16 v1, 0x3c0

    aput v3, v0, v1

    const/16 v1, 0x3c2

    aput v3, v0, v1

    const/16 v1, 0x3c3

    aput v3, v0, v1

    const/16 v1, 0x3c4

    aput v3, v0, v1

    const/16 v1, 0x3cb

    .line 110
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3cd

    aput v3, v0, v1

    const/16 v1, 0x3ce

    aput v3, v0, v1

    const/16 v1, 0x3cf

    aput v3, v0, v1

    const/16 v1, 0x3d5

    .line 111
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3d6

    aput v3, v0, v1

    const/16 v1, 0x3d8

    aput v3, v0, v1

    const/16 v1, 0x3d9

    aput v4, v0, v1

    const/16 v1, 0x3da

    aput v3, v0, v1

    const/16 v1, 0x3df

    .line 112
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x3e0

    aput v3, v0, v1

    const/16 v1, 0x3e1

    aput v6, v0, v1

    const/16 v1, 0x3e3

    aput v4, v0, v1

    const/16 v1, 0x3e4

    aput v3, v0, v1

    const/16 v1, 0x3e5

    aput v4, v0, v1

    const/16 v1, 0x3ea

    .line 113
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x3eb

    aput v6, v0, v1

    const/16 v1, 0x3ee

    aput v3, v0, v1

    const/16 v1, 0x3ef

    aput v4, v0, v1

    const/16 v1, 0x3f0

    aput v3, v0, v1

    const/16 v1, 0x3f1

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3f5

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x3f6

    aput v7, v0, v1

    const/16 v1, 0x3f9

    aput v3, v0, v1

    const/16 v1, 0x3fa

    aput v3, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x3fc

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x3fd

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x400

    .line 115
    aput v5, v0, v1

    const/16 v1, 0x401

    aput v3, v0, v1

    const/16 v1, 0x402

    aput v7, v0, v1

    const/16 v1, 0x404

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x405

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x406

    aput v3, v0, v1

    const/16 v1, 0x407

    aput v3, v0, v1

    const/16 v1, 0x408

    aput v3, v0, v1

    const/16 v1, 0x40c

    .line 116
    aput v5, v0, v1

    const/16 v1, 0x40d

    aput v3, v0, v1

    const/16 v1, 0x410

    const v2, 0x10a0800

    aput v2, v0, v1

    const/16 v1, 0x411

    aput v3, v0, v1

    const/16 v1, 0x412

    aput v4, v0, v1

    const/16 v1, 0x413

    aput v3, v0, v1

    const/16 v1, 0x418

    .line 117
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x41c

    aput v4, v0, v1

    const/16 v1, 0x41d

    aput v3, v0, v1

    const/16 v1, 0x41e

    aput v4, v0, v1

    const/16 v1, 0x422

    .line 118
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x423

    aput v3, v0, v1

    const/16 v1, 0x427

    aput v3, v0, v1

    const/16 v1, 0x428

    aput v4, v0, v1

    const/16 v1, 0x429

    aput v3, v0, v1

    const/16 v1, 0x42c

    .line 119
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x42e

    aput v6, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x434

    aput v3, v0, v1

    const/16 v1, 0x437

    .line 120
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x438

    aput v6, v0, v1

    const/16 v1, 0x43d

    aput v3, v0, v1

    const/16 v1, 0x43e

    aput v3, v0, v1

    const/16 v1, 0x43f

    aput v3, v0, v1

    const/16 v1, 0x442

    .line 121
    aput v3, v0, v1

    const/16 v1, 0x443

    aput v7, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x449

    aput v4, v0, v1

    const/16 v1, 0x44a

    aput v3, v0, v1

    const/16 v1, 0x44d

    .line 122
    aput v5, v0, v1

    const/16 v1, 0x44e

    aput v3, v0, v1

    const/16 v1, 0x44f

    aput v7, v0, v1

    const/16 v1, 0x453

    aput v4, v0, v1

    const/16 v1, 0x454

    aput v3, v0, v1

    const/16 v1, 0x455

    aput v4, v0, v1

    const/16 v1, 0x459

    .line 123
    aput v5, v0, v1

    const/16 v1, 0x45a

    aput v3, v0, v1

    const/16 v1, 0x45e

    aput v3, v0, v1

    const/16 v1, 0x45f

    aput v4, v0, v1

    const/16 v1, 0x460

    aput v3, v0, v1

    const/16 v1, 0x465

    .line 124
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x469

    aput v3, v0, v1

    const/16 v1, 0x46a

    aput v3, v0, v1

    const/16 v1, 0x46b

    aput v3, v0, v1

    const/16 v1, 0x46f

    .line 125
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x470

    aput v3, v0, v1

    const/16 v1, 0x474

    aput v3, v0, v1

    const/16 v1, 0x475

    aput v3, v0, v1

    const/16 v1, 0x476

    aput v3, v0, v1

    const/16 v1, 0x479

    .line 126
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x47a

    aput v3, v0, v1

    const/16 v1, 0x47b

    aput v6, v0, v1

    const/16 v1, 0x47f

    aput v3, v0, v1

    const/16 v1, 0x480

    aput v4, v0, v1

    const/16 v1, 0x481

    aput v3, v0, v1

    const/16 v1, 0x484

    .line 127
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x485

    aput v6, v0, v1

    const/16 v1, 0x48a

    aput v4, v0, v1

    const/16 v1, 0x48b

    aput v3, v0, v1

    const/16 v1, 0x48c

    aput v4, v0, v1

    const/16 v1, 0x48f

    .line 128
    aput v3, v0, v1

    const/16 v1, 0x490

    aput v7, v0, v1

    const/16 v1, 0x495

    aput v3, v0, v1

    const/16 v1, 0x496

    aput v4, v0, v1

    const/16 v1, 0x497

    aput v3, v0, v1

    const/16 v1, 0x49a

    .line 129
    aput v5, v0, v1

    const/16 v1, 0x49b

    aput v3, v0, v1

    const/16 v1, 0x49c

    aput v7, v0, v1

    const/16 v1, 0x4a0

    aput v3, v0, v1

    const/16 v1, 0x4a1

    aput v3, v0, v1

    const/16 v1, 0x4a2

    aput v3, v0, v1

    const/16 v1, 0x4a6

    .line 130
    aput v5, v0, v1

    const/16 v1, 0x4a7

    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4ac

    aput v3, v0, v1

    const/16 v1, 0x4ad

    aput v3, v0, v1

    const/16 v1, 0x4b2

    .line 131
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x4b6

    aput v3, v0, v1

    const/16 v1, 0x4b7

    aput v4, v0, v1

    const/16 v1, 0x4b8

    aput v3, v0, v1

    const/16 v1, 0x4bc

    .line 132
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4bd

    aput v3, v0, v1

    const/16 v1, 0x4c1

    aput v4, v0, v1

    const/16 v1, 0x4c2

    aput v3, v0, v1

    const/16 v1, 0x4c3

    aput v4, v0, v1

    const/16 v1, 0x4c6

    .line 133
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x4c7

    aput v3, v0, v1

    const/16 v1, 0x4c8

    aput v6, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    aput v4, v0, v1

    const/16 v1, 0x4ce

    aput v3, v0, v1

    const/16 v1, 0x4d1

    .line 134
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x4d2

    aput v6, v0, v1

    const/16 v1, 0x4d7

    aput v3, v0, v1

    const/16 v1, 0x4d8

    aput v3, v0, v1

    const/16 v1, 0x4d9

    aput v3, v0, v1

    const/16 v1, 0x4dc

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x4dd

    aput v7, v0, v1

    const/16 v1, 0x4e2

    aput v3, v0, v1

    const/16 v1, 0x4e3

    aput v3, v0, v1

    const/16 v1, 0x4e4

    aput v3, v0, v1

    const/16 v1, 0x4e7

    .line 136
    aput v5, v0, v1

    const/16 v1, 0x4e8

    aput v3, v0, v1

    const/16 v1, 0x4e9

    aput v7, v0, v1

    const/16 v1, 0x4ed

    aput v3, v0, v1

    const/16 v1, 0x4ee

    aput v4, v0, v1

    const/16 v1, 0x4ef

    aput v3, v0, v1

    const/16 v1, 0x4f3

    .line 137
    aput v5, v0, v1

    const/16 v1, 0x4f4

    aput v3, v0, v1

    const/16 v1, 0x4f8

    aput v4, v0, v1

    const/16 v1, 0x4f9

    aput v3, v0, v1

    const/16 v1, 0x4fa

    aput v4, v0, v1

    const/16 v1, 0x4ff

    .line 138
    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x503

    aput v3, v0, v1

    const/16 v1, 0x504

    aput v4, v0, v1

    const/16 v1, 0x505

    aput v3, v0, v1

    const/16 v1, 0x509

    .line 139
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x50a

    aput v3, v0, v1

    const/16 v1, 0x50e

    aput v3, v0, v1

    const/16 v1, 0x50f

    aput v3, v0, v1

    const/16 v1, 0x510

    aput v3, v0, v1

    const/16 v1, 0x513

    .line 140
    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x514

    aput v3, v0, v1

    const/16 v1, 0x515

    aput v6, v0, v1

    const/16 v1, 0x519

    aput v5, v0, v1

    const/16 v1, 0x51a

    aput v3, v0, v1

    const/16 v1, 0x51b

    aput v3, v0, v1

    const/16 v1, 0x51e

    .line 141
    const v2, 0x1000500

    aput v2, v0, v1

    const/16 v1, 0x51f

    aput v6, v0, v1

    const/16 v1, 0x525

    aput v5, v0, v1

    const/16 v1, 0x526

    aput v3, v0, v1

    const/16 v1, 0x529

    .line 142
    aput v3, v0, v1

    const/16 v1, 0x531

    aput v3, v0, v1

    const/16 v1, 0x534

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x53c

    aput v3, v0, v1

    const/16 v1, 0x53f

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x547

    aput v4, v0, v1

    const/16 v1, 0x54a

    .line 145
    aput v4, v0, v1

    const/16 v1, 0x552

    aput v4, v0, v1

    const/16 v1, 0x555

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x55d

    aput v4, v0, v1

    const/16 v1, 0x560

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x568

    aput v3, v0, v1

    const/16 v1, 0x56b

    .line 148
    aput v3, v0, v1

    const/16 v1, 0x573

    aput v3, v0, v1

    const/16 v1, 0x576

    .line 149
    aput v3, v0, v1

    const/16 v1, 0x57e

    aput v3, v0, v1

    const/16 v1, 0x581

    .line 150
    aput v4, v0, v1

    const/16 v1, 0x589

    aput v4, v0, v1

    const/16 v1, 0x58c

    .line 151
    aput v4, v0, v1

    const/16 v1, 0x594

    aput v4, v0, v1

    const/16 v1, 0x597

    .line 152
    aput v4, v0, v1

    const/16 v1, 0x59f

    aput v4, v0, v1

    const/16 v1, 0x5a2

    .line 153
    aput v3, v0, v1

    const/16 v1, 0x5aa

    aput v3, v0, v1

    const/16 v1, 0x5ad

    .line 154
    aput v3, v0, v1

    const/16 v1, 0x5ae

    aput v7, v0, v1

    const/16 v1, 0x5b1

    const v2, 0x10a0100

    aput v2, v0, v1

    const/16 v1, 0x5b4

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5b5

    aput v3, v0, v1

    const/16 v1, 0x5b8

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x5b9

    aput v3, v0, v1

    const/16 v1, 0x5ba

    aput v7, v0, v1

    const/16 v1, 0x5bc

    aput v3, v0, v1

    const/16 v1, 0x5be

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5bf

    aput v3, v0, v1

    const/16 v1, 0x5c0

    aput v3, v0, v1

    const/16 v1, 0x5c3

    .line 156
    aput v4, v0, v1

    const/16 v1, 0x5c4

    aput v5, v0, v1

    const/16 v1, 0x5c5

    aput v3, v0, v1

    const/16 v1, 0x5c6

    aput v7, v0, v1

    const/16 v1, 0x5c7

    aput v3, v0, v1

    const/16 v1, 0x5c8

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5c9

    aput v3, v0, v1

    const/16 v1, 0x5ca

    aput v6, v0, v1

    const/16 v1, 0x5cb

    aput v4, v0, v1

    const/16 v1, 0x5ce

    .line 157
    aput v4, v0, v1

    const/16 v1, 0x5d0

    aput v5, v0, v1

    const/16 v1, 0x5d1

    aput v3, v0, v1

    const/16 v1, 0x5d2

    aput v3, v0, v1

    const/16 v1, 0x5d3

    aput v3, v0, v1

    const/16 v1, 0x5d4

    aput v6, v0, v1

    const/16 v1, 0x5d6

    aput v4, v0, v1

    const/16 v1, 0x5d9

    .line 158
    aput v4, v0, v1

    const/16 v1, 0x5dc

    aput v5, v0, v1

    const/16 v1, 0x5dd

    aput v3, v0, v1

    const/16 v1, 0x5de

    aput v6, v0, v1

    const/16 v1, 0x5e1

    aput v4, v0, v1

    const/16 v1, 0x5e4

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x5e5

    aput v7, v0, v1

    const/16 v1, 0x5e8

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x5eb

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5ec

    aput v3, v0, v1

    const/16 v1, 0x5ef

    .line 160
    aput v5, v0, v1

    const/16 v1, 0x5f0

    aput v3, v0, v1

    const/16 v1, 0x5f1

    aput v7, v0, v1

    const/16 v1, 0x5f3

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x5f5

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x5f6

    aput v3, v0, v1

    const/16 v1, 0x5f7

    aput v6, v0, v1

    const/16 v1, 0x5fb

    .line 161
    aput v5, v0, v1

    const/16 v1, 0x5fc

    aput v3, v0, v1

    const/16 v1, 0x5fd

    aput v7, v0, v1

    const/16 v1, 0x5fe

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x5ff

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x600

    aput v3, v0, v1

    const/16 v1, 0x601

    aput v6, v0, v1

    const/16 v1, 0x607

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x608

    aput v3, v0, v1

    const/16 v1, 0x609

    aput v3, v0, v1

    const/16 v1, 0x60a

    aput v3, v0, v1

    const/16 v1, 0x60b

    aput v3, v0, v1

    const/16 v1, 0x610

    .line 163
    aput v7, v0, v1

    const/16 v1, 0x612

    aput v4, v0, v1

    const/16 v1, 0x613

    aput v5, v0, v1

    const/16 v1, 0x614

    aput v3, v0, v1

    const/16 v1, 0x615

    aput v6, v0, v1

    const/16 v1, 0x616

    aput v3, v0, v1

    const/16 v1, 0x618

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x61b

    .line 164
    aput v3, v0, v1

    const/16 v1, 0x61c

    aput v7, v0, v1

    const/16 v1, 0x61d

    aput v4, v0, v1

    const/16 v1, 0x61f

    aput v4, v0, v1

    const/16 v1, 0x621

    aput v4, v0, v1

    const/16 v1, 0x622

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x623

    aput v3, v0, v1

    const/16 v1, 0x626

    .line 165
    aput v5, v0, v1

    const/16 v1, 0x627

    aput v3, v0, v1

    const/16 v1, 0x628

    aput v4, v0, v1

    const/16 v1, 0x62a

    aput v4, v0, v1

    const/16 v1, 0x62c

    aput v4, v0, v1

    const/16 v1, 0x62d

    aput v3, v0, v1

    const/16 v1, 0x62e

    aput v6, v0, v1

    const/16 v1, 0x632

    .line 166
    aput v5, v0, v1

    const/16 v1, 0x633

    aput v3, v0, v1

    const/16 v1, 0x634

    aput v7, v0, v1

    const/16 v1, 0x635

    aput v4, v0, v1

    const/16 v1, 0x636

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x637

    aput v4, v0, v1

    const/16 v1, 0x638

    aput v6, v0, v1

    const/16 v1, 0x63e

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x63f

    aput v3, v0, v1

    const/16 v1, 0x640

    aput v3, v0, v1

    const/16 v1, 0x641

    aput v3, v0, v1

    const/16 v1, 0x642

    aput v3, v0, v1

    const/16 v1, 0x649

    .line 168
    aput v3, v0, v1

    const/16 v1, 0x64a

    aput v5, v0, v1

    const/16 v1, 0x64b

    aput v3, v0, v1

    const/16 v1, 0x64c

    aput v6, v0, v1

    const/16 v1, 0x64d

    aput v3, v0, v1

    const/16 v1, 0x652

    .line 169
    aput v7, v0, v1

    const/16 v1, 0x654

    aput v4, v0, v1

    const/16 v1, 0x656

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x658

    aput v4, v0, v1

    const/16 v1, 0x65a

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x65d

    .line 170
    aput v3, v0, v1

    const/16 v1, 0x65e

    aput v7, v0, v1

    const/16 v1, 0x65f

    aput v4, v0, v1

    const/16 v1, 0x661

    aput v4, v0, v1

    const/16 v1, 0x663

    aput v4, v0, v1

    const/16 v1, 0x664

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x665

    aput v3, v0, v1

    const/16 v1, 0x668

    .line 171
    aput v5, v0, v1

    const/16 v1, 0x669

    aput v3, v0, v1

    const/16 v1, 0x66a

    aput v4, v0, v1

    const/16 v1, 0x66c

    aput v4, v0, v1

    const/16 v1, 0x66e

    aput v4, v0, v1

    const/16 v1, 0x66f

    aput v3, v0, v1

    const/16 v1, 0x670

    aput v6, v0, v1

    const/16 v1, 0x674

    .line 172
    aput v5, v0, v1

    const/16 v1, 0x675

    aput v3, v0, v1

    const/16 v1, 0x676

    aput v7, v0, v1

    const/16 v1, 0x677

    aput v4, v0, v1

    const/16 v1, 0x678

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x679

    aput v3, v0, v1

    const/16 v1, 0x67a

    aput v6, v0, v1

    const/16 v1, 0x680

    .line 173
    aput v5, v0, v1

    const/16 v1, 0x681

    aput v3, v0, v1

    const/16 v1, 0x682

    aput v3, v0, v1

    const/16 v1, 0x683

    aput v3, v0, v1

    const/16 v1, 0x684

    aput v6, v0, v1

    const/16 v1, 0x68c

    .line 174
    aput v5, v0, v1

    const/16 v1, 0x68d

    aput v3, v0, v1

    const/16 v1, 0x68e

    aput v6, v0, v1

    const/16 v1, 0x694

    .line 175
    aput v7, v0, v1

    const/16 v1, 0x698

    const v2, 0x1000100

    aput v2, v0, v1

    const/16 v1, 0x69c

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x69f

    .line 176
    aput v3, v0, v1

    const/16 v1, 0x6a0

    aput v7, v0, v1

    const/16 v1, 0x6a3

    aput v4, v0, v1

    const/16 v1, 0x6a6

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x6a7

    aput v3, v0, v1

    const/16 v1, 0x6aa

    .line 177
    aput v5, v0, v1

    const/16 v1, 0x6ab

    aput v3, v0, v1

    const/16 v1, 0x6ac

    aput v7, v0, v1

    const/16 v1, 0x6ae

    aput v4, v0, v1

    const/16 v1, 0x6b0

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x6b1

    aput v3, v0, v1

    const/16 v1, 0x6b2

    aput v6, v0, v1

    const/16 v1, 0x6b6

    .line 178
    aput v5, v0, v1

    const/16 v1, 0x6b7

    aput v3, v0, v1

    const/16 v1, 0x6b8

    aput v7, v0, v1

    const/16 v1, 0x6b9

    aput v4, v0, v1

    const/16 v1, 0x6ba

    const v2, 0xd000800

    aput v2, v0, v1

    const/16 v1, 0x6bb

    aput v3, v0, v1

    const/16 v1, 0x6bc

    aput v6, v0, v1

    const/16 v1, 0x6c2

    .line 179
    aput v5, v0, v1

    const/16 v1, 0x6c3

    aput v3, v0, v1

    const/16 v1, 0x6c4

    aput v3, v0, v1

    const/16 v1, 0x6c5

    aput v3, v0, v1

    const/16 v1, 0x6c6

    aput v6, v0, v1

    const/16 v1, 0x6ce

    .line 180
    aput v5, v0, v1

    const/16 v1, 0x6cf

    aput v3, v0, v1

    const/16 v1, 0x6d0

    aput v6, v0, v1

    .line 21
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mTiles:[I

    .line 185
    const/16 v0, 0x4e

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 187
    const v2, 0x13010505

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 188
    const v2, 0x1301050a

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 189
    const v2, 0x3301030b

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 190
    const v2, 0x1301070b

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 191
    const v2, 0x13010510

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 192
    const v2, 0x1301031a

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 193
    const v2, 0x3301071a

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 194
    const v2, 0x33010121

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 195
    const v2, 0x33010921

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 196
    const v2, 0x2301092a

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 197
    const v2, 0x33010733

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 198
    const v2, 0x13010938

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 199
    const v2, 0x2301083e

    aput v2, v0, v1

    const/16 v1, 0xd

    .line 200
    const v2, 0x23010742

    aput v2, v0, v1

    const/16 v1, 0xe

    .line 201
    const v2, 0x40010645

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 202
    const v2, 0x40010752

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 203
    const v2, 0x4001055b

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 204
    const v2, 0x13010561

    aput v2, v0, v1

    const/16 v1, 0x12

    .line 205
    const v2, 0x3301056b

    aput v2, v0, v1

    const/16 v1, 0x13

    .line 206
    const v2, 0x13010575

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 207
    const v2, 0x3301057f

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 208
    const v2, 0x40010589

    aput v2, v0, v1

    const/16 v1, 0x16

    .line 211
    const v2, 0x4010304

    aput v2, v0, v1

    const/16 v1, 0x17

    .line 212
    const v2, 0x4010704

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 213
    const v2, 0x401020c

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 214
    const v2, 0x401090c

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 215
    const v2, 0x4010212

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 216
    const v2, 0x4010912

    aput v2, v0, v1

    const/16 v1, 0x1c

    .line 217
    const v2, 0x4010316

    aput v2, v0, v1

    const/16 v1, 0x1d

    .line 218
    const v2, 0x4010716

    aput v2, v0, v1

    const/16 v1, 0x1e

    .line 219
    const v2, 0x402051b

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 220
    const v2, 0x4010129

    aput v2, v0, v1

    const/16 v1, 0x20

    .line 221
    const v2, 0x401032d

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 222
    const v2, 0x4010130

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 223
    const v2, 0x4010334

    aput v2, v0, v1

    const/16 v1, 0x23

    .line 224
    const v2, 0x4010137

    aput v2, v0, v1

    const/16 v1, 0x24

    .line 225
    const v2, 0x401033b

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 226
    const v2, 0x401013e

    aput v2, v0, v1

    const/16 v1, 0x26

    .line 227
    const v2, 0x4010342

    aput v2, v0, v1

    const/16 v1, 0x27

    .line 228
    const v2, 0x4010145

    aput v2, v0, v1

    const/16 v1, 0x28

    .line 229
    const v2, 0x4010349

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 230
    const v2, 0x401014f

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 231
    const v2, 0x401034f

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 232
    const v2, 0x401072b

    aput v2, v0, v1

    const/16 v1, 0x2c

    .line 233
    const v2, 0x401092b

    aput v2, v0, v1

    const/16 v1, 0x2d

    .line 234
    const v2, 0x4010730

    aput v2, v0, v1

    const/16 v1, 0x2e

    .line 235
    const v2, 0x4010930

    aput v2, v0, v1

    const/16 v1, 0x2f

    .line 236
    const v2, 0x4010735

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 237
    const v2, 0x4010935

    aput v2, v0, v1

    const/16 v1, 0x31

    .line 238
    const v2, 0x401073a

    aput v2, v0, v1

    const/16 v1, 0x32

    .line 239
    const v2, 0x401093a

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 240
    const v2, 0x401073f

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 241
    const v2, 0x401093f

    aput v2, v0, v1

    const/16 v1, 0x35

    .line 242
    const v2, 0x4020542

    aput v2, v0, v1

    const/16 v1, 0x36

    .line 243
    const v2, 0x4020642

    aput v2, v0, v1

    const/16 v1, 0x37

    .line 244
    const v2, 0x4020843

    aput v2, v0, v1

    const/16 v1, 0x38

    .line 245
    const v2, 0x4020943

    aput v2, v0, v1

    const/16 v1, 0x39

    .line 246
    const v2, 0x4010549

    aput v2, v0, v1

    const/16 v1, 0x3a

    .line 247
    const v2, 0x4010749

    aput v2, v0, v1

    const/16 v1, 0x3b

    .line 248
    const v2, 0x401054e

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 249
    const v2, 0x401074e

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 250
    const v2, 0x4010553

    aput v2, v0, v1

    const/16 v1, 0x3e

    .line 251
    const v2, 0x4010753

    aput v2, v0, v1

    const/16 v1, 0x3f

    .line 252
    const v2, 0x4010558

    aput v2, v0, v1

    const/16 v1, 0x40

    .line 253
    const v2, 0x4010758

    aput v2, v0, v1

    const/16 v1, 0x41

    .line 254
    const v2, 0x4010464

    aput v2, v0, v1

    const/16 v1, 0x42

    .line 255
    const v2, 0x4010664

    aput v2, v0, v1

    const/16 v1, 0x43

    .line 256
    const v2, 0x401046e

    aput v2, v0, v1

    const/16 v1, 0x44

    .line 257
    const v2, 0x401066e

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 258
    const v2, 0x4010478

    aput v2, v0, v1

    const/16 v1, 0x46

    .line 259
    const v2, 0x4010678

    aput v2, v0, v1

    const/16 v1, 0x47

    .line 260
    const v2, 0x4010482

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 261
    const v2, 0x4010682

    aput v2, v0, v1

    const/16 v1, 0x49

    .line 262
    const v2, 0x401048c

    aput v2, v0, v1

    const/16 v1, 0x4a

    .line 263
    const v2, 0x401068c

    aput v2, v0, v1

    const/16 v1, 0x4b

    .line 264
    const v2, 0x63010253

    aput v2, v0, v1

    const/16 v1, 0x4c

    .line 265
    const v2, 0x63010597

    aput v2, v0, v1

    .line 185
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/levels/data/Levels05_07;->mObjects:[I

    .line 268
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
