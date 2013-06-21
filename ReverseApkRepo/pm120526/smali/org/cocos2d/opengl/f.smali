.class public final Lorg/cocos2d/opengl/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/nio/FloatBuffer;


# direct methods
.method private static a(I)Ljava/nio/FloatBuffer;
    .locals 2

    sget-object v0, Lorg/cocos2d/opengl/f;->a:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/opengl/f;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    if-ge v0, p0, :cond_1

    :cond_0
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/f;->a:Ljava/nio/FloatBuffer;

    :cond_1
    sget-object v0, Lorg/cocos2d/opengl/f;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Lorg/cocos2d/opengl/f;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;)V
    .locals 7

    const v6, 0x8078

    const v5, 0x8076

    const/16 v4, 0xde1

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-static {v3}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v1, 0x1406

    invoke-interface {p0, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x1

    invoke-interface {p0, v2, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;FFIZ)V
    .locals 9

    add-int/lit8 v0, p4, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    add-int/lit8 p5, v1, 0x1

    :goto_0
    const v1, 0x40c90fdb

    int-to-float v2, p4

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_1
    if-le v2, p4, :cond_0

    iget p2, p1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget p1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 p1, 0x2

    const/16 p2, 0x1406

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    add-int p3, p4, p5

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_0
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v4, p2

    add-float v6, v3, p3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v6, p1, Lorg/cocos2d/l/e;->a:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    float-to-double v5, p2

    add-float/2addr v3, p3

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget v3, p1, Lorg/cocos2d/l/e;->b:F

    float-to-double v7, v3

    add-double/2addr v5, v7

    double-to-float v3, v5

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move p5, v1

    goto :goto_0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V
    .locals 7

    const v6, 0x8078

    const v5, 0x8076

    const/16 v4, 0xde1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p2, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p2, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v1, 0x1406

    invoke-interface {p0, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x1

    invoke-interface {p0, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V
    .locals 9

    const/16 v0, 0x66

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_0
    const/16 v3, 0x32

    if-lt v1, v3, :cond_0

    iget p1, p3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget p1, p3, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 p1, 0x2

    const/16 p2, 0x1406

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/16 p3, 0x33

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_0
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, p2, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    iget v5, p3, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    iget v6, p2, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    iget v6, p3, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const v3, 0x3ca3d70a

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V
    .locals 11

    const/16 v0, 0xca

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_0
    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    iget p1, p4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget p1, p4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 p1, 0x2

    const/16 p2, 0x1406

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/16 p3, 0x65

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    const p1, 0x8076

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const p1, 0x8078

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 p1, 0xde1

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_0
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x4008

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v2

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    iget v5, p2, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x4040

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v2

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    iget v5, p3, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    mul-float/2addr v4, v2

    iget v5, p4, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    float-to-double v4, v4

    const-wide/high16 v6, 0x4008

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    iget v6, p2, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    iget v6, p3, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v5, v2, v2

    mul-float/2addr v5, v2

    iget v6, p4, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const v3, 0x3c23d70a

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;)V
    .locals 8

    const v7, 0x8078

    const v6, 0x8076

    const/16 v5, 0xde1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    move v1, v3

    :goto_0
    if-lt v1, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-interface {p0, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_0
    aget-object v2, p1, v1

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v2, p1, v1

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;[Lorg/cocos2d/l/e;IZ)V
    .locals 8

    const v7, 0x8078

    const v6, 0x8076

    const/16 v5, 0xde1

    const/4 v4, 0x2

    const/4 v3, 0x0

    mul-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lorg/cocos2d/opengl/f;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    move v1, v3

    :goto_0
    if-lt v1, p2, :cond_0

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v1, 0x1406

    invoke-interface {p0, v4, v1, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    if-eqz p3, :cond_1

    invoke-interface {p0, v4, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_1
    invoke-interface {p0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-interface {p0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    return-void

    :cond_0
    aget-object v2, p1, v1

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    aget-object v2, p1, v1

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-interface {p0, v0, v3, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_1
.end method
