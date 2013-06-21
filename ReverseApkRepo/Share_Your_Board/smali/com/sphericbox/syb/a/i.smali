.class public final Lcom/sphericbox/syb/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/a/h;


# instance fields
.field private final ai:Lcom/sphericbox/syb/a/o;

.field private final aj:I


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/a/o;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    .line 22
    iput p2, p0, Lcom/sphericbox/syb/a/i;->aj:I

    .line 23
    return-void
.end method

.method private static a(Lcom/sphericbox/syb/a/e;IIII)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xff

    .line 176
    iget v0, p0, Lcom/sphericbox/syb/a/e;->F:I

    .line 178
    iget v1, p0, Lcom/sphericbox/syb/a/e;->D:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/sphericbox/syb/a/e;->B:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    iget v2, p0, Lcom/sphericbox/syb/a/e;->E:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sphericbox/syb/a/e;->D:I

    mul-int/2addr v2, p3

    iget v3, p0, Lcom/sphericbox/syb/a/e;->B:I

    mul-int/2addr v3, p4

    add-int/2addr v2, v3

    div-int/2addr v2, v0

    iget v3, p0, Lcom/sphericbox/syb/a/e;->C:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 181
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    if-le v0, v4, :cond_0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;[I[ILcom/sphericbox/syb/a/l;)V
    .locals 52
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sphericbox/syb/a/l;->width:I

    move v5, v0

    .line 30
    move-object/from16 v0, p4

    iget v0, v0, Lcom/sphericbox/syb/a/l;->height:I

    move v6, v0

    .line 31
    mul-int/2addr v6, v5

    .line 33
    new-instance v7, Lcom/sphericbox/syb/a/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v8, v0

    iget-object v8, v8, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v8, v8, Lcom/sphericbox/syb/a/n;->x:I

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v9, v0

    iget-object v9, v9, Lcom/sphericbox/syb/a/o;->aG:Lcom/sphericbox/syb/a/n;

    iget v9, v9, Lcom/sphericbox/syb/a/n;->y:I

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 34
    new-instance v8, Lcom/sphericbox/syb/a/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v9, v0

    iget-object v9, v9, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v9, v9, Lcom/sphericbox/syb/a/n;->x:I

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v10, v0

    iget-object v10, v10, Lcom/sphericbox/syb/a/o;->aE:Lcom/sphericbox/syb/a/n;

    iget v10, v10, Lcom/sphericbox/syb/a/n;->y:I

    add-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 35
    new-instance v9, Lcom/sphericbox/syb/a/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v10, v0

    iget-object v10, v10, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v10, v10, Lcom/sphericbox/syb/a/n;->x:I

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v11, v0

    iget-object v11, v11, Lcom/sphericbox/syb/a/o;->aH:Lcom/sphericbox/syb/a/n;

    iget v11, v11, Lcom/sphericbox/syb/a/n;->y:I

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    invoke-direct {v9, v10, v11}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 36
    new-instance v10, Lcom/sphericbox/syb/a/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v11, v0

    iget-object v11, v11, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v11, v11, Lcom/sphericbox/syb/a/n;->x:I

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sphericbox/syb/a/i;->ai:Lcom/sphericbox/syb/a/o;

    move-object v12, v0

    iget-object v12, v12, Lcom/sphericbox/syb/a/o;->aF:Lcom/sphericbox/syb/a/n;

    iget v12, v12, Lcom/sphericbox/syb/a/n;->y:I

    add-int/lit8 v12, v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/sphericbox/syb/a/n;-><init>(II)V

    .line 38
    iget v11, v7, Lcom/sphericbox/syb/a/n;->x:I

    iget v12, v9, Lcom/sphericbox/syb/a/n;->x:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v7, Lcom/sphericbox/syb/a/n;->y:I

    iget v13, v9, Lcom/sphericbox/syb/a/n;->y:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    .line 39
    iget v12, v8, Lcom/sphericbox/syb/a/n;->x:I

    iget v13, v10, Lcom/sphericbox/syb/a/n;->x:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v8, Lcom/sphericbox/syb/a/n;->y:I

    iget v14, v10, Lcom/sphericbox/syb/a/n;->y:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 40
    iget v13, v7, Lcom/sphericbox/syb/a/n;->x:I

    iget v14, v8, Lcom/sphericbox/syb/a/n;->x:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    iget v14, v7, Lcom/sphericbox/syb/a/n;->y:I

    iget v15, v8, Lcom/sphericbox/syb/a/n;->y:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v13, v14

    .line 41
    iget v14, v9, Lcom/sphericbox/syb/a/n;->x:I

    iget v15, v10, Lcom/sphericbox/syb/a/n;->x:I

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v9, Lcom/sphericbox/syb/a/n;->y:I

    move-object v0, v10

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    .line 43
    add-int/2addr v12, v11

    int-to-float v12, v12

    add-int/2addr v13, v14

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 46
    int-to-float v13, v11

    div-float/2addr v13, v12

    float-to-int v13, v13

    .line 48
    mul-int v14, v11, v13

    if-le v14, v6, :cond_b

    .line 49
    float-to-double v13, v12

    const-wide v15, 0x3feccccccccccccdL

    mul-double/2addr v13, v15

    int-to-double v15, v6

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-int v11, v13

    .line 50
    int-to-float v13, v11

    div-float v12, v13, v12

    float-to-int v12, v12

    move/from16 v46, v12

    move v12, v11

    move/from16 v11, v46

    .line 53
    :goto_0
    new-instance v13, Lcom/sphericbox/syb/a/e;

    invoke-direct {v13}, Lcom/sphericbox/syb/a/e;-><init>()V

    .line 54
    mul-int v14, v11, v12

    .line 57
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sphericbox/syb/a/i;->aj:I

    move v15, v0

    move-object/from16 v0, p3

    move v1, v15

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 58
    iget v15, v8, Lcom/sphericbox/syb/a/n;->x:I

    move-object v0, v10

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object v0, v9

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object v0, v7

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    .line 59
    move-object v0, v10

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    mul-int v16, v16, v11

    .line 60
    move-object v0, v7

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v17, v0

    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    mul-int v17, v17, v12

    .line 61
    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->x:I

    move/from16 v18, v0

    mul-int v18, v18, v12

    mul-int v18, v18, v11

    .line 62
    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v19, v0

    move-object v0, v7

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    iget v9, v9, Lcom/sphericbox/syb/a/n;->y:I

    add-int v9, v9, v19

    move-object v0, v10

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v19, v0

    sub-int v9, v9, v19

    .line 63
    iget v7, v7, Lcom/sphericbox/syb/a/n;->y:I

    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v19, v0

    sub-int v7, v7, v19

    mul-int/2addr v7, v12

    .line 64
    iget v10, v10, Lcom/sphericbox/syb/a/n;->y:I

    move-object v0, v8

    iget v0, v0, Lcom/sphericbox/syb/a/n;->y:I

    move/from16 v19, v0

    sub-int v10, v10, v19

    mul-int/2addr v10, v11

    .line 65
    iget v8, v8, Lcom/sphericbox/syb/a/n;->y:I

    mul-int/2addr v8, v11

    mul-int/2addr v8, v12

    .line 66
    sub-int v16, v16, v15

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 67
    sub-int/2addr v10, v9

    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 68
    sub-int v10, v18, v17

    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 69
    sub-int/2addr v8, v7

    move v0, v8

    int-to-long v0, v0

    move-wide/from16 v25, v0

    .line 71
    const/4 v8, 0x0

    move-wide/from16 v46, v25

    move-wide/from16 v48, v23

    move-wide/from16 v24, v19

    move-wide/from16 v18, v46

    move-wide/from16 v50, v21

    move-wide/from16 v22, v50

    move-wide/from16 v20, v48

    :goto_1
    if-ge v8, v11, :cond_8

    .line 72
    mul-int v10, v8, v12

    .line 75
    move v0, v15

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    .line 76
    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v22, v22, v26

    .line 77
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    .line 78
    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v18, v18, v26

    .line 80
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v26, v24, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v16, v0

    .line 81
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v26, v22, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    .line 82
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v27, v0

    rem-long v27, v24, v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    .line 83
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v28, v0

    rem-long v28, v22, v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    .line 84
    if-gez v16, :cond_a

    if-eqz v27, :cond_a

    .line 85
    add-int/lit8 v16, v16, 0x1

    .line 86
    sub-int v27, v27, v14

    move/from16 v46, v27

    move/from16 v27, v16

    move/from16 v16, v46

    .line 88
    :goto_2
    if-gez v26, :cond_9

    if-eqz v28, :cond_9

    .line 89
    add-int/lit8 v26, v26, 0x1

    .line 90
    sub-int v28, v28, v6

    move/from16 v46, v28

    move/from16 v28, v26

    move/from16 v26, v46

    .line 93
    :goto_3
    mul-int v28, v28, v5

    add-int v28, v28, v27

    .line 94
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v29, v0

    rem-long v29, v20, v29

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v31, v0

    sub-long v29, v29, v31

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    .line 95
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v30, v0

    rem-long v30, v18, v30

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    .line 96
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v31, v0

    div-long v31, v20, v31

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v33, v0

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    .line 97
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v32, v0

    div-long v32, v18, v32

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v32, v32, v34

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v34, v0

    div-long v34, v20, v34

    add-long v32, v32, v34

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    .line 98
    const/16 v33, 0x0

    move/from16 v46, v33

    move/from16 v33, v10

    move/from16 v10, v46

    move/from16 v47, v31

    move/from16 v31, v30

    move/from16 v30, v47

    move/from16 v48, v29

    move/from16 v29, v32

    move/from16 v32, v48

    :goto_4
    if-ge v10, v12, :cond_6

    .line 99
    add-int v32, v32, v16

    .line 100
    add-int v31, v31, v26

    .line 101
    add-int v30, v30, v27

    .line 102
    add-int v29, v29, v28

    .line 103
    const-wide/16 v34, 0x0

    cmp-long v34, v24, v34

    if-lez v34, :cond_3

    .line 104
    move/from16 v0, v32

    move v1, v14

    if-lt v0, v1, :cond_0

    .line 105
    sub-int v32, v32, v14

    .line 106
    add-int/lit8 v30, v30, 0x1

    .line 107
    add-int/lit8 v29, v29, 0x1

    .line 116
    :cond_0
    :goto_5
    const-wide/16 v34, 0x0

    cmp-long v34, v22, v34

    if-lez v34, :cond_4

    .line 117
    move/from16 v0, v31

    move v1, v14

    if-le v0, v1, :cond_1

    .line 118
    sub-int v31, v31, v14

    .line 119
    add-int v29, v29, v5

    .line 128
    :cond_1
    :goto_6
    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_2

    if-gez v30, :cond_5

    .line 98
    :cond_2
    :goto_7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 110
    :cond_3
    if-gez v32, :cond_0

    .line 111
    add-int v32, v32, v14

    .line 112
    add-int/lit8 v30, v30, -0x1

    .line 113
    add-int/lit8 v29, v29, -0x1

    goto :goto_5

    .line 122
    :cond_4
    if-gez v31, :cond_1

    .line 123
    add-int v31, v31, v14

    .line 124
    sub-int v29, v29, v5

    goto :goto_6

    .line 131
    :cond_5
    move-object v0, v13

    move/from16 v1, v32

    move/from16 v2, v31

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/sphericbox/syb/a/e;->a(III)V

    .line 134
    add-int/lit8 v34, v29, 0x1

    .line 135
    add-int v35, v29, v5

    .line 136
    add-int/lit8 v36, v35, 0x1

    .line 138
    if-ltz v29, :cond_2

    move/from16 v0, v36

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 140
    aget v37, p2, v29

    shr-int/lit8 v37, v37, 0x10

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    .line 141
    aget v38, p2, v29

    shr-int/lit8 v38, v38, 0x8

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0xff

    move/from16 v38, v0

    .line 142
    aget v39, p2, v29

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    .line 144
    aget v40, p2, v34

    shr-int/lit8 v40, v40, 0x10

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v40, v0

    .line 145
    aget v41, p2, v34

    shr-int/lit8 v41, v41, 0x8

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0xff

    move/from16 v41, v0

    .line 146
    aget v34, p2, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    .line 148
    aget v42, p2, v35

    shr-int/lit8 v42, v42, 0x10

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    .line 149
    aget v43, p2, v35

    shr-int/lit8 v43, v43, 0x8

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    .line 150
    aget v35, p2, v35

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    .line 152
    aget v44, p2, v36

    shr-int/lit8 v44, v44, 0x10

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff

    move/from16 v44, v0

    .line 153
    aget v45, p2, v36

    shr-int/lit8 v45, v45, 0x8

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    .line 154
    aget v36, p2, v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    .line 156
    move-object v0, v13

    move/from16 v1, v37

    move/from16 v2, v40

    move/from16 v3, v42

    move/from16 v4, v44

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sphericbox/syb/a/i;->a(Lcom/sphericbox/syb/a/e;IIII)I

    move-result v37

    .line 157
    move-object v0, v13

    move/from16 v1, v38

    move/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sphericbox/syb/a/i;->a(Lcom/sphericbox/syb/a/e;IIII)I

    move-result v38

    .line 158
    move-object v0, v13

    move/from16 v1, v39

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sphericbox/syb/a/i;->a(Lcom/sphericbox/syb/a/e;IIII)I

    move-result v34

    .line 160
    shl-int/lit8 v35, v37, 0x10

    shl-int/lit8 v36, v38, 0x8

    or-int v35, v35, v36

    or-int v34, v34, v35

    aput v34, p3, v33

    goto/16 :goto_7

    .line 164
    :cond_6
    rem-int/lit8 v10, v8, 0x14

    if-nez v10, :cond_7

    const v10, 0x7f08001b

    move-object/from16 v0, p1

    move v1, v10

    move v2, v8

    move v3, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback;->progress(III)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 165
    new-instance v5, Lcom/sphericbox/syb/a/f;

    invoke-direct {v5}, Lcom/sphericbox/syb/a/f;-><init>()V

    throw v5

    .line 71
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 169
    :cond_8
    move-object/from16 v0, p4

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/a/l;->setWidth(I)V

    .line 170
    move-object/from16 v0, p4

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/a/l;->setHeight(I)V

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, p2

    move v3, v6

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    return-void

    :cond_9
    move/from16 v46, v28

    move/from16 v28, v26

    move/from16 v26, v46

    goto/16 :goto_3

    :cond_a
    move/from16 v46, v27

    move/from16 v27, v16

    move/from16 v16, v46

    goto/16 :goto_2

    :cond_b
    move v12, v11

    move v11, v13

    goto/16 :goto_0
.end method
