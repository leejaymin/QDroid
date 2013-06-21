.class public Lcom/jellybus/fx_sub/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field public final Blur:S

.field public final ChannelSwap:S

.field public final ColorDodge:S

.field public final Colorize:S

.field public final ConBright:S

.field public final Curve:S

.field public final Exclusion:S

.field public final Gray:S

.field public final GrayChannel:S

.field public final HDR:S

.field public final HalfSkyGround:S

.field public final HighPass:S

.field public final Histogram:S

.field public final HueSat:S

.field public final Invert:S

.field public final MakeUp:S

.field public final Miniature:S

.field public final Outfocus:S

.field public final Overlay_RGB:S

.field public final Overlay_Self:S

.field public final Overlay_Texture:S

.field public final Screen_RGB:S

.field public final Screen_Texture:S

.field public final Selective:S

.field public final Tint:S

.field public final Vignetting:S

.field public final WB:S

.field private auto_end:I

.field private auto_start:I

.field public endY:I

.field private filterCurve:Lcom/jellybus/fx_sub/FilterCurveIndex;

.field public filterID:I

.field public filterName:Ljava/lang/String;

.field private function:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public groupName:Ljava/lang/String;

.field public height:I

.field private inner:F

.field public isFavorites:Z

.field public needTexture:Z

.field private outter:F

.field public startY:I

.field public width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;)V
    .locals 3
    .parameter "groupName"
    .parameter "filterName"
    .parameter "filterID"
    .parameter "startY"
    .parameter "endY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, function:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/jellybus/fx_sub/FilterCurveIndex;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/FilterCurveIndex;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx_sub/Filter;->filterCurve:Lcom/jellybus/fx_sub/FilterCurveIndex;

    .line 26
    iput-short v1, p0, Lcom/jellybus/fx_sub/Filter;->Gray:S

    .line 27
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->WB:S

    .line 28
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Tint:S

    .line 29
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->ConBright:S

    .line 30
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->HueSat:S

    .line 31
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Selective:S

    .line 32
    const/4 v0, 0x6

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Histogram:S

    .line 33
    const/4 v0, 0x7

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Curve:S

    .line 34
    const/16 v0, 0x8

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Vignetting:S

    .line 35
    const/16 v0, 0x9

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Blur:S

    .line 36
    const/16 v0, 0xa

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Outfocus:S

    .line 37
    const/16 v0, 0xb

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Miniature:S

    .line 38
    const/16 v0, 0xc

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->HighPass:S

    .line 39
    const/16 v0, 0xd

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->HDR:S

    .line 40
    const/16 v0, 0xe

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->ColorDodge:S

    .line 41
    const/16 v0, 0xf

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Invert:S

    .line 42
    const/16 v0, 0x10

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Exclusion:S

    .line 43
    const/16 v0, 0x11

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Colorize:S

    .line 44
    const/16 v0, 0x12

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Overlay_Texture:S

    .line 45
    const/16 v0, 0x13

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Overlay_RGB:S

    .line 46
    const/16 v0, 0x14

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Overlay_Self:S

    .line 47
    const/16 v0, 0x15

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Screen_Texture:S

    .line 48
    const/16 v0, 0x16

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->Screen_RGB:S

    .line 49
    const/16 v0, 0x17

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->MakeUp:S

    .line 50
    const/16 v0, 0x18

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->HalfSkyGround:S

    .line 51
    const/16 v0, 0x19

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->ChannelSwap:S

    .line 52
    const/16 v0, 0x1a

    iput-short v0, p0, Lcom/jellybus/fx_sub/Filter;->GrayChannel:S

    .line 54
    iput v1, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iput v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 55
    iput v2, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    iput v2, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    .line 61
    iput-object p1, p0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcom/jellybus/fx_sub/Filter;->filterID:I

    .line 64
    iput-boolean v1, p0, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 65
    iput p4, p0, Lcom/jellybus/fx_sub/Filter;->startY:I

    .line 66
    iput p5, p0, Lcom/jellybus/fx_sub/Filter;->endY:I

    .line 68
    iput-object p6, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    .line 69
    return-void
.end method

.method private getAutoIndex()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    .line 236
    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v3, v4}, Lcom/jellybus/fx/Juliet;->histogramGraph(II)[I

    move-result-object v1

    .line 239
    .local v1, index:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 245
    :goto_1
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, j:I
    :goto_2
    if-gez v2, :cond_2

    .line 251
    :goto_3
    return-void

    .line 240
    .end local v2           #j:I
    :cond_0
    aget v3, v1, v0

    if-le v3, v5, :cond_1

    .line 241
    add-int/lit8 v3, v0, 0xa

    iput v3, p0, Lcom/jellybus/fx_sub/Filter;->auto_start:I

    goto :goto_1

    .line 239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .restart local v2       #j:I
    :cond_2
    aget v3, v1, v2

    if-le v3, v5, :cond_3

    .line 247
    iput v2, p0, Lcom/jellybus/fx_sub/Filter;->auto_end:I

    goto :goto_3

    .line 245
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method


# virtual methods
.method public process()V
    .locals 11

    .prologue
    .line 77
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v10, v0, :cond_0

    .line 233
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 80
    :pswitch_1
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setGrayScaleAllIndex(II)V

    goto :goto_1

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setWhiteBalanceAllIndex(FII)V

    goto :goto_1

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setTintAllIndex(FII)V

    goto :goto_1

    .line 89
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v0, v2, v3}, Lcom/jellybus/fx/Juliet;->setContrastBrightnessAllIndex(IFII)V

    goto :goto_1

    .line 92
    :pswitch_5
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v0, v2, v3}, Lcom/jellybus/fx/Juliet;->setHueSaturationAllIndex(FFII)V

    goto/16 :goto_1

    .line 95
    :pswitch_6
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 96
    const v0, 0x3f666666

    const/high16 v1, 0x3f00

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setSelectiveColorAllIndex(FFII)V

    goto/16 :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 98
    const v0, 0x3ea3d70a

    const v1, 0x3ecccccd

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setSelectiveColorAllIndex(FFII)V

    goto/16 :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 100
    const v0, 0x3f19999a

    const v1, 0x3ed70a3d

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setSelectiveColorAllIndex(FFII)V

    goto/16 :goto_1

    .line 104
    :pswitch_7
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/jellybus/fx_sub/Filter;->getAutoIndex()V

    .line 106
    const/16 v0, 0x32

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->auto_start:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->auto_end:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setHistogramWithPercentAllIndex(IIIII)V

    goto/16 :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/jellybus/fx/Juliet;->setHistogramWithPercentAllIndex(IIIII)V

    goto/16 :goto_1

    .line 112
    :pswitch_8
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->filterCurve:Lcom/jellybus/fx_sub/FilterCurveIndex;

    iget-object v1, p0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/FilterCurveIndex;->setFilterCurve(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->filterCurve:Lcom/jellybus/fx_sub/FilterCurveIndex;

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/FilterCurveIndex;->process(II)V

    .line 114
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->filterCurve:Lcom/jellybus/fx_sub/FilterCurveIndex;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/FilterCurveIndex;->reset()V

    goto/16 :goto_1

    .line 117
    :pswitch_9
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setVignettingWithAlphaAllIndex(FII)V

    goto/16 :goto_1

    .line 120
    :pswitch_a
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurFilter(FII)V

    goto/16 :goto_1

    .line 123
    :pswitch_b
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 124
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 125
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    .line 126
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    .line 131
    :goto_2
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 132
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 133
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 134
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    invoke-static/range {v0 .. v5}, Lcom/jellybus/fx/Juliet;->setOutfocusMaskAllIndex(IIIIFF)V

    .line 142
    :cond_5
    :goto_3
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 128
    :cond_6
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    .line 129
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    goto :goto_2

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 136
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    invoke-static/range {v0 .. v5}, Lcom/jellybus/fx/Juliet;->setOutfocusMaskAllIndex(IIIIFF)V

    goto :goto_3

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 138
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 139
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 140
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    invoke-static/range {v0 .. v5}, Lcom/jellybus/fx/Juliet;->setOutfocusMaskAllIndex(IIIIFF)V

    goto :goto_3

    .line 145
    :pswitch_c
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 146
    sget v0, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 147
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    .line 148
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    .line 153
    :goto_4
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    .line 154
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 155
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 156
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    .line 174
    :cond_9
    :goto_5
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 150
    :cond_a
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->inner:F

    .line 151
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->outter:F

    goto :goto_4

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 158
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    goto :goto_5

    .line 159
    :cond_c
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 160
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 161
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 162
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    goto :goto_5

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 164
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 165
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 166
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/high16 v6, 0x42b4

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    goto/16 :goto_5

    .line 167
    :cond_e
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 168
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/high16 v6, 0x42b4

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    goto/16 :goto_5

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 170
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    .line 171
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    .line 172
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->x:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->y:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    div-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    const/high16 v6, 0x42b4

    invoke-static/range {v0 .. v6}, Lcom/jellybus/fx/Juliet;->setMiniatureMaskAllIndex(IIIIFFF)V

    goto/16 :goto_5

    .line 177
    :pswitch_d
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 178
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setHighPassAllIndex(II)V

    .line 179
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setOverlayAllIndex(II)V

    .line 180
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 183
    :pswitch_e
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 184
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setNewHDR(II)V

    .line 185
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setOverlayAllIndex(II)V

    .line 186
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 189
    :pswitch_f
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 190
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setColorDodgeBlurIndex(II)V

    .line 191
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 194
    :pswitch_10
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setInvertIndex(II)V

    goto/16 :goto_1

    .line 197
    :pswitch_11
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/jellybus/fx/Juliet;->setExclusionIndex(IIIII)V

    goto/16 :goto_1

    .line 200
    :pswitch_12
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setColorizeIndex(FII)V

    goto/16 :goto_1

    .line 203
    :pswitch_13
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setOverlayAllIndex(II)V

    goto/16 :goto_1

    .line 206
    :pswitch_14
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/jellybus/fx/Juliet;->setOverlayRGB(IIIII)V

    goto/16 :goto_1

    .line 209
    :pswitch_15
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setOverlaySelf(II)V

    goto/16 :goto_1

    .line 215
    :pswitch_16
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v4, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/jellybus/fx/Juliet;->setScreenRGB(IIIII)V

    goto/16 :goto_1

    .line 218
    :pswitch_17
    const/high16 v0, 0x40e0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setStackBlurAllIndex(FII)V

    .line 219
    iget v0, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setScreenAllIndex(II)V

    .line 220
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeStackBlur()V

    goto/16 :goto_1

    .line 223
    :pswitch_18
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v8, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v9, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static/range {v0 .. v9}, Lcom/jellybus/fx/Juliet;->setHalfAllIndex(IIIIIIFFII)V

    goto/16 :goto_1

    .line 226
    :pswitch_19
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setChannelSwap(III)V

    goto/16 :goto_1

    .line 229
    :pswitch_1a
    iget-object v0, p0, Lcom/jellybus/fx_sub/Filter;->function:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    iget v2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setGrayChannelAllIndex(III)V

    goto/16 :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    iput p1, p0, Lcom/jellybus/fx_sub/Filter;->width:I

    .line 73
    iput p2, p0, Lcom/jellybus/fx_sub/Filter;->height:I

    .line 74
    return-void
.end method
