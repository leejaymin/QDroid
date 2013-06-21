.class public Lcom/gameboys/pocket7/PocketSeven;
.super Landroid/app/Activity;
.source "PocketSeven.java"


# static fields
.field public static final ANDMARKET:I = 0x3

.field public static final ANDMARKET_APPID:Ljava/lang/String; = "AMPK7L5000"

.field public static final APPID:Ljava/lang/String; = "AMPK7L5000"

.field public static final BUY_GIRL:I = 0x0

.field public static final MTYPE:I = 0x3

.field public static final OLLEH:I = 0x0

.field public static final OLLEH_APPID:Ljava/lang/String; = "8100F346"

.field public static final OZSTORE:I = 0x2

.field public static final OZSTORE_APPID:Ljava/lang/String; = "PK7L5000"

.field public static final TSTORE:I = 0x1

.field public static final TSTORE_APPID:Ljava/lang/String; = "OA00276949"

.field public static final VERSION:Ljava/lang/String; = "V 1.5"


# instance fields
.field mCanvas:Lcom/gameboys/pocket7/MainCanvas;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x6

    const/4 v2, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 60
    if-nez p1, :cond_3

    .line 62
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    if-eqz v1, :cond_1

    .line 66
    if-eqz p3, :cond_0

    .line 68
    const-string v1, "ADD_PRODUCT"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, product:I
    sparse-switch v0, :sswitch_data_0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    invoke-virtual {v1}, Lcom/gameboys/pocket7/MainCanvas;->Save()V

    .line 140
    .end local v0           #product:I
    :cond_0
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iput v7, v1, Lcom/gameboys/pocket7/MainCanvas;->EventReadyPage:I

    .line 152
    :cond_1
    :goto_1
    return-void

    .line 73
    .restart local v0       #product:I
    :sswitch_0
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 74
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 75
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 79
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 80
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 84
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 85
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto :goto_0

    .line 88
    :sswitch_3
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 89
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 90
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 93
    :sswitch_4
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 94
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 95
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 98
    :sswitch_5
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 99
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 100
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 103
    :sswitch_6
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 104
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 105
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 108
    :sswitch_7
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 109
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 110
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 113
    :sswitch_8
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 114
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 115
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 118
    :sswitch_9
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 119
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 120
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 123
    :sswitch_a
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 124
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 125
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 128
    :sswitch_b
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 129
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 130
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 133
    :sswitch_c
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v3, v3, Lcom/gameboys/pocket7/MainCanvas;->arrOpenCashBonus:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    .line 134
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget-object v2, v2, Lcom/gameboys/pocket7/MainCanvas;->Score_Have:[I

    iget-object v3, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v3, v3, Lcom/gameboys/pocket7/MainCanvas;->Point_have:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/gameboys/pocket7/MainCanvas;->ProcessScore([IIII)V

    .line 135
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iget v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->OpenGirlInfo:I

    goto/16 :goto_0

    .line 143
    .end local v0           #product:I
    :cond_2
    if-nez p2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    iput v2, v1, Lcom/gameboys/pocket7/MainCanvas;->EventReadyPage:I

    goto/16 :goto_1

    .line 150
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0xbb8 -> :sswitch_2
        0xfa0 -> :sswitch_3
        0x1194 -> :sswitch_4
        0x1388 -> :sswitch_5
        0x157c -> :sswitch_6
        0x1770 -> :sswitch_7
        0x1964 -> :sswitch_8
        0x1b58 -> :sswitch_9
        0x1d4c -> :sswitch_a
        0x1f40 -> :sswitch_b
        0x2134 -> :sswitch_c
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 30
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/PocketSeven;->setVolumeControlStream(I)V

    .line 31
    new-instance v0, Lcom/gameboys/pocket7/MainCanvas;

    invoke-direct {v0, p0}, Lcom/gameboys/pocket7/MainCanvas;-><init>(Lcom/gameboys/pocket7/PocketSeven;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    invoke-virtual {p0, v0}, Lcom/gameboys/pocket7/PocketSeven;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    iget-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/MainCanvas;->hideNotify()V

    .line 44
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/gameboys/pocket7/PocketSeven;->mCanvas:Lcom/gameboys/pocket7/MainCanvas;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/MainCanvas;->showNotify()V

    .line 55
    :cond_0
    return-void
.end method
