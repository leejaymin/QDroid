.class public final Lorg/cocos2d/d/e;
.super Lorg/cocos2d/d/c;


# instance fields
.field a:Ljava/nio/FloatBuffer;

.field b:Ljava/nio/FloatBuffer;

.field c:Ljava/nio/FloatBuffer;

.field d:Ljava/nio/ShortBuffer;


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/d/c;-><init>(Lorg/cocos2d/l/m;)V

    invoke-virtual {p0}, Lorg/cocos2d/d/e;->a()V

    return-void
.end method

.method public static a(Lorg/cocos2d/l/m;)Lorg/cocos2d/d/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/d/e;

    invoke-direct {v0, p0}, Lorg/cocos2d/d/e;-><init>(Lorg/cocos2d/l/m;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lorg/cocos2d/d/e;->i:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/d/e;->i:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->a:I

    iget-object v3, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0xc

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v2, 0xc

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/d/e;->c:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v2, 0x8

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v2, 0x6

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    move v3, v11

    :goto_0
    iget-object v4, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->a:I

    if-lt v3, v4, :cond_0

    iget-object v0, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v11

    :goto_1
    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/cocos2d/d/e;->c:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/d/e;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    move v4, v11

    :goto_2
    iget-object v5, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v5, v5, Lorg/cocos2d/l/m;->b:I

    if-lt v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v5, v3

    iget-object v6, p0, Lorg/cocos2d/d/e;->j:Lorg/cocos2d/l/e;

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/cocos2d/d/e;->j:Lorg/cocos2d/l/e;

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v6, v5

    int-to-float v7, v4

    iget-object v8, p0, Lorg/cocos2d/d/e;->j:Lorg/cocos2d/l/e;

    iget v8, v8, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/cocos2d/d/e;->j:Lorg/cocos2d/l/e;

    iget v8, v8, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v8, v7

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float v10, v5, v0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float v10, v6, v0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float/2addr v7, v1

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float/2addr v5, v0

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float v7, v8, v1

    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    div-float v6, v8, v1

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const v5, 0x8076

    const/16 v4, 0x1406

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v0, v1

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/cocos2d/d/e;->a:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v4, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x6

    const/16 v2, 0x1403

    iget-object v3, p0, Lorg/cocos2d/d/e;->d:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->b:I

    iget v1, p1, Lorg/cocos2d/l/m;->a:I

    mul-int/2addr v0, v1

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p2}, Lorg/cocos2d/l/o;->a()[F

    move-result-object v1

    move v2, v6

    :goto_0
    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    iget-object v0, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_0
    iget-object v3, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    add-int v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;
    .locals 6

    const/16 v5, 0xc

    iget-object v0, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->b:I

    iget v1, p1, Lorg/cocos2d/l/m;->a:I

    mul-int/2addr v0, v1

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    new-array v1, v5, [F

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v5, :cond_0

    new-instance v0, Lorg/cocos2d/l/o;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/o;-><init>([F)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/cocos2d/d/e;->c:Ljava/nio/FloatBuffer;

    add-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget v0, p0, Lorg/cocos2d/d/e;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/d/e;->h:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    iget v0, p0, Lorg/cocos2d/d/e;->g:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/d/e;->g:I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/cocos2d/d/e;->c:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/d/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
