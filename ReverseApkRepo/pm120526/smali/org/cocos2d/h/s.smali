.class public Lorg/cocos2d/h/s;
.super Lorg/cocos2d/h/l;

# interfaces
.implements Lorg/cocos2d/opengl/s;


# static fields
.field static final synthetic ae:Z

.field private static af:[F


# instance fields
.field Z:Ljava/nio/FloatBuffer;

.field aa:Ljava/nio/FloatBuffer;

.field ab:Ljava/nio/FloatBuffer;

.field ac:Ljava/nio/ShortBuffer;

.field ad:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/h/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/h/s;->ae:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lorg/cocos2d/h/s;->af:[F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 6

    const/high16 v2, 0x4120

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/h/l;-><init>(I)V

    iget v0, p0, Lorg/cocos2d/h/s;->O:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/h/s;->O:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/h/s;->O:I

    mul-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/h/s;->O:I

    mul-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lorg/cocos2d/m/b;->b(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "cocos2d"

    const-string v1, "Particle system: not enough memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v1, v2, v2}, Lorg/cocos2d/h/s;->a(FFFF)V

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/cocos2d/h/s;->O:I

    if-lt v0, v1, :cond_2

    new-instance v0, Lorg/cocos2d/h/u;

    invoke-direct {v0, p0}, Lorg/cocos2d/h/u;-><init>(Lorg/cocos2d/h/s;)V

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/s;Lorg/cocos2d/opengl/r;Z)V

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v0, 0x4

    int-to-short v1, v1

    mul-int/lit8 v2, v0, 0x6

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v2, 0x0

    add-int/lit8 v5, v1, 0x0

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v1, 0x2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v2, 0x3

    add-int/lit8 v5, v1, 0x1

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v2, 0x4

    add-int/lit8 v5, v1, 0x2

    int-to-short v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    iget-object v3, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v1, v1, 0x3

    int-to-short v1, v1

    invoke-virtual {v3, v2, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(FFFF)V
    .locals 7

    const/4 v6, 0x0

    add-float v0, p1, p3

    add-float v1, p2, p4

    move v2, v6

    :goto_0
    iget v3, p0, Lorg/cocos2d/h/s;->O:I

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v3, v2, 0x8

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    aput p1, v4, v6

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x1

    aput v1, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x2

    aput v0, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x3

    aput v1, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x4

    aput p1, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x5

    aput p2, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x6

    aput v0, v4, v5

    sget-object v4, Lorg/cocos2d/h/s;->af:[F

    const/4 v5, 0x7

    aput p2, v4, v5

    iget-object v4, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v3, Lorg/cocos2d/h/s;->af:[F

    iget-object v4, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final R()V
    .locals 5

    const v4, 0x8892

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    aget v1, v1, v3

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->Z:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ad:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v4, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/16 v3, 0x1406

    const/4 v2, 0x2

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/cocos2d/h/s;->S:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->d()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    aget v0, v0, v5

    invoke-interface {p1, v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {p1, v2, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    aget v0, v0, v6

    invoke-interface {p1, v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-interface {p1, v2, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    aget v0, v0, v2

    invoke-interface {p1, v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v0, 0x4

    invoke-interface {p1, v0, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    iget-object v0, p0, Lorg/cocos2d/h/s;->L:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lorg/cocos2d/h/s;->L:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    const/16 v1, 0x303

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/h/s;->L:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/h/s;->L:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    move v0, v6

    :goto_1
    const/4 v1, 0x4

    iget v2, p0, Lorg/cocos2d/h/s;->X:I

    mul-int/lit8 v2, v2, 0x6

    const/16 v3, 0x1403

    iget-object v4, p0, Lorg/cocos2d/h/s;->ac:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    if-eqz v0, :cond_2

    const/16 v0, 0x303

    invoke-interface {p1, v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_2
    invoke-interface {p1, v7, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method

.method public final a(Lorg/cocos2d/h/m;Lorg/cocos2d/l/e;)V
    .locals 15

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/h/s;->X:I

    mul-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lorg/cocos2d/h/s;->af:[F

    iget-object v2, p0, Lorg/cocos2d/h/s;->ab:Ljava/nio/FloatBuffer;

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/h/m;->e:F

    move v1, v0

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/h/m;->g:F

    move v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    neg-float v2, v1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/cocos2d/h/m;->g:F

    move v5, v0

    const/high16 v6, 0x4334

    div-float/2addr v5, v6

    const v6, 0x40490fdb

    mul-float/2addr v5, v6

    neg-float v5, v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float v7, v2, v6

    mul-float v8, v2, v5

    sub-float/2addr v7, v8

    add-float/2addr v7, v3

    mul-float v8, v2, v5

    mul-float v9, v2, v6

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    mul-float v9, v1, v6

    mul-float v10, v2, v5

    sub-float/2addr v9, v10

    add-float/2addr v9, v3

    mul-float v10, v1, v5

    mul-float v11, v2, v6

    add-float/2addr v10, v11

    add-float/2addr v10, v4

    mul-float v11, v1, v6

    mul-float v12, v1, v5

    sub-float/2addr v11, v12

    add-float/2addr v11, v3

    mul-float v12, v1, v5

    mul-float v13, v1, v6

    add-float/2addr v12, v13

    add-float/2addr v12, v4

    mul-float v13, v2, v6

    mul-float v14, v1, v5

    sub-float/2addr v13, v14

    add-float/2addr v3, v13

    mul-float/2addr v2, v5

    mul-float/2addr v1, v6

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v4, 0x0

    aput v7, v2, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v4, 0x1

    aput v8, v2, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v4, 0x2

    aput v9, v2, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v4, 0x3

    aput v10, v2, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v4, 0x4

    aput v3, v2, v4

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x5

    aput v1, v2, v3

    sget-object v1, Lorg/cocos2d/h/s;->af:[F

    const/4 v2, 0x6

    aput v11, v1, v2

    sget-object v1, Lorg/cocos2d/h/s;->af:[F

    const/4 v2, 0x7

    aput v12, v1, v2

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/h/s;->X:I

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lorg/cocos2d/h/s;->af:[F

    iget-object v2, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    :goto_1
    return-void

    :cond_0
    mul-int/lit8 v2, v1, 0x4

    sget-object v3, Lorg/cocos2d/h/s;->af:[F

    add-int/lit8 v4, v2, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    move-object v5, v0

    iget v5, v5, Lorg/cocos2d/l/l;->a:F

    aput v5, v3, v4

    sget-object v3, Lorg/cocos2d/h/s;->af:[F

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    move-object v5, v0

    iget v5, v5, Lorg/cocos2d/l/l;->b:F

    aput v5, v3, v4

    sget-object v3, Lorg/cocos2d/h/s;->af:[F

    add-int/lit8 v4, v2, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    move-object v5, v0

    iget v5, v5, Lorg/cocos2d/l/l;->c:F

    aput v5, v3, v4

    sget-object v3, Lorg/cocos2d/h/s;->af:[F

    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/cocos2d/h/m;->c:Lorg/cocos2d/l/l;

    move-object v4, v0

    iget v4, v4, Lorg/cocos2d/l/l;->d:F

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v4, v0

    sub-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move v4, v0

    sub-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v4, v0

    add-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move v4, v0

    sub-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v4, v0

    sub-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x5

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move v4, v0

    add-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x6

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v4, v0

    add-float/2addr v4, v1

    aput v4, v2, v3

    sget-object v2, Lorg/cocos2d/h/s;->af:[F

    const/4 v3, 0x7

    move-object/from16 v0, p2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    move v4, v0

    add-float/2addr v1, v4

    aput v1, v2, v3

    iget-object v1, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/h/s;->X:I

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lorg/cocos2d/h/s;->af:[F

    iget-object v2, p0, Lorg/cocos2d/h/s;->aa:Ljava/nio/FloatBuffer;

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/cocos2d/m/c;->a([FLjava/nio/FloatBuffer;I)V

    goto/16 :goto_1
.end method

.method public final a(Lorg/cocos2d/opengl/i;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/cocos2d/opengl/i;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lorg/cocos2d/opengl/i;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v2, v0, v1}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/h/s;->S:Lorg/cocos2d/opengl/i;

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Lorg/cocos2d/h/l;->a(Lorg/cocos2d/opengl/i;)V

    :cond_0
    invoke-virtual {p1}, Lorg/cocos2d/opengl/i;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lorg/cocos2d/opengl/i;->c()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v1

    iget-object v4, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v4, v2

    iget-object v5, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v5, v5, Lorg/cocos2d/l/g;->a:F

    div-float v1, v5, v1

    iget-object v0, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v2

    invoke-direct {p0, v3, v4, v1, v0}, Lorg/cocos2d/h/s;->a(FFFF)V

    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/h/s;->ad:[I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/opengl/n;->a()Lorg/cocos2d/opengl/n;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/h/t;

    invoke-direct {v1, p0}, Lorg/cocos2d/h/t;-><init>(Lorg/cocos2d/h/s;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/n;->a(Lorg/cocos2d/opengl/q;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
