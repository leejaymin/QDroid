.class public Lcom/jellybus/fx_sub/StampControllView;
.super Landroid/view/View;
.source "StampControllView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jellybus/fx_sub/StampControllView$GestureListener;
    }
.end annotation


# static fields
.field public static but_center:I

.field public static stampList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jellybus/fx_sub/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field public static viewH:I

.field public static viewW:I


# instance fields
.field public bitmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private button:Landroid/graphics/Bitmap;

.field clearScale:[F

.field clearX:[F

.field clearY:[F

.field private final clear_stamp_handler:Landroid/os/Handler;

.field public drawFlag:Z

.field private final drawFlag_handler:Landroid/os/Handler;

.field public isButtonTouch:Z

.field public isMultiTouch:Z

.field private isRemove:Z

.field public isRightFirst:Z

.field private isStampLeft:Z

.field isStampLeft_clear:[Z

.field public isStampTouch:Z

.field public isViewSet:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Lcom/jellybus/fx_sub/StampControllView$GestureListener;

.field public mLinePaintSingleTouch:Landroid/graphics/Paint;

.field private removeScale:F

.field private removeX:F

.field private removeY:F

.field private final remove_stamp_handler:Landroid/os/Handler;

.field private selectedStamp:I

.field private stamp_idx:[Ljava/lang/Integer;

.field private startMultiX:F

.field private startMultiY:F

.field private text_idx:[Ljava/lang/Integer;

.field public trashX:F

.field public trashY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v3, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    .line 55
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/Integer;

    .line 56
    const v1, 0x7f0201d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 57
    const v1, 0x7f02015c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 58
    const v1, 0x7f020164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 59
    const v1, 0x7f02015a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 60
    const v1, 0x7f0201be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 61
    const v2, 0x7f0201c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 62
    const v2, 0x7f02018e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 63
    const v2, 0x7f020190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 64
    const v2, 0x7f020192

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 65
    const v2, 0x7f020194

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 66
    const v2, 0x7f020196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 67
    const v2, 0x7f020198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 68
    const v2, 0x7f02019a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 69
    const v2, 0x7f02019c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 70
    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 71
    const v2, 0x7f02018c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 72
    const v2, 0x7f0201c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 73
    const v2, 0x7f0201c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 74
    const v2, 0x7f0201cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 75
    const v2, 0x7f0201ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 76
    const v2, 0x7f0201ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 77
    const v2, 0x7f0201d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 78
    const v2, 0x7f0201d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 79
    const v2, 0x7f0201d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 80
    const v2, 0x7f020170

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 81
    const v2, 0x7f020172

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 82
    const v2, 0x7f020174

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 83
    const v2, 0x7f020176

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 84
    const v2, 0x7f020178

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 85
    const v2, 0x7f02017a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 86
    const v2, 0x7f02017c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 87
    const v2, 0x7f02017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 88
    const v2, 0x7f020180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 89
    const v2, 0x7f02016a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 90
    const v2, 0x7f02016c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 91
    const v2, 0x7f02016e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 92
    const v2, 0x7f0201e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 93
    const v2, 0x7f0201e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 94
    const v2, 0x7f0201e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 95
    const v2, 0x7f0201e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 96
    const v2, 0x7f0201ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 97
    const v2, 0x7f0201ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 98
    const v2, 0x7f0201ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 99
    const v2, 0x7f0201f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 100
    const v2, 0x7f020182

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 101
    const v2, 0x7f020158

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 102
    const v2, 0x7f020150

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 103
    const v2, 0x7f020168

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 104
    const v2, 0x7f0201bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 105
    const v2, 0x7f0201b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 106
    const v2, 0x7f0201b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 107
    const v2, 0x7f02015e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 108
    const v2, 0x7f0201dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 109
    const v2, 0x7f0201da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 110
    const v2, 0x7f0201d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 111
    const v2, 0x7f020166

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->stamp_idx:[Ljava/lang/Integer;

    .line 115
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/Integer;

    .line 116
    const v1, 0x7f020152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 117
    const v1, 0x7f020153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 118
    const v1, 0x7f0201c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 119
    const v1, 0x7f0201ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 120
    const v1, 0x7f0201a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 121
    const v2, 0x7f0201a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 122
    const v2, 0x7f0201a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 123
    const v2, 0x7f020184

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 124
    const v2, 0x7f0201f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 125
    const v2, 0x7f0201ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 126
    const v2, 0x7f0201b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 127
    const v2, 0x7f0201a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 128
    const v2, 0x7f020186

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 129
    const v2, 0x7f020160

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 130
    const v2, 0x7f020187

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 131
    const v2, 0x7f0201aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 132
    const v2, 0x7f0201ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 133
    const v2, 0x7f020156

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 134
    const v2, 0x7f020162

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 135
    const v2, 0x7f0201e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 136
    const v2, 0x7f0201de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 137
    const v2, 0x7f0201f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 138
    const v2, 0x7f0201b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 139
    const v2, 0x7f0201b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 140
    const v2, 0x7f0201c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 141
    const v2, 0x7f0201a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 142
    const v2, 0x7f02018a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->text_idx:[Ljava/lang/Integer;

    .line 396
    new-instance v0, Lcom/jellybus/fx_sub/StampControllView$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/StampControllView$1;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;

    .line 428
    new-instance v0, Lcom/jellybus/fx_sub/StampControllView$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/StampControllView$2;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    .line 471
    new-instance v0, Lcom/jellybus/fx_sub/StampControllView$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/StampControllView$3;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v6, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    .line 37
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    .line 46
    iput v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    .line 55
    const/16 v2, 0x38

    new-array v2, v2, [Ljava/lang/Integer;

    .line 56
    const v3, 0x7f0201d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 57
    const v3, 0x7f02015c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 58
    const v3, 0x7f020164

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 59
    const v3, 0x7f02015a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x4

    .line 60
    const v4, 0x7f0201be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 61
    const v4, 0x7f0201c0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 62
    const v4, 0x7f02018e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 63
    const v4, 0x7f020190

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 64
    const v4, 0x7f020192

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 65
    const v4, 0x7f020194

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 66
    const v4, 0x7f020196

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 67
    const v4, 0x7f020198

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 68
    const v4, 0x7f02019a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 69
    const v4, 0x7f02019c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 70
    const v4, 0x7f02019e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 71
    const v4, 0x7f02018c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    .line 72
    const v4, 0x7f0201c6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    .line 73
    const v4, 0x7f0201c8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    .line 74
    const v4, 0x7f0201cc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    .line 75
    const v4, 0x7f0201ca

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    .line 76
    const v4, 0x7f0201ce

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    .line 77
    const v4, 0x7f0201d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    .line 78
    const v4, 0x7f0201d2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x17

    .line 79
    const v4, 0x7f0201d4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    .line 80
    const v4, 0x7f020170

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x19

    .line 81
    const v4, 0x7f020172

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    .line 82
    const v4, 0x7f020174

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    .line 83
    const v4, 0x7f020176

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    .line 84
    const v4, 0x7f020178

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    .line 85
    const v4, 0x7f02017a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    .line 86
    const v4, 0x7f02017c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    .line 87
    const v4, 0x7f02017e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x20

    .line 88
    const v4, 0x7f020180

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x21

    .line 89
    const v4, 0x7f02016a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x22

    .line 90
    const v4, 0x7f02016c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x23

    .line 91
    const v4, 0x7f02016e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x24

    .line 92
    const v4, 0x7f0201e2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x25

    .line 93
    const v4, 0x7f0201e4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x26

    .line 94
    const v4, 0x7f0201e6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x27

    .line 95
    const v4, 0x7f0201e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x28

    .line 96
    const v4, 0x7f0201ea

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x29

    .line 97
    const v4, 0x7f0201ec

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    .line 98
    const v4, 0x7f0201ee

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    .line 99
    const v4, 0x7f0201f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    .line 100
    const v4, 0x7f020182

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    .line 101
    const v4, 0x7f020158

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    .line 102
    const v4, 0x7f020150

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    .line 103
    const v4, 0x7f020168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x30

    .line 104
    const v4, 0x7f0201bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x31

    .line 105
    const v4, 0x7f0201b8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x32

    .line 106
    const v4, 0x7f0201b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x33

    .line 107
    const v4, 0x7f02015e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x34

    .line 108
    const v4, 0x7f0201dc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x35

    .line 109
    const v4, 0x7f0201da

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x36

    .line 110
    const v4, 0x7f0201d8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x37

    .line 111
    const v4, 0x7f020166

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->stamp_idx:[Ljava/lang/Integer;

    .line 115
    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/Integer;

    .line 116
    const v3, 0x7f020152

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 117
    const v3, 0x7f020153

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 118
    const v3, 0x7f0201c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 119
    const v3, 0x7f0201ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x4

    .line 120
    const v4, 0x7f0201a4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 121
    const v4, 0x7f0201a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 122
    const v4, 0x7f0201a2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 123
    const v4, 0x7f020184

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 124
    const v4, 0x7f0201f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 125
    const v4, 0x7f0201ae

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 126
    const v4, 0x7f0201b2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 127
    const v4, 0x7f0201a8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 128
    const v4, 0x7f020186

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 129
    const v4, 0x7f020160

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 130
    const v4, 0x7f020187

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 131
    const v4, 0x7f0201aa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    .line 132
    const v4, 0x7f0201ac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    .line 133
    const v4, 0x7f020156

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    .line 134
    const v4, 0x7f020162

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    .line 135
    const v4, 0x7f0201e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    .line 136
    const v4, 0x7f0201de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    .line 137
    const v4, 0x7f0201f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    .line 138
    const v4, 0x7f0201b6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x17

    .line 139
    const v4, 0x7f0201b4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    .line 140
    const v4, 0x7f0201c4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x19

    .line 141
    const v4, 0x7f0201a6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    .line 142
    const v4, 0x7f02018a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->text_idx:[Ljava/lang/Integer;

    .line 396
    new-instance v2, Lcom/jellybus/fx_sub/StampControllView$1;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/StampControllView$1;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;

    .line 428
    new-instance v2, Lcom/jellybus/fx_sub/StampControllView$2;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/StampControllView$2;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    .line 471
    new-instance v2, Lcom/jellybus/fx_sub/StampControllView$3;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/StampControllView$3;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;

    .line 164
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 175
    new-instance v2, Lcom/jellybus/fx_sub/StampControllView$GestureListener;

    invoke-direct {v2, p0}, Lcom/jellybus/fx_sub/StampControllView$GestureListener;-><init>(Lcom/jellybus/fx_sub/StampControllView;)V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mGestureListener:Lcom/jellybus/fx_sub/StampControllView$GestureListener;

    .line 176
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView;->mGestureListener:Lcom/jellybus/fx_sub/StampControllView$GestureListener;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 178
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getWidth()I

    move-result v2

    sput v2, Lcom/jellybus/fx_sub/StampControllView;->viewW:I

    .line 179
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getHeight()I

    move-result v2

    sput v2, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    .line 182
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 183
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 184
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020146

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    .line 185
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    .line 188
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 189
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    .line 190
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v7, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 201
    .end local v0           #i:I
    :cond_2
    return-void

    .line 192
    .restart local v0       #i:I
    :cond_3
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-boolean v2, v2, Lcom/jellybus/fx_sub/Stamp;->isPhotoStamp:Z

    if-eqz v2, :cond_4

    .line 193
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 194
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->path:Ljava/lang/String;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_4
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    .line 197
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->stamp_index:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/StampControllView;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx_sub/StampControllView;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    return v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx_sub/StampControllView;)F
    .locals 1
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/jellybus/fx_sub/StampControllView;->removeX:F

    return v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx_sub/StampControllView;)F
    .locals 1
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/jellybus/fx_sub/StampControllView;->removeY:F

    return v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx_sub/StampControllView;)F
    .locals 1
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/jellybus/fx_sub/StampControllView;->removeScale:F

    return v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 396
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx_sub/StampControllView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx_sub/StampControllView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx_sub/StampControllView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx_sub/StampControllView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Lcom/jellybus/fx_sub/StampControllView;->touch_move(FF)V

    return-void
.end method

.method private multi_touch_move(Landroid/view/MotionEvent;)V
    .locals 20
    .parameter "event"

    .prologue
    .line 612
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 613
    .local v11, x0:F
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 614
    .local v12, x1:F
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 615
    .local v13, y0:F
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 616
    .local v14, y1:F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/jellybus/fx_sub/StampControllView;->isRightFirst:Z

    if-eqz v15, :cond_0

    .line 617
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 618
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 619
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 620
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 623
    :cond_0
    sub-float v15, v11, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v6, v15, v16

    .line 624
    .local v6, dx:F
    sub-float v15, v13, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v7, v15, v16

    .line 626
    .local v7, dy:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiX:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiY:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_1

    .line 627
    move-object/from16 v0, p0

    iput v6, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiX:F

    .line 628
    move-object/from16 v0, p0

    iput v7, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiY:F

    .line 630
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiX:F

    sub-float v8, v6, v15

    .line 631
    .local v8, moveX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiY:F

    sub-float v9, v7, v15

    .line 632
    .local v9, moveY:F
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jellybus/fx_sub/StampControllView;->touch_move(FF)V

    .line 634
    move-object/from16 v0, p0

    iput v6, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiX:F

    .line 635
    move-object/from16 v0, p0

    iput v7, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiY:F

    .line 639
    sub-float v15, v13, v14

    float-to-double v15, v15

    sub-float v17, v11, v12

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    double-to-float v10, v15

    .line 640
    .local v10, radian:F
    float-to-double v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    double-to-float v4, v15

    .line 642
    .local v4, degree:F
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->multiDegree:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_2

    .line 643
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iput v4, v15, Lcom/jellybus/fx_sub/Stamp;->multiDegree:F

    .line 645
    :cond_2
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    sget-object v16, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jellybus/fx_sub/Stamp;

    sget-object v17, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->startDegree:F

    move/from16 v18, v0

    sget-object v17, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->multiDegree:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    move/from16 v0, v17

    iput v0, v15, Lcom/jellybus/fx_sub/Stamp;->startAngle:F

    .line 651
    sub-float v15, v11, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 652
    sub-float v15, v13, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 653
    mul-float v15, v6, v6

    mul-float v16, v7, v7

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v5, v15

    .line 655
    .local v5, distance:F
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->multiScale:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-nez v15, :cond_3

    .line 656
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iput v5, v15, Lcom/jellybus/fx_sub/Stamp;->multiScale:F

    .line 658
    :cond_3
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    sget-object v16, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->startScale:F

    move/from16 v17, v0

    sget-object v16, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->multiScale:F

    move/from16 v16, v0

    div-float v16, v5, v16

    const/high16 v18, 0x3f80

    sub-float v16, v16, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    iput v0, v15, Lcom/jellybus/fx_sub/Stamp;->scale:F

    .line 673
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v16

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->scale:F

    mul-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v3, v15, v16

    .line 674
    .local v3, centerW:F
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v16

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->scale:F

    mul-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v2, v15, v16

    .line 675
    .local v2, centerH:F
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_4

    .line 676
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    sub-float/2addr v15, v3

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->left:F

    .line 677
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    add-float/2addr v15, v3

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->right:F

    .line 678
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    sub-float/2addr v15, v2

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->top:F

    .line 679
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    add-float/2addr v15, v2

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->bottom:F

    .line 686
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 687
    return-void

    .line 681
    :cond_4
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    add-float/2addr v15, v3

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->left:F

    .line 682
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    sub-float/2addr v15, v3

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->right:F

    .line 683
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    add-float/2addr v15, v2

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->top:F

    .line 684
    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v0, v15, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget-object v15, v15, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    sub-float/2addr v15, v2

    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0
.end method

.method private rotate_move(FF)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v12, 0x4000

    .line 561
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v7, p2

    float-to-double v8, v7

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v7, p1

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v6, v7

    .line 562
    .local v6, radian:F
    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v2, v7

    .line 564
    .local v2, degree:F
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    sget-object v8, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jellybus/fx_sub/Stamp;

    iget v8, v8, Lcom/jellybus/fx_sub/Stamp;->startAngle:F

    sub-float v8, v2, v8

    iput v8, v7, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    .line 567
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 568
    .local v4, dx:F
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 569
    .local v5, dy:F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 571
    .local v3, distance:F
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    sget-object v8, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jellybus/fx_sub/Stamp;

    iget v8, v8, Lcom/jellybus/fx_sub/Stamp;->startDistance:F

    div-float v8, v3, v8

    iput v8, v7, Lcom/jellybus/fx_sub/Stamp;->scale:F

    .line 574
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget v7, v7, Lcom/jellybus/fx_sub/Stamp;->scale:F

    mul-float/2addr v7, v8

    div-float v1, v7, v12

    .line 575
    .local v1, centerW:F
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v8

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget v7, v7, Lcom/jellybus/fx_sub/Stamp;->scale:F

    mul-float/2addr v7, v8

    div-float v0, v7, v12

    .line 576
    .local v0, centerH:F
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget v7, v7, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 577
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v7, v1

    iput v7, v8, Landroid/graphics/RectF;->left:F

    .line 578
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v1

    iput v7, v8, Landroid/graphics/RectF;->right:F

    .line 579
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v7, v0

    iput v7, v8, Landroid/graphics/RectF;->top:F

    .line 580
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    add-float/2addr v7, v0

    iput v7, v8, Landroid/graphics/RectF;->bottom:F

    .line 589
    :goto_0
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget v8, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v8, v8

    sub-float v8, p1, v8

    sget v9, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v9, v9

    sub-float v9, p2, v9

    sget v10, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    sget v11, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v11, v11

    add-float/2addr v11, p2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 591
    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 592
    return-void

    .line 582
    :cond_0
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v1

    iput v7, v8, Landroid/graphics/RectF;->left:F

    .line 583
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v7, v1

    iput v7, v8, Landroid/graphics/RectF;->right:F

    .line 584
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    add-float/2addr v7, v0

    iput v7, v8, Landroid/graphics/RectF;->top:F

    .line 585
    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v8, v7, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v7, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v9, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jellybus/fx_sub/Stamp;

    iget-object v7, v7, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v7, v0

    iput v7, v8, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0
.end method

.method private touch_move(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v9, 0x4000

    .line 596
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->curX:F

    add-float/2addr v3, p1

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    .line 597
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->curY:F

    add-float/2addr v3, p2

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    .line 599
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, v2, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v6, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    add-float/2addr v6, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v7, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    add-float/2addr v2, v7

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 600
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v1, v2, v9

    .line 601
    .local v1, size_width:F
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v0, v2, v9

    .line 602
    .local v0, size_height:F
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, v2, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v4, v2, v1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v5, v2, v0

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float v6, v2, v1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 604
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, v2, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v4, v2, p1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v5, v2, p2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float v6, v2, p1

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 605
    return-void
.end method


# virtual methods
.method public addStamp(IZ)V
    .locals 9
    .parameter "id"
    .parameter "isTextStamp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x3f333333

    .line 212
    if-eqz p2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/StampControllView;->text_idx:[Ljava/lang/Integer;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v1, v2

    .line 215
    .local v1, sizeW:I
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v0, v2

    .line 216
    .local v0, sizeH:I
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    new-instance v3, Lcom/jellybus/fx_sub/Stamp;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, v1, v0, v7}, Lcom/jellybus/fx_sub/Stamp;-><init>(IIIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->text_idx:[Ljava/lang/Integer;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->stamp_index:I

    .line 225
    :goto_0
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    .line 226
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iput-boolean p2, v2, Lcom/jellybus/fx_sub/Stamp;->isTextStamp:Z

    .line 227
    iput-boolean v8, p0, Lcom/jellybus/fx_sub/StampControllView;->isViewSet:Z

    .line 228
    iput-boolean v8, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    .line 229
    return-void

    .line 219
    .end local v0           #sizeH:I
    .end local v1           #sizeW:I
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/jellybus/fx_sub/StampControllView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/StampControllView;->stamp_idx:[Ljava/lang/Integer;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v1, v2

    .line 221
    .restart local v1       #sizeW:I
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v0, v2

    .line 222
    .restart local v0       #sizeH:I
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    new-instance v3, Lcom/jellybus/fx_sub/Stamp;

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, v1, v0, v7}, Lcom/jellybus/fx_sub/Stamp;-><init>(IIIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->stamp_idx:[Ljava/lang/Integer;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/jellybus/fx_sub/Stamp;->stamp_index:I

    goto/16 :goto_0
.end method

.method public clearAll()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 235
    sget-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    :cond_0
    return-void
.end method

.method public clearBitmap()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx_sub/StampControllView;->isViewSet:Z

    .line 242
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    :cond_0
    return-void
.end method

.method public clearStamp()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4130

    const/4 v6, 0x0

    .line 441
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 442
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearX:[F

    .line 443
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearY:[F

    .line 444
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearScale:[F

    .line 445
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft_clear:[Z

    .line 447
    iput-boolean v9, p0, Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z

    .line 448
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clear_stamp_handler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    .end local v2           #i:I
    :cond_0
    return-void

    .line 450
    .restart local v2       #i:I
    :cond_1
    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v3, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v3, v5

    sub-float v0, v4, v3

    .line 451
    .local v0, distanceX:F
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearX:[F

    div-float v4, v0, v7

    aput v4, v3, v2

    .line 452
    sget v3, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v4, v3

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v3, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v3, v5

    sub-float v1, v4, v3

    .line 453
    .local v1, distanceY:F
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearY:[F

    div-float v4, v1, v7

    aput v4, v3, v2

    .line 455
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearX:[F

    aget v3, v3, v2

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft_clear:[Z

    aput-boolean v9, v3, v2

    .line 461
    :goto_1
    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/high16 v4, 0x3f00

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->clearScale:[F

    aput v6, v3, v2

    .line 448
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v3, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft_clear:[Z

    aput-boolean v8, v3, v2

    goto :goto_1

    .line 464
    :cond_3
    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView;->clearScale:[F

    sget-object v3, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v3, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/high16 v5, 0x4180

    div-float/2addr v3, v5

    aput v3, v4, v2

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 519
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/StampControllView;->isViewSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 556
    .end local v0           #i:I
    :cond_0
    return-void

    .line 521
    .restart local v0       #i:I
    :cond_1
    iget-boolean v1, p0, Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z

    if-eqz v1, :cond_3

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 524
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v1, Lcom/jellybus/fx_sub/Stamp;->scale:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v1, Lcom/jellybus/fx_sub/Stamp;->scale:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v1, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v4, v1

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v1, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v1, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 526
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v1, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v1, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v3, v1

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v1, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v1, v4

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    float-to-int v3, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    float-to-int v4, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    add-float/2addr v2, v5

    float-to-int v5, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v6, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 528
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 520
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 531
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 534
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v1, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v1, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v3, v1

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v1, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v1, v4

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 537
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v1, Lcom/jellybus/fx_sub/Stamp;->scale:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v3, v1, Lcom/jellybus/fx_sub/Stamp;->scale:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v1, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v4, v1

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v1, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v1, v5

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 540
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    float-to-int v3, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    float-to-int v4, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v5, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    add-float/2addr v2, v5

    float-to-int v5, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v6, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 541
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->bitmapIdx:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    const/high16 v3, 0x4040

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget v1, v1, Lcom/jellybus/fx_sub/Stamp;->scale:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 544
    iget v1, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    if-eqz v1, :cond_4

    .line 545
    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 547
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 550
    iget v1, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    if-eqz v1, :cond_2

    .line 551
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sget-object v1, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Stamp;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/jellybus/fx_sub/StampControllView;->mLinePaintSingleTouch:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 206
    sput p1, Lcom/jellybus/fx_sub/StampControllView;->viewW:I

    .line 207
    sput p2, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    .line 208
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "event"

    .prologue
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 266
    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 268
    .local v13, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 359
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isButtonTouch:Z

    if-eqz v14, :cond_8

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/jellybus/fx_sub/StampControllView;->rotate_move(FF)V

    .line 367
    :cond_1
    :goto_1
    const/4 v14, 0x1

    return v14

    .line 271
    :sswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 272
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isButtonTouch:Z

    .line 273
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isStampTouch:Z

    .line 275
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    .line 277
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    iput v15, v14, Lcom/jellybus/fx_sub/Stamp;->startDegree:F

    .line 278
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->scale:F

    iput v15, v14, Lcom/jellybus/fx_sub/Stamp;->startScale:F

    .line 280
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    .line 281
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isRightFirst:Z

    goto :goto_0

    .line 285
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    .line 289
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, i:I
    :goto_2
    if-gez v7, :cond_3

    .line 314
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    goto/16 :goto_0

    .line 290
    :cond_3
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    sub-float v5, v14, v12

    .line 291
    .local v5, dx:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    sub-float v6, v14, v13

    .line 292
    .local v6, dy:F
    mul-float v14, v5, v5

    mul-float v15, v6, v6

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    .line 293
    .local v4, distance:F
    float-to-double v14, v6

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    neg-double v15, v14

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget v14, v14, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    float-to-double v0, v14

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    add-double v14, v15, v17

    double-to-float v8, v14

    .line 295
    .local v8, radian:F
    float-to-double v14, v4

    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v15, v14

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    add-float v9, v15, v14

    .line 296
    .local v9, rectX:F
    float-to-double v14, v4

    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v15, v14

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    add-float v10, v15, v14

    .line 298
    .local v10, rectY:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v14, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 299
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isStampTouch:Z

    .line 301
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jellybus/fx_sub/Stamp;

    .line 302
    .local v11, sort:Lcom/jellybus/fx_sub/Stamp;
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 303
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    goto/16 :goto_3

    .line 305
    .end local v11           #sort:Lcom/jellybus/fx_sub/Stamp;
    :cond_4
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    invoke-virtual {v14, v12, v13}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 306
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isButtonTouch:Z

    .line 308
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jellybus/fx_sub/Stamp;

    .line 309
    .restart local v11       #sort:Lcom/jellybus/fx_sub/Stamp;
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    goto/16 :goto_3

    .line 289
    .end local v11           #sort:Lcom/jellybus/fx_sub/Stamp;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 319
    .end local v4           #distance:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v7           #i:I
    .end local v8           #radian:F
    .end local v9           #rectX:F
    .end local v10           #rectY:F
    :sswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 320
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isStampTouch:Z

    .line 321
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiX:F

    .line 322
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/jellybus/fx_sub/StampControllView;->startMultiY:F

    .line 324
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    if-eqz v14, :cond_6

    .line 325
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float v14, v15, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 326
    .restart local v5       #dx:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float v14, v15, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 327
    .restart local v6       #dy:F
    mul-float v14, v5, v5

    mul-float v15, v6, v6

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    .line 328
    .restart local v4       #distance:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v14, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget v14, v14, Lcom/jellybus/fx_sub/Stamp;->basicDegree:F

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    double-to-float v8, v14

    .line 329
    .restart local v8       #radian:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    float-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v2, v14

    .line 330
    .local v2, centerX:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_size:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    float-to-double v14, v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    float-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v3, v14

    .line 332
    .local v3, centerY:F
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget v15, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v15, v15

    sub-float v15, v2, v15

    iput v15, v14, Landroid/graphics/RectF;->left:F

    .line 333
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget v15, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v15, v15

    sub-float v15, v3, v15

    iput v15, v14, Landroid/graphics/RectF;->top:F

    .line 334
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget v15, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v15, v15

    add-float/2addr v15, v2

    iput v15, v14, Landroid/graphics/RectF;->right:F

    .line 335
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    iget-object v14, v14, Lcom/jellybus/fx_sub/Stamp;->rect_but:Landroid/graphics/RectF;

    sget v15, Lcom/jellybus/fx_sub/StampControllView;->but_center:I

    int-to-float v15, v15

    add-float/2addr v15, v3

    iput v15, v14, Landroid/graphics/RectF;->bottom:F

    .line 337
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/jellybus/fx_sub/Stamp;

    iget v15, v15, Lcom/jellybus/fx_sub/Stamp;->basicDegree:F

    iput v15, v14, Lcom/jellybus/fx_sub/Stamp;->startAngle:F

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 340
    .end local v2           #centerX:F
    .end local v3           #centerY:F
    .end local v4           #distance:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v8           #radian:F
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    .line 341
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isRightFirst:Z

    .line 342
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    const/4 v15, 0x0

    iput v15, v14, Lcom/jellybus/fx_sub/Stamp;->multiDegree:F

    .line 343
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    const/4 v15, 0x0

    iput v15, v14, Lcom/jellybus/fx_sub/Stamp;->multiScale:F

    goto/16 :goto_0

    .line 347
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jellybus/fx_sub/StampControllView;->trashY:F

    cmpl-float v14, v13, v14

    if-lez v14, :cond_7

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx_sub/StampControllView;->removeStamp()V

    .line 351
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isButtonTouch:Z

    .line 352
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isStampTouch:Z

    .line 353
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    .line 354
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isRightFirst:Z

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag_handler:Landroid/os/Handler;

    const/4 v15, 0x0

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isStampTouch:Z

    if-eqz v14, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx_sub/StampControllView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 363
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jellybus/fx_sub/StampControllView;->isMultiTouch:Z

    if-eqz v14, :cond_1

    .line 364
    invoke-direct/range {p0 .. p1}, Lcom/jellybus/fx_sub/StampControllView;->multi_touch_move(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x105 -> :sswitch_0
        0x106 -> :sswitch_2
    .end sparse-switch
.end method

.method public removeButton()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->button:Landroid/graphics/Bitmap;

    .line 254
    :cond_0
    return-void
.end method

.method public removeStamp()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x4130

    const/4 v6, 0x0

    .line 373
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 374
    iput-boolean v9, p0, Lcom/jellybus/fx_sub/StampControllView;->isRemove:Z

    .line 376
    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v2, Lcom/jellybus/fx_sub/Stamp;->curX:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterX:F

    add-float/2addr v2, v4

    sub-float v0, v3, v2

    .line 377
    .local v0, distanceX:F
    div-float v2, v0, v7

    iput v2, p0, Lcom/jellybus/fx_sub/StampControllView;->removeX:F

    .line 378
    sget v2, Lcom/jellybus/fx_sub/StampControllView;->viewH:I

    int-to-float v3, v2

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v4, v2, Lcom/jellybus/fx_sub/Stamp;->curY:F

    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->bmCenterY:F

    add-float/2addr v2, v4

    sub-float v1, v3, v2

    .line 379
    .local v1, distanceY:F
    div-float v2, v1, v7

    iput v2, p0, Lcom/jellybus/fx_sub/StampControllView;->removeY:F

    .line 381
    iget v2, p0, Lcom/jellybus/fx_sub/StampControllView;->removeX:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 382
    iput-boolean v9, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft:Z

    .line 387
    :goto_0
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/high16 v3, 0x3f00

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 388
    iput v6, p0, Lcom/jellybus/fx_sub/StampControllView;->removeScale:F

    .line 392
    :goto_1
    iget-object v2, p0, Lcom/jellybus/fx_sub/StampControllView;->remove_stamp_handler:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 394
    .end local v0           #distanceX:F
    .end local v1           #distanceY:F
    :cond_0
    return-void

    .line 384
    .restart local v0       #distanceX:F
    .restart local v1       #distanceY:F
    :cond_1
    iput-boolean v8, p0, Lcom/jellybus/fx_sub/StampControllView;->isStampLeft:Z

    goto :goto_0

    .line 390
    :cond_2
    sget-object v2, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/jellybus/fx_sub/StampControllView;->selectedStamp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Stamp;

    iget v2, v2, Lcom/jellybus/fx_sub/Stamp;->scale:F

    const/high16 v3, 0x4180

    div-float/2addr v2, v3

    iput v2, p0, Lcom/jellybus/fx_sub/StampControllView;->removeScale:F

    goto :goto_1
.end method

.method public setValueNull()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    sput-object v0, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    .line 258
    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->bitmap:Ljava/util/ArrayList;

    .line 259
    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->stamp_idx:[Ljava/lang/Integer;

    .line 260
    iput-object v0, p0, Lcom/jellybus/fx_sub/StampControllView;->text_idx:[Ljava/lang/Integer;

    .line 261
    return-void
.end method
