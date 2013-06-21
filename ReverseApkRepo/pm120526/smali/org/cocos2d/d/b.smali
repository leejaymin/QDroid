.class public final Lorg/cocos2d/d/b;
.super Lorg/cocos2d/d/c;


# instance fields
.field protected a:Ljava/nio/FloatBuffer;

.field protected b:Ljava/nio/FloatBuffer;

.field protected c:Ljava/nio/FloatBuffer;

.field protected d:Ljava/nio/ShortBuffer;

.field protected e:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lorg/cocos2d/l/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/d/c;-><init>(Lorg/cocos2d/l/m;)V

    invoke-virtual {p0}, Lorg/cocos2d/d/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;
    .locals 5

    iget v0, p1, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Lorg/cocos2d/l/c;

    iget-object v2, p0, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lorg/cocos2d/l/c;-><init>(FFF)V

    return-object v1
.end method

.method public final a()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->i:Lorg/cocos2d/opengl/i;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/cocos2d/opengl/i;->b()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->i:Lorg/cocos2d/opengl/i;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/cocos2d/opengl/i;->c()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v6, v0

    iget v6, v6, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v6, v0

    iget v6, v6, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v6, v0

    iget v6, v6, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/d/b;->a:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v6, v0

    iget v6, v6, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v6, v6, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v7, v7, 0x1

    if-lt v6, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/l/m;->a:I

    if-lt v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->a:Ljava/nio/FloatBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->c:Ljava/nio/FloatBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v8, v0

    iget v8, v8, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v8, v8, 0x1

    if-lt v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v8, v0

    iget v8, v8, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v8, v6

    add-int/2addr v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v9, v0

    mul-int/lit8 v10, v8, 0x3

    add-int/lit8 v10, v10, 0x0

    const/high16 v11, -0x4080

    invoke-virtual {v9, v10, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v9, v0

    mul-int/lit8 v10, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    const/high16 v11, -0x4080

    invoke-virtual {v9, v10, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v9, v0

    mul-int/lit8 v10, v8, 0x3

    add-int/lit8 v10, v10, 0x2

    const/high16 v11, -0x4080

    invoke-virtual {v9, v10, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v9, v0

    mul-int/lit8 v10, v8, 0x2

    add-int/lit8 v10, v10, 0x0

    const/high16 v11, -0x4080

    invoke-virtual {v9, v10, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v9, v0

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    const/high16 v10, -0x4080

    invoke-virtual {v9, v8, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v8, v0

    iget v8, v8, Lorg/cocos2d/l/m;->b:I

    if-lt v7, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    move-object v8, v0

    iget v8, v8, Lorg/cocos2d/l/m;->a:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    int-to-float v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->j:Lorg/cocos2d/l/e;

    move-object v10, v0

    iget v10, v10, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->j:Lorg/cocos2d/l/e;

    move-object v10, v0

    iget v10, v10, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v10, v9

    int-to-float v11, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->j:Lorg/cocos2d/l/e;

    move-object v12, v0

    iget v12, v12, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->j:Lorg/cocos2d/l/e;

    move-object v12, v0

    iget v12, v12, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v12, v11

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/d/b;->g()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v13, v6

    add-int/2addr v13, v7

    int-to-short v13, v13

    add-int/lit8 v14, v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/d/b;->g()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    mul-int/2addr v14, v15

    add-int/2addr v14, v7

    int-to-short v14, v14

    add-int/lit8 v15, v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/d/b;->g()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    mul-int v15, v15, v16

    add-int/lit8 v16, v7, 0x1

    add-int v15, v15, v16

    int-to-short v15, v15

    invoke-virtual/range {p0 .. p0}, Lorg/cocos2d/d/b;->g()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    mul-int v16, v16, v6

    add-int/lit8 v17, v7, 0x1

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [S

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-short v13, v17, v18

    const/16 v18, 0x1

    aput-short v14, v17, v18

    const/16 v18, 0x2

    aput-short v16, v17, v18

    const/16 v18, 0x3

    aput-short v14, v17, v18

    const/16 v18, 0x4

    aput-short v15, v17, v18

    const/16 v18, 0x5

    aput-short v16, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    move-object/from16 v18, v0

    mul-int/lit8 v8, v8, 0x6

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    move-object v8, v0

    const/16 v18, 0x0

    const/16 v19, 0x6

    move-object v0, v8

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    const/4 v8, 0x4

    new-array v8, v8, [I

    const/16 v17, 0x0

    mul-int/lit8 v18, v13, 0x3

    aput v18, v8, v17

    const/16 v17, 0x1

    mul-int/lit8 v18, v14, 0x3

    aput v18, v8, v17

    const/16 v17, 0x2

    mul-int/lit8 v18, v15, 0x3

    aput v18, v8, v17

    const/16 v17, 0x3

    mul-int/lit8 v18, v16, 0x3

    aput v18, v8, v17

    new-instance v17, Lorg/cocos2d/l/c;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move v1, v9

    move v2, v11

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/l/c;-><init>(FFF)V

    new-instance v18, Lorg/cocos2d/l/c;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move v1, v10

    move v2, v11

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/l/c;-><init>(FFF)V

    new-instance v19, Lorg/cocos2d/l/c;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move v1, v10

    move v2, v12

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/l/c;-><init>(FFF)V

    new-instance v20, Lorg/cocos2d/l/c;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move v1, v9

    move v2, v12

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/l/c;-><init>(FFF)V

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lorg/cocos2d/l/c;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v17, 0x1

    aput-object v18, v21, v17

    const/16 v17, 0x2

    aput-object v19, v21, v17

    const/16 v17, 0x3

    aput-object v20, v21, v17

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    mul-int/lit8 v13, v13, 0x2

    aput v13, v17, v18

    const/4 v13, 0x1

    mul-int/lit8 v14, v14, 0x2

    aput v14, v17, v13

    const/4 v13, 0x2

    mul-int/lit8 v14, v15, 0x2

    aput v14, v17, v13

    const/4 v13, 0x3

    mul-int/lit8 v14, v16, 0x2

    aput v14, v17, v13

    const/4 v13, 0x4

    new-array v13, v13, [Lorg/cocos2d/l/e;

    const/4 v14, 0x0

    invoke-static {v9, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v10, v11}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v11

    aput-object v11, v13, v14

    const/4 v11, 0x2

    invoke-static {v10, v12}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v10

    aput-object v10, v13, v11

    const/4 v10, 0x3

    invoke-static {v9, v12}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v9

    aput-object v9, v13, v10

    const/4 v9, 0x0

    :goto_4
    const/4 v10, 0x4

    if-lt v9, v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v10, v0

    aget v11, v8, v9

    add-int/lit8 v11, v11, 0x0

    aget-object v12, v21, v9

    iget v12, v12, Lorg/cocos2d/l/c;->a:F

    invoke-virtual {v10, v11, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v10, v0

    aget v11, v8, v9

    add-int/lit8 v11, v11, 0x1

    aget-object v12, v21, v9

    iget v12, v12, Lorg/cocos2d/l/c;->b:F

    invoke-virtual {v10, v11, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    move-object v10, v0

    aget v11, v8, v9

    add-int/lit8 v11, v11, 0x2

    aget-object v12, v21, v9

    iget v12, v12, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {v10, v11, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->a:Ljava/nio/FloatBuffer;

    move-object v10, v0

    aget v11, v17, v9

    add-int/lit8 v11, v11, 0x0

    aget-object v12, v13, v9

    iget v12, v12, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v12, v4

    invoke-virtual {v10, v11, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/d/b;->a:Ljava/nio/FloatBuffer;

    move-object v10, v0

    aget v11, v17, v9

    add-int/lit8 v11, v11, 0x1

    aget-object v12, v13, v9

    iget v12, v12, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const v7, 0x8076

    const/16 v6, 0x1406

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v0, v1

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    iget-object v1, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v5

    :goto_0
    iget-object v2, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/d/b;->a:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x6

    const/16 v2, 0x1403

    iget-object v3, p0, Lorg/cocos2d/d/b;->d:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/d/b;->e:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V
    .locals 4

    iget v0, p1, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/d/b;->h:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x0

    iget v3, p2, Lorg/cocos2d/l/c;->a:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v0, 0x1

    iget v3, p2, Lorg/cocos2d/l/c;->b:F

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/b;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x2

    iget v2, p2, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {v1, v0, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lorg/cocos2d/d/b;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/d/b;->g:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/d/b;->g:I

    :cond_0
    return-void
.end method
