.class public final Lcom/sphericbox/syb/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aX:[I

.field private final bt:I

.field private final bu:I

.field private bv:I

.field private bw:I

.field private final height:I

.field private length:I

.field private final width:I


# direct methods
.method constructor <init>([ILcom/sphericbox/syb/a/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x3c1374bc

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sphericbox/syb/a/x;->aX:[I

    .line 32
    iget v0, p2, Lcom/sphericbox/syb/a/l;->width:I

    iput v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    .line 33
    iget v0, p2, Lcom/sphericbox/syb/a/l;->height:I

    iput v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    .line 34
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    iget v1, p0, Lcom/sphericbox/syb/a/x;->height:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sphericbox/syb/a/x;->length:I

    .line 35
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sphericbox/syb/a/x;->bt:I

    .line 36
    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/sphericbox/syb/a/m;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sphericbox/syb/a/x;->bu:I

    .line 37
    return-void
.end method

.method private a(IIIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    move/from16 v0, p3

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    const/4 v4, 0x1

    .line 62
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    const/4 v5, 0x1

    .line 64
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bt:I

    move v6, v0

    mul-int/2addr v6, v4

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bu:I

    move v7, v0

    mul-int/2addr v7, v5

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->width:I

    move v8, v0

    mul-int/2addr v8, v5

    sub-int v9, p3, p1

    sub-int/2addr v8, v9

    .line 71
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->width:I

    move v9, v0

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->width:I

    move v7, v0

    mul-int v7, v7, p2

    add-int v7, v7, p1

    .line 75
    add-int v9, v7, v6

    .line 77
    add-int/2addr v6, v9

    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->length:I

    move v10, v0

    add-int/2addr v10, v7

    move v11, v7

    move v7, v10

    move v10, v9

    move v9, v6

    move/from16 v6, p2

    .line 81
    :goto_2
    move v0, v6

    move/from16 v1, p4

    if-eq v0, v1, :cond_6

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move/from16 v7, p1

    .line 82
    :goto_3
    move v0, v7

    move/from16 v1, p3

    if-eq v0, v1, :cond_4

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/x;->aX:[I

    move-object v13, v0

    aget v13, v13, v12

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/x;->aX:[I

    move-object v14, v0

    aget v14, v14, v11

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/x;->aX:[I

    move-object v15, v0

    aget v15, v15, v10

    .line 87
    const/16 v16, 0x28

    move v0, v13

    move v1, v14

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/sphericbox/syb/a/x;->b(III)Z

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0x28

    invoke-static {v13, v15, v14}, Lcom/sphericbox/syb/a/x;->b(III)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 88
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/x;->aX:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->length:I

    move v14, v0

    add-int/2addr v14, v12

    const/4 v15, -0x1

    aput v15, v13, v14

    .line 93
    :goto_4
    add-int/2addr v12, v4

    .line 94
    add-int/2addr v11, v4

    .line 95
    add-int/2addr v10, v4

    .line 96
    add-int/2addr v9, v4

    .line 82
    add-int/2addr v7, v4

    goto :goto_3

    .line 61
    :cond_1
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 62
    :cond_2
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 90
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/x;->aX:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->length:I

    move v14, v0

    add-int/2addr v14, v12

    const/high16 v15, -0x100

    aput v15, v13, v14

    goto :goto_4

    .line 99
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bv:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sphericbox/syb/a/x;->bv:I

    .line 100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bv:I

    move v7, v0

    rem-int/lit8 v7, v7, 0x14

    if-nez v7, :cond_5

    const v7, 0x7f08001a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bv:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/x;->bw:I

    move v14, v0

    move-object/from16 v0, p5

    move v1, v7

    move v2, v13

    move v3, v14

    invoke-interface {v0, v1, v2, v3}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    new-instance v4, Lcom/sphericbox/syb/a/f;

    invoke-direct {v4}, Lcom/sphericbox/syb/a/f;-><init>()V

    throw v4

    .line 104
    :cond_5
    add-int v7, v12, v8

    .line 105
    add-int/2addr v11, v8

    .line 106
    add-int/2addr v10, v8

    .line 107
    add-int/2addr v9, v8

    .line 81
    add-int/2addr v6, v5

    move/from16 v17, v9

    move v9, v10

    move v10, v11

    move v11, v7

    move/from16 v7, v17

    goto/16 :goto_2

    .line 109
    :cond_6
    return-void
.end method

.method private static b(III)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/sphericbox/syb/a/m;->abs(I)I

    move-result v0

    .line 115
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/sphericbox/syb/a/m;->abs(I)I

    move-result v1

    .line 116
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Lcom/sphericbox/syb/a/m;->abs(I)I

    move-result v2

    .line 118
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    if-ge v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    .locals 12
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int v11, v0, v1

    .line 41
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v3, v0, 0x1

    .line 42
    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int v9, v0, v1

    .line 43
    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sphericbox/syb/a/x;->bv:I

    .line 46
    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sphericbox/syb/a/x;->bw:I

    .line 48
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sphericbox/syb/a/x;->a(IIIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 49
    const/4 v6, 0x0

    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    const/4 v1, 0x1

    sub-int v7, v0, v1

    move-object v5, p0

    move v8, v3

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/sphericbox/syb/a/x;->a(IIIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 50
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v11

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sphericbox/syb/a/x;->a(IIIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 51
    iget v0, p0, Lcom/sphericbox/syb/a/x;->width:I

    const/4 v1, 0x1

    sub-int v6, v0, v1

    iget v0, p0, Lcom/sphericbox/syb/a/x;->height:I

    const/4 v1, 0x1

    sub-int v7, v0, v1

    move-object v5, p0

    move v8, v11

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/sphericbox/syb/a/x;->a(IIIILcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 53
    iget-object v0, p0, Lcom/sphericbox/syb/a/x;->aX:[I

    iget v1, p0, Lcom/sphericbox/syb/a/x;->length:I

    iget-object v2, p0, Lcom/sphericbox/syb/a/x;->aX:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/sphericbox/syb/a/x;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-void
.end method
