.class public Lcom/wolfram/android/alpha/Resources_modified;
.super Landroid/content/res/Resources;
.source "Resources_modified.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field public res_modified:Lcom/wolfram/android/alpha/Resources_modified;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "com.wolfram.android.alpha.Resources_modified"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/Resources_modified;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 26
    return-void
.end method

.method public static getXmlKeyboardId(I)I
    .locals 1
    .parameter "xmlResID"

    .prologue
    .line 512
    packed-switch p0, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    :pswitch_0
    return p0

    .line 514
    :pswitch_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const p0, 0x7f050006

    goto :goto_0

    .line 519
    :pswitch_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const p0, 0x7f050008

    goto :goto_0

    .line 524
    :pswitch_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const p0, 0x7f05000a

    goto :goto_0

    .line 529
    :pswitch_4
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const p0, 0x7f05000c

    goto :goto_0

    .line 534
    :pswitch_5
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const p0, 0x7f05000e

    goto :goto_0

    .line 539
    :pswitch_6
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const p0, 0x7f050010

    goto :goto_0

    .line 544
    :pswitch_7
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const p0, 0x7f050012

    goto :goto_0

    .line 549
    :pswitch_8
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const p0, 0x7f050014

    goto :goto_0

    .line 554
    :pswitch_9
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const p0, 0x7f050018

    goto :goto_0

    .line 559
    :pswitch_a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const p0, 0x7f05001a

    goto/16 :goto_0

    .line 564
    :pswitch_b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const p0, 0x7f05001c

    goto/16 :goto_0

    .line 569
    :pswitch_c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const p0, 0x7f05001e

    goto/16 :goto_0

    .line 574
    :pswitch_d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const p0, 0x7f050020

    goto/16 :goto_0

    .line 579
    :pswitch_e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const p0, 0x7f050022

    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x7f050005
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getDimension(I)F
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 593
    packed-switch p1, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0

    .line 595
    :pswitch_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const p1, 0x7f0702a2

    goto :goto_0

    .line 600
    :pswitch_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const p1, 0x7f0702a3

    goto :goto_0

    .line 605
    :pswitch_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const p1, 0x7f0702a4

    goto :goto_0

    .line 610
    :pswitch_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const p1, 0x7f0702a5

    goto :goto_0

    .line 615
    :pswitch_4
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const p1, 0x7f0702a6

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x7f07029d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"

    .prologue
    .line 35
    sparse-switch p1, :sswitch_data_0

    .line 501
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0

    .line 39
    :sswitch_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const p1, 0x7f030001

    goto :goto_0

    .line 44
    :sswitch_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const p1, 0x7f030003

    goto :goto_0

    .line 49
    :sswitch_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const p1, 0x7f030005

    goto :goto_0

    .line 54
    :sswitch_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const p1, 0x7f030007

    goto :goto_0

    .line 59
    :sswitch_4
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const p1, 0x7f03000b

    goto :goto_0

    .line 64
    :sswitch_5
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const p1, 0x7f03000d

    goto :goto_0

    .line 69
    :sswitch_6
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const p1, 0x7f030010

    goto :goto_0

    .line 75
    :sswitch_7
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const p1, 0x7f030011

    goto :goto_0

    .line 80
    :sswitch_8
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const p1, 0x7f030013

    goto/16 :goto_0

    .line 85
    :sswitch_9
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const p1, 0x7f030015

    goto/16 :goto_0

    .line 90
    :sswitch_a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const p1, 0x7f030017

    goto/16 :goto_0

    .line 95
    :sswitch_b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const p1, 0x7f030019

    goto/16 :goto_0

    .line 100
    :sswitch_c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const p1, 0x7f03001b

    goto/16 :goto_0

    .line 105
    :sswitch_d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const p1, 0x7f03001d

    goto/16 :goto_0

    .line 110
    :sswitch_e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const p1, 0x7f03001f

    goto/16 :goto_0

    .line 116
    :sswitch_f
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const p1, 0x7f030021

    goto/16 :goto_0

    .line 121
    :sswitch_10
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const p1, 0x7f030023

    goto/16 :goto_0

    .line 126
    :sswitch_11
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const p1, 0x7f030025

    goto/16 :goto_0

    .line 131
    :sswitch_12
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const p1, 0x7f030027

    goto/16 :goto_0

    .line 136
    :sswitch_13
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const p1, 0x7f030029

    goto/16 :goto_0

    .line 141
    :sswitch_14
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const p1, 0x7f03002b

    goto/16 :goto_0

    .line 146
    :sswitch_15
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const p1, 0x7f03002d

    goto/16 :goto_0

    .line 151
    :sswitch_16
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const p1, 0x7f03002f

    goto/16 :goto_0

    .line 156
    :sswitch_17
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const p1, 0x7f030031

    goto/16 :goto_0

    .line 161
    :sswitch_18
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const p1, 0x7f030034

    goto/16 :goto_0

    .line 166
    :sswitch_19
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const p1, 0x7f030036

    goto/16 :goto_0

    .line 171
    :sswitch_1a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const p1, 0x7f030038

    goto/16 :goto_0

    .line 176
    :sswitch_1b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const p1, 0x7f03003a

    goto/16 :goto_0

    .line 181
    :sswitch_1c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const p1, 0x7f03003c

    goto/16 :goto_0

    .line 186
    :sswitch_1d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const p1, 0x7f03003d

    goto/16 :goto_0

    .line 192
    :sswitch_1e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const p1, 0x7f03003f

    goto/16 :goto_0

    .line 197
    :sswitch_1f
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const p1, 0x7f030041

    goto/16 :goto_0

    .line 202
    :sswitch_20
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const p1, 0x7f030043

    goto/16 :goto_0

    .line 207
    :sswitch_21
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const p1, 0x7f030046

    goto/16 :goto_0

    .line 212
    :sswitch_22
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const p1, 0x7f030047

    goto/16 :goto_0

    .line 217
    :sswitch_23
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const p1, 0x7f030049

    goto/16 :goto_0

    .line 222
    :sswitch_24
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const p1, 0x7f03004b

    goto/16 :goto_0

    .line 227
    :sswitch_25
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const p1, 0x7f03004d

    goto/16 :goto_0

    .line 232
    :sswitch_26
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const p1, 0x7f03004f

    goto/16 :goto_0

    .line 237
    :sswitch_27
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const p1, 0x7f030051

    goto/16 :goto_0

    .line 242
    :sswitch_28
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const p1, 0x7f030053

    goto/16 :goto_0

    .line 247
    :sswitch_29
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const p1, 0x7f030055

    goto/16 :goto_0

    .line 252
    :sswitch_2a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const p1, 0x7f030057

    goto/16 :goto_0

    .line 257
    :sswitch_2b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const p1, 0x7f030059

    goto/16 :goto_0

    .line 262
    :sswitch_2c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const p1, 0x7f03005b

    goto/16 :goto_0

    .line 267
    :sswitch_2d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const p1, 0x7f03005f

    goto/16 :goto_0

    .line 272
    :sswitch_2e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const p1, 0x7f030061

    goto/16 :goto_0

    .line 277
    :sswitch_2f
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const p1, 0x7f030063

    goto/16 :goto_0

    .line 282
    :sswitch_30
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const p1, 0x7f030066

    goto/16 :goto_0

    .line 287
    :sswitch_31
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const p1, 0x7f03006b

    goto/16 :goto_0

    .line 292
    :sswitch_32
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const p1, 0x7f030068

    goto/16 :goto_0

    .line 297
    :sswitch_33
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const p1, 0x7f03006a

    goto/16 :goto_0

    .line 302
    :sswitch_34
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const p1, 0x7f03006d

    goto/16 :goto_0

    .line 307
    :sswitch_35
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const p1, 0x7f03006f

    goto/16 :goto_0

    .line 312
    :sswitch_36
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const p1, 0x7f030070

    goto/16 :goto_0

    .line 317
    :sswitch_37
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const p1, 0x7f030071

    goto/16 :goto_0

    .line 322
    :sswitch_38
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const p1, 0x7f030073

    goto/16 :goto_0

    .line 327
    :sswitch_39
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const p1, 0x7f030075

    goto/16 :goto_0

    .line 332
    :sswitch_3a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const p1, 0x7f030077

    goto/16 :goto_0

    .line 337
    :sswitch_3b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const p1, 0x7f030079

    goto/16 :goto_0

    .line 342
    :sswitch_3c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const p1, 0x7f03007b

    goto/16 :goto_0

    .line 347
    :sswitch_3d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const p1, 0x7f03007b

    goto/16 :goto_0

    .line 352
    :sswitch_3e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const p1, 0x7f03007f

    goto/16 :goto_0

    .line 357
    :sswitch_3f
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const p1, 0x7f030081

    goto/16 :goto_0

    .line 362
    :sswitch_40
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const p1, 0x7f030083

    goto/16 :goto_0

    .line 367
    :sswitch_41
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const p1, 0x7f030086

    goto/16 :goto_0

    .line 372
    :sswitch_42
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const p1, 0x7f030087

    goto/16 :goto_0

    .line 377
    :sswitch_43
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const p1, 0x7f030089

    goto/16 :goto_0

    .line 382
    :sswitch_44
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const p1, 0x7f03008b

    goto/16 :goto_0

    .line 387
    :sswitch_45
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const p1, 0x7f03008d

    goto/16 :goto_0

    .line 392
    :sswitch_46
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const p1, 0x7f03008f

    goto/16 :goto_0

    .line 397
    :sswitch_47
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const p1, 0x7f030091

    goto/16 :goto_0

    .line 402
    :sswitch_48
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const p1, 0x7f030093

    goto/16 :goto_0

    .line 407
    :sswitch_49
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const p1, 0x7f030095

    goto/16 :goto_0

    .line 412
    :sswitch_4a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const p1, 0x7f030097

    goto/16 :goto_0

    .line 417
    :sswitch_4b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const p1, 0x7f030095

    goto/16 :goto_0

    .line 422
    :sswitch_4c
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const p1, 0x7f03009d

    goto/16 :goto_0

    .line 427
    :sswitch_4d
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const p1, 0x7f03009b

    goto/16 :goto_0

    .line 432
    :sswitch_4e
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const p1, 0x7f03009f

    goto/16 :goto_0

    .line 437
    :sswitch_4f
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const p1, 0x7f0300a1

    goto/16 :goto_0

    .line 442
    :sswitch_50
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const p1, 0x7f0300a3

    goto/16 :goto_0

    .line 447
    :sswitch_51
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const p1, 0x7f0300a5

    goto/16 :goto_0

    .line 452
    :sswitch_52
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const p1, 0x7f0300a7

    goto/16 :goto_0

    .line 457
    :sswitch_53
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const p1, 0x7f0300a9

    goto/16 :goto_0

    .line 462
    :sswitch_54
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const p1, 0x7f0300ab

    goto/16 :goto_0

    .line 467
    :sswitch_55
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const p1, 0x7f0300ad

    goto/16 :goto_0

    .line 472
    :sswitch_56
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    const p1, 0x7f0300af

    goto/16 :goto_0

    .line 477
    :sswitch_57
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const p1, 0x7f0300b1

    goto/16 :goto_0

    .line 482
    :sswitch_58
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const p1, 0x7f0300b3

    goto/16 :goto_0

    .line 487
    :sswitch_59
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const p1, 0x7f0300b5

    goto/16 :goto_0

    .line 494
    :sswitch_5a
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const p1, 0x7f050004

    goto/16 :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f030000 -> :sswitch_0
        0x7f030002 -> :sswitch_1
        0x7f030004 -> :sswitch_2
        0x7f030006 -> :sswitch_3
        0x7f03000a -> :sswitch_4
        0x7f03000c -> :sswitch_5
        0x7f03000e -> :sswitch_6
        0x7f030011 -> :sswitch_7
        0x7f030012 -> :sswitch_8
        0x7f030014 -> :sswitch_9
        0x7f030016 -> :sswitch_a
        0x7f030018 -> :sswitch_b
        0x7f03001a -> :sswitch_c
        0x7f03001c -> :sswitch_d
        0x7f03001e -> :sswitch_e
        0x7f030020 -> :sswitch_f
        0x7f030022 -> :sswitch_10
        0x7f030024 -> :sswitch_11
        0x7f030026 -> :sswitch_12
        0x7f030028 -> :sswitch_13
        0x7f03002a -> :sswitch_14
        0x7f03002c -> :sswitch_15
        0x7f03002e -> :sswitch_16
        0x7f030030 -> :sswitch_17
        0x7f030033 -> :sswitch_18
        0x7f030035 -> :sswitch_19
        0x7f030037 -> :sswitch_1a
        0x7f030039 -> :sswitch_1b
        0x7f03003b -> :sswitch_1c
        0x7f03003d -> :sswitch_1d
        0x7f03003e -> :sswitch_1e
        0x7f030040 -> :sswitch_1f
        0x7f030042 -> :sswitch_20
        0x7f030044 -> :sswitch_22
        0x7f030045 -> :sswitch_21
        0x7f030048 -> :sswitch_23
        0x7f03004a -> :sswitch_24
        0x7f03004c -> :sswitch_25
        0x7f03004e -> :sswitch_26
        0x7f030050 -> :sswitch_27
        0x7f030052 -> :sswitch_28
        0x7f030054 -> :sswitch_29
        0x7f030056 -> :sswitch_2a
        0x7f030058 -> :sswitch_2b
        0x7f03005a -> :sswitch_2c
        0x7f03005d -> :sswitch_2d
        0x7f030060 -> :sswitch_2e
        0x7f030062 -> :sswitch_2f
        0x7f030064 -> :sswitch_31
        0x7f030065 -> :sswitch_30
        0x7f030067 -> :sswitch_32
        0x7f030069 -> :sswitch_33
        0x7f03006c -> :sswitch_34
        0x7f03006e -> :sswitch_35
        0x7f030070 -> :sswitch_36
        0x7f030071 -> :sswitch_37
        0x7f030072 -> :sswitch_38
        0x7f030074 -> :sswitch_39
        0x7f030076 -> :sswitch_3a
        0x7f030078 -> :sswitch_3b
        0x7f03007a -> :sswitch_3c
        0x7f03007c -> :sswitch_3d
        0x7f03007e -> :sswitch_3e
        0x7f030080 -> :sswitch_3f
        0x7f030082 -> :sswitch_40
        0x7f030084 -> :sswitch_42
        0x7f030085 -> :sswitch_41
        0x7f030088 -> :sswitch_43
        0x7f03008a -> :sswitch_44
        0x7f03008c -> :sswitch_45
        0x7f03008e -> :sswitch_46
        0x7f030090 -> :sswitch_47
        0x7f030092 -> :sswitch_48
        0x7f030094 -> :sswitch_49
        0x7f030096 -> :sswitch_4a
        0x7f030098 -> :sswitch_4b
        0x7f03009a -> :sswitch_4c
        0x7f03009b -> :sswitch_4d
        0x7f03009e -> :sswitch_4e
        0x7f0300a0 -> :sswitch_4f
        0x7f0300a2 -> :sswitch_50
        0x7f0300a4 -> :sswitch_51
        0x7f0300a6 -> :sswitch_52
        0x7f0300a8 -> :sswitch_53
        0x7f0300aa -> :sswitch_54
        0x7f0300ac -> :sswitch_55
        0x7f0300ae -> :sswitch_56
        0x7f0300b0 -> :sswitch_57
        0x7f0300b2 -> :sswitch_58
        0x7f0300b4 -> :sswitch_59
        0x7f050003 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method
