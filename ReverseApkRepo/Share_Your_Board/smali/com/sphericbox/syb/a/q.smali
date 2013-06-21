.class public Lcom/sphericbox/syb/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)[I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    move v0, v4

    move v1, v4

    .line 78
    :cond_0
    aget v2, p0, v1

    add-int/2addr v0, v2

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-le v0, p1, :cond_0

    .line 81
    :cond_1
    sub-int v0, v1, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 84
    array-length v1, p0

    sub-int/2addr v1, v5

    move v2, v1

    move v1, v4

    .line 87
    :cond_2
    aget v3, p0, v2

    add-int/2addr v1, v3

    .line 88
    add-int/lit8 v2, v2, -0x1

    .line 89
    if-ltz v2, :cond_3

    if-le v1, p1, :cond_2

    .line 90
    :cond_3
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 92
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v4

    aput v1, v2, v5

    return-object v2
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sphericbox/syb/a/l;->width:I

    move v4, v0

    .line 16
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sphericbox/syb/a/l;->height:I

    move v5, v0

    .line 18
    mul-int v6, v4, v5

    div-int/lit8 v6, v6, 0x64

    .line 20
    const/16 v7, 0x100

    new-array v7, v7, [I

    .line 21
    const/16 v8, 0x100

    new-array v8, v8, [I

    .line 22
    const/16 v9, 0x100

    new-array v9, v9, [I

    .line 24
    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v11, v0

    if-ge v10, v11, :cond_0

    .line 25
    aget v11, p2, v10

    .line 26
    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    .line 27
    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 28
    and-int/lit16 v11, v11, 0xff

    .line 30
    aget v14, v7, v12

    add-int/lit8 v14, v14, 0x1

    aput v14, v7, v12

    .line 31
    aget v12, v8, v13

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v13

    .line 32
    aget v12, v9, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v9, v11

    .line 24
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v7, v6}, Lcom/sphericbox/syb/a/q;->a([II)[I

    move-result-object v7

    .line 36
    invoke-static {v8, v6}, Lcom/sphericbox/syb/a/q;->a([II)[I

    move-result-object v8

    .line 37
    invoke-static {v9, v6}, Lcom/sphericbox/syb/a/q;->a([II)[I

    move-result-object v6

    .line 39
    const/4 v9, 0x1

    aget v9, v7, v9

    const/4 v10, 0x0

    aget v10, v7, v10

    sub-int/2addr v9, v10

    .line 40
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, 0x0

    aget v11, v8, v11

    sub-int/2addr v10, v11

    .line 41
    const/4 v11, 0x1

    aget v11, v6, v11

    const/4 v12, 0x0

    aget v12, v6, v12

    sub-int/2addr v11, v12

    .line 43
    const/4 v12, 0x0

    .line 44
    const/4 v13, 0x0

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    :goto_1
    if-ge v12, v5, :cond_9

    .line 45
    const/4 v14, 0x0

    move/from16 v19, v14

    move v14, v13

    move/from16 v13, v19

    :goto_2
    if-ge v13, v4, :cond_7

    .line 46
    aget v15, p2, v14

    .line 47
    shr-int/lit8 v16, v15, 0x10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 48
    shr-int/lit8 v17, v15, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 49
    and-int/lit16 v15, v15, 0xff

    .line 51
    const/16 v18, 0x0

    aget v18, v7, v18

    sub-int v16, v16, v18

    .line 52
    const/16 v18, 0x0

    aget v18, v8, v18

    sub-int v17, v17, v18

    .line 53
    const/16 v18, 0x0

    aget v18, v6, v18

    sub-int v15, v15, v18

    .line 55
    if-gez v16, :cond_1

    const/16 v16, 0x0

    .line 56
    :goto_3
    if-gez v17, :cond_3

    const/16 v17, 0x0

    .line 57
    :goto_4
    if-gez v15, :cond_5

    const/4 v15, 0x0

    .line 59
    :goto_5
    or-int v16, v16, v17

    or-int v15, v15, v16

    aput v15, p2, v14

    .line 61
    add-int/lit8 v14, v14, 0x1

    .line 45
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 55
    :cond_1
    move/from16 v0, v16

    move v1, v9

    if-lt v0, v1, :cond_2

    const/high16 v16, 0xff

    goto :goto_3

    :cond_2
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    div-int v16, v16, v9

    shl-int/lit8 v16, v16, 0x10

    goto :goto_3

    .line 56
    :cond_3
    move/from16 v0, v17

    move v1, v10

    if-lt v0, v1, :cond_4

    const v17, 0xff00

    goto :goto_4

    :cond_4
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    div-int v17, v17, v10

    shl-int/lit8 v17, v17, 0x8

    goto :goto_4

    .line 57
    :cond_5
    if-lt v15, v11, :cond_6

    const/16 v15, 0xff

    goto :goto_5

    :cond_6
    mul-int/lit16 v15, v15, 0xff

    div-int/2addr v15, v11

    goto :goto_5

    .line 64
    :cond_7
    rem-int/lit8 v13, v12, 0x14

    if-nez v13, :cond_8

    const v13, 0x7f080019

    move-object/from16 v0, p1

    move v1, v13

    move v2, v12

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 65
    new-instance v4, Lcom/sphericbox/syb/a/f;

    invoke-direct {v4}, Lcom/sphericbox/syb/a/f;-><init>()V

    throw v4

    .line 44
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move v13, v14

    goto/16 :goto_1

    .line 69
    :cond_9
    return-void
.end method
