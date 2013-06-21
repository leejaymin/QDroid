.class public final Lorg/cocos2d/g/m;
.super Lorg/cocos2d/g/i;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Lorg/cocos2d/l/e;

.field d:Lorg/cocos2d/l/e;

.field e:Lorg/cocos2d/l/e;

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:Z

.field l:Lorg/cocos2d/opengl/i;

.field m:F

.field n:Lorg/cocos2d/l/k;

.field o:Lorg/cocos2d/l/i;


# direct methods
.method protected constructor <init>(FLjava/lang/String;Lorg/cocos2d/l/k;F)V
    .locals 4

    const/16 v3, 0x2901

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/cocos2d/g/n;

    invoke-direct {v0}, Lorg/cocos2d/g/n;-><init>()V

    iget-object v1, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x4200

    iput v0, p0, Lorg/cocos2d/g/m;->m:F

    iput-object p3, p0, Lorg/cocos2d/g/m;->n:Lorg/cocos2d/l/k;

    iput p4, p0, Lorg/cocos2d/g/m;->h:F

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    const/high16 v0, 0x4000

    div-float v0, p1, v0

    iput v0, p0, Lorg/cocos2d/g/m;->j:F

    iput v2, p0, Lorg/cocos2d/g/m;->f:F

    iput v2, p0, Lorg/cocos2d/g/m;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/g/m;->k:Z

    new-instance v0, Lorg/cocos2d/l/i;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/m;->o:Lorg/cocos2d/l/i;

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/m;->l:Lorg/cocos2d/opengl/i;

    new-instance v0, Lorg/cocos2d/l/b;

    invoke-direct {v0, v3, v3}, Lorg/cocos2d/l/b;-><init>(II)V

    iget-object v1, p0, Lorg/cocos2d/g/m;->l:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/l/b;)V

    return-void
.end method

.method private static b(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;
    .locals 5

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->a:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/l/e;->b:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/l/e;->b:F

    iput v0, p0, Lorg/cocos2d/l/e;->a:F

    return-object p0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/cocos2d/g/m;->l:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->d()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/m;->o:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/m;->o:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    const/16 v2, 0x303

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/cocos2d/g/m;->o:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->a:I

    iget-object v2, p0, Lorg/cocos2d/g/m;->o:Lorg/cocos2d/l/i;

    iget v2, v2, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_1
    move v1, v0

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_2
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/n;

    iget v3, p0, Lorg/cocos2d/g/m;->g:F

    iget v4, p0, Lorg/cocos2d/g/m;->h:F

    iget-object v5, p0, Lorg/cocos2d/g/m;->n:Lorg/cocos2d/l/k;

    iget v6, v5, Lorg/cocos2d/l/k;->a:I

    iget v7, v5, Lorg/cocos2d/l/k;->b:I

    iget v8, v5, Lorg/cocos2d/l/k;->c:I

    iget v5, v5, Lorg/cocos2d/l/k;->d:I

    iget v9, v0, Lorg/cocos2d/g/n;->g:I

    const/16 v10, 0x32

    if-ge v9, v10, :cond_8

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-nez v9, :cond_5

    int-to-float v3, v6

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    int-to-float v4, v7

    const/high16 v6, 0x437f

    div-float/2addr v4, v6

    int-to-float v6, v8

    const/high16 v7, 0x437f

    div-float/2addr v6, v7

    int-to-float v5, v5

    const/high16 v7, 0x437f

    div-float/2addr v5, v7

    invoke-interface {p1, v3, v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    :goto_1
    iget-object v3, v0, Lorg/cocos2d/g/n;->h:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lorg/cocos2d/g/n;->a:[F

    iget v5, v0, Lorg/cocos2d/g/n;->g:I

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    iget v7, v0, Lorg/cocos2d/g/n;->g:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lorg/cocos2d/g/n;->h:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/cocos2d/g/n;->h:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v3, v0, Lorg/cocos2d/g/n;->i:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lorg/cocos2d/g/n;->b:[F

    iget v5, v0, Lorg/cocos2d/g/n;->g:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    iget v7, v0, Lorg/cocos2d/g/n;->g:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lorg/cocos2d/g/n;->i:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/cocos2d/g/n;->i:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v3, 0x5

    const/4 v4, 0x0

    iget v5, v0, Lorg/cocos2d/g/n;->f:I

    iget v0, v0, Lorg/cocos2d/g/n;->g:I

    sub-int v0, v5, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_0

    :cond_5
    const v5, 0x8076

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    iget v5, v0, Lorg/cocos2d/g/n;->g:I

    :goto_2
    iget v9, v0, Lorg/cocos2d/g/n;->f:I

    if-lt v5, v9, :cond_6

    iget-object v3, v0, Lorg/cocos2d/g/n;->j:Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lorg/cocos2d/g/n;->c:[F

    iget v5, v0, Lorg/cocos2d/g/n;->g:I

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    iget v7, v0, Lorg/cocos2d/g/n;->g:I

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lorg/cocos2d/g/n;->j:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/cocos2d/g/n;->j:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    goto/16 :goto_1

    :cond_6
    mul-int/lit8 v9, v5, 0x8

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x0

    int-to-float v12, v6

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x1

    int-to-float v12, v7

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x2

    int-to-float v12, v8

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x4

    int-to-float v12, v6

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x5

    int-to-float v12, v7

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x6

    int-to-float v12, v8

    const/high16 v13, 0x437f

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->d:[F

    aget v10, v10, v5

    sub-float v10, v3, v10

    div-float/2addr v10, v4

    const/high16 v11, 0x3f80

    cmpl-float v11, v10, v11

    if-lez v11, :cond_7

    iget v10, v0, Lorg/cocos2d/g/n;->g:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/cocos2d/g/n;->g:I

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v11, v9, 0x3

    const/4 v12, 0x0

    aput v12, v10, v11

    iget-object v10, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v9, v9, 0x7

    const/4 v11, 0x0

    aput v11, v10, v9

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    const/high16 v11, 0x3f80

    sub-float v10, v11, v10

    iget-object v11, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v12, v9, 0x3

    aput v10, v11, v12

    iget-object v11, v0, Lorg/cocos2d/g/n;->c:[F

    add-int/lit8 v9, v9, 0x7

    aput v10, v11, v9

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/cocos2d/g/n;->e:Z

    goto/16 :goto_0
.end method

.method public final a(Lorg/cocos2d/l/e;F)V
    .locals 12

    const/high16 v0, 0x3f00

    mul-float v1, p2, v0

    iget-boolean v0, p0, Lorg/cocos2d/g/m;->k:Z

    if-nez v0, :cond_0

    iput v1, p0, Lorg/cocos2d/g/m;->j:F

    iput-object p1, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/g/m;->k:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    invoke-static {v0, p1}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/l/e;->e(Lorg/cocos2d/l/e;)F

    move-result v0

    const v2, 0x40c90fdb

    add-float/2addr v2, v0

    neg-float v0, v1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/cocos2d/g/m;->b(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/cocos2d/g/m;->b(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v0, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget v5, p1, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v5

    float-to-double v5, v0

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v5, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    iget v6, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget v5, p0, Lorg/cocos2d/g/m;->f:F

    iget v6, p0, Lorg/cocos2d/g/m;->m:F

    div-float/2addr v0, v6

    add-float/2addr v5, v0

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/cocos2d/g/n;

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget v0, p2, Lorg/cocos2d/g/n;->f:I

    const/16 v6, 0x32

    if-lt v0, v6, :cond_2

    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/cocos2d/g/n;

    iget v0, p2, Lorg/cocos2d/g/n;->f:I

    const/16 v6, 0x32

    if-lt v0, v6, :cond_6

    iget-object v0, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/n;

    iget-object v6, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/cocos2d/g/n;->a()V

    :goto_2
    iget v6, p2, Lorg/cocos2d/g/n;->f:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x6

    iget v7, p2, Lorg/cocos2d/g/n;->f:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x4

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x0

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    aget v10, v10, v6

    aput v10, v8, v9

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x1

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v11, v6, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x2

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v11, v6, 0x2

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x3

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v11, v6, 0x3

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x4

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v11, v6, 0x4

    aget v10, v10, v11

    aput v10, v8, v9

    iget-object v8, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v9, 0x5

    iget-object v10, p2, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v6, v6, 0x5

    aget v6, v10, v6

    aput v6, v8, v9

    iget-object v6, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v8, 0x0

    iget-object v9, p2, Lorg/cocos2d/g/n;->b:[F

    aget v9, v9, v7

    aput v9, v6, v8

    iget-object v6, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v8, 0x1

    iget-object v9, p2, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    aput v9, v6, v8

    iget-object v6, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v8, 0x2

    iget-object v9, p2, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v10, v7, 0x2

    aget v9, v9, v10

    aput v9, v6, v8

    iget-object v6, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v8, 0x3

    iget-object v9, p2, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    aput v7, v6, v8

    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lorg/cocos2d/g/n;->f:I

    iget-object v6, p0, Lorg/cocos2d/g/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    if-nez v6, :cond_3

    iget v6, p0, Lorg/cocos2d/g/m;->j:F

    neg-float v6, v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/cocos2d/g/m;->b(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v6

    iget-object v7, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    invoke-static {v6, v7}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v6

    iget v7, p0, Lorg/cocos2d/g/m;->j:F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/cocos2d/g/m;->b(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v2

    iget-object v7, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    invoke-static {v2, v7}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    iget-object v7, v0, Lorg/cocos2d/g/n;->d:[F

    const/4 v8, 0x0

    iget v9, p0, Lorg/cocos2d/g/m;->g:F

    iget v10, p0, Lorg/cocos2d/g/m;->i:F

    sub-float/2addr v9, v10

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v8, 0x0

    iget v9, v6, Lorg/cocos2d/l/e;->a:F

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v8, 0x1

    iget v6, v6, Lorg/cocos2d/l/e;->b:F

    aput v6, v7, v8

    iget-object v6, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v7, 0x3

    iget v8, v2, Lorg/cocos2d/l/e;->a:F

    aput v8, v6, v7

    iget-object v6, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v7, 0x4

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    aput v2, v6, v7

    iget-object v2, v0, Lorg/cocos2d/g/n;->a:[F

    const/4 v6, 0x5

    const/4 v7, 0x0

    aput v7, v2, v6

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v2, v6

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v6, 0x1

    iget v7, p0, Lorg/cocos2d/g/m;->f:F

    aput v7, v2, v6

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v6, 0x2

    const/high16 v7, 0x3f80

    aput v7, v2, v6

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v6, 0x3

    iget v7, p0, Lorg/cocos2d/g/m;->f:F

    aput v7, v2, v6

    iget v2, v0, Lorg/cocos2d/g/n;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/cocos2d/g/n;->f:I

    :cond_3
    iget v2, v0, Lorg/cocos2d/g/n;->f:I

    mul-int/lit8 v2, v2, 0x6

    iget v6, v0, Lorg/cocos2d/g/n;->f:I

    mul-int/lit8 v6, v6, 0x4

    iget-object v7, v0, Lorg/cocos2d/g/n;->d:[F

    iget v8, v0, Lorg/cocos2d/g/n;->f:I

    iget v9, p0, Lorg/cocos2d/g/m;->g:F

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    iget v8, v3, Lorg/cocos2d/l/e;->a:F

    aput v8, v7, v2

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v8, v2, 0x1

    iget v9, v3, Lorg/cocos2d/l/e;->b:F

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v8, v2, 0x2

    const/4 v9, 0x0

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v8, v2, 0x3

    iget v9, v4, Lorg/cocos2d/l/e;->a:F

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v8, v2, 0x4

    iget v9, v4, Lorg/cocos2d/l/e;->b:F

    aput v9, v7, v8

    iget-object v7, v0, Lorg/cocos2d/g/n;->a:[F

    add-int/lit8 v2, v2, 0x5

    const/4 v8, 0x0

    aput v8, v7, v2

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    const/4 v7, 0x0

    aput v7, v2, v6

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v7, v6, 0x1

    aput v5, v2, v7

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v7, v6, 0x2

    const/high16 v8, 0x3f80

    aput v8, v2, v7

    iget-object v2, v0, Lorg/cocos2d/g/n;->b:[F

    add-int/lit8 v6, v6, 0x3

    aput v5, v2, v6

    iput v5, p0, Lorg/cocos2d/g/m;->f:F

    iput-object p1, p0, Lorg/cocos2d/g/m;->e:Lorg/cocos2d/l/e;

    iput-object v3, p0, Lorg/cocos2d/g/m;->c:Lorg/cocos2d/l/e;

    iput-object v4, p0, Lorg/cocos2d/g/m;->d:Lorg/cocos2d/l/e;

    iput v1, p0, Lorg/cocos2d/g/m;->j:F

    iget v1, v0, Lorg/cocos2d/g/n;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/cocos2d/g/n;->f:I

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/n;

    if-eq v0, p2, :cond_1

    iget-boolean v7, v0, Lorg/cocos2d/g/n;->e:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/cocos2d/g/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lorg/cocos2d/g/n;

    invoke-direct {v0}, Lorg/cocos2d/g/n;-><init>()V

    goto/16 :goto_2

    :cond_6
    move-object v0, p2

    goto/16 :goto_3
.end method
