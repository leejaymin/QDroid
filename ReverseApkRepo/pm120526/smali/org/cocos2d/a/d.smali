.class public final Lorg/cocos2d/a/d;
.super Lorg/cocos2d/g/i;


# instance fields
.field a:I

.field b:F

.field c:Lorg/cocos2d/g/o;

.field protected d:Ljava/nio/FloatBuffer;

.field protected e:Ljava/nio/FloatBuffer;

.field protected f:Ljava/nio/FloatBuffer;

.field protected g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/a/d;-><init>(Lorg/cocos2d/opengl/i;)V

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/opengl/i;)V
    .locals 3

    const/high16 v2, 0x3f00

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    iput v1, p0, Lorg/cocos2d/a/d;->g:I

    invoke-static {p1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/d;->b:F

    iput v1, p0, Lorg/cocos2d/a/d;->g:I

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/d;->d(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/g;)V

    iput v1, p0, Lorg/cocos2d/a/d;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/cocos2d/a/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/a/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/d;-><init>(Lorg/cocos2d/opengl/i;)V

    return-object v0
.end method

.method private a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    iget v3, p1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->e()F

    move-result v3

    div-float/2addr v2, v3

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    const/high16 v3, 0x3f80

    iget v4, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->f()F

    move-result v0

    div-float v0, v4, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    iput p1, p0, Lorg/cocos2d/a/d;->g:I

    iget v0, p0, Lorg/cocos2d/a/d;->g:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/a/d;->g:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    iget v0, p0, Lorg/cocos2d/a/d;->g:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/cocos2d/m/b;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/d;->g:I

    :cond_0
    return-void
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x437f

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->a()Lorg/cocos2d/l/j;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/l/l;

    iget v2, v0, Lorg/cocos2d/l/j;->j:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/j;->k:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v0, v0, Lorg/cocos2d/l/j;->l:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/cocos2d/l/l;-><init>(FFFF)V

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v2, v1, Lorg/cocos2d/l/l;->a:F

    mul-float/2addr v2, v0

    iput v2, v1, Lorg/cocos2d/l/l;->a:F

    iget v2, v1, Lorg/cocos2d/l/l;->b:F

    mul-float/2addr v2, v0

    iput v2, v1, Lorg/cocos2d/l/l;->b:F

    iget v2, v1, Lorg/cocos2d/l/l;->c:F

    mul-float/2addr v2, v0

    iput v2, v1, Lorg/cocos2d/l/l;->c:F

    iput v0, v1, Lorg/cocos2d/l/l;->d:F

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v6

    :goto_1
    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->b()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, v1, Lorg/cocos2d/l/l;->d:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    iget v3, v1, Lorg/cocos2d/l/l;->a:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lorg/cocos2d/l/l;->b:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lorg/cocos2d/l/l;->c:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lorg/cocos2d/l/l;->d:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private g(I)Lorg/cocos2d/l/e;
    .locals 4

    const/4 v3, 0x7

    const/16 v2, 0x1e

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget v0, p0, Lorg/cocos2d/a/d;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    shr-int v0, v2, v0

    and-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    shl-int/lit8 v1, p1, 0x1

    shr-int v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    shl-int/lit8 v0, p1, 0x1

    sub-int v0, v3, v0

    shr-int v0, v2, v0

    and-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    sub-int v1, v3, v1

    shr-int v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/a/d;->b:F

    return v0
.end method

.method public final a(F)V
    .locals 10

    iget v0, p0, Lorg/cocos2d/a/d;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2d/a/d;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/a/d;->b:F

    :goto_0
    iget v0, p0, Lorg/cocos2d/a/d;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/high16 v0, 0x42c8

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x42c8

    iput v0, p0, Lorg/cocos2d/a/d;->b:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lorg/cocos2d/a/d;->b:F

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->e()F

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->f()F

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2d/a/d;->p()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->f(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/d;->b:F

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    const v3, 0x40c90fdb

    iget v4, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move v4, v2

    :goto_2
    mul-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/l/e;->a:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_b

    const/4 v2, 0x0

    move-object v3, v4

    :goto_3
    const/4 v4, 0x1

    iget v5, p0, Lorg/cocos2d/a/d;->g:I

    add-int/lit8 v6, v2, 0x3

    if-eq v5, v6, :cond_3

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/cocos2d/a/d;->c()V

    :cond_3
    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    if-nez v5, :cond_4

    add-int/lit8 v5, v2, 0x3

    invoke-direct {p0, v5}, Lorg/cocos2d/a/d;->b(I)V

    invoke-direct {p0}, Lorg/cocos2d/a/d;->d()V

    :cond_4
    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    iget v6, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    iget v6, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-direct {p0, v1}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    iget v7, v4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v5, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    iget v6, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    iget v6, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v4, v5, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v2, :cond_12

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->a:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->b:Z

    if-eqz v1, :cond_6

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_13

    :cond_6
    iget-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    iget v4, v3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v1, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v4, v3, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v1, v2, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-direct {p0, v3}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    iget v3, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    iget v4, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    iget v3, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v2, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->a:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->b:Z

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->b:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    iget v3, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v5, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_8
    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v1, v1, Lorg/cocos2d/g/o;->a:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    iget v4, p0, Lorg/cocos2d/a/d;->g:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_9
    iget-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_a
    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    goto/16 :goto_2

    :cond_b
    const/high16 v6, 0x3f80

    cmpl-float v2, v2, v6

    if-nez v2, :cond_c

    const/4 v2, 0x4

    move-object v3, v4

    goto/16 :goto_3

    :cond_c
    const v2, 0x7f7fffff

    const/4 v4, 0x0

    move v9, v4

    move v4, v5

    move v5, v2

    move v2, v9

    :goto_6
    const/4 v6, 0x4

    if-le v2, v6, :cond_d

    invoke-static {v3, v1}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    move-object v3, v2

    move v2, v4

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v6, v2, 0x3

    rem-int/lit8 v6, v6, 0x4

    rem-int/lit8 v7, v2, 0x4

    int-to-char v7, v7

    invoke-direct {p0, v7}, Lorg/cocos2d/a/d;->g(I)Lorg/cocos2d/l/e;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/cocos2d/l/e;->f(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v7

    int-to-char v6, v6

    invoke-direct {p0, v6}, Lorg/cocos2d/a/d;->g(I)Lorg/cocos2d/l/e;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/cocos2d/l/e;->f(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v6

    if-nez v2, :cond_11

    invoke-static {v7, v6}, Lorg/cocos2d/l/e;->e(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v6

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_7
    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v8

    invoke-static {v6, v7, v1, v3, v8}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, v8, Lorg/cocos2d/l/e;->a:F

    iget v7, v8, Lorg/cocos2d/l/e;->b:F

    if-eqz v2, :cond_e

    const/4 v8, 0x4

    if-ne v2, v8, :cond_f

    :cond_e
    const/4 v8, 0x0

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_10

    const/high16 v8, 0x3f80

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_10

    :cond_f
    const/4 v6, 0x0

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_10

    cmpg-float v6, v7, v5

    if-gez v6, :cond_10

    move v4, v2

    move v5, v7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    const/4 v8, 0x4

    if-ne v2, v8, :cond_25

    invoke-static {v7, v6}, Lorg/cocos2d/l/e;->e(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    goto :goto_7

    :cond_12
    invoke-direct {p0, v1}, Lorg/cocos2d/a/d;->g(I)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/cocos2d/l/e;->f(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, v4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-direct {p0, v4}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v1, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v5, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_13
    iget-object v2, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v2, v2, Lorg/cocos2d/g/o;->b:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v6, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_14
    iget-object v2, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v2, v2, Lorg/cocos2d/g/o;->a:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v6, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :pswitch_1
    iget v0, p0, Lorg/cocos2d/a/d;->b:F

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->e()F

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->f()F

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [C

    iget-object v3, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    if-nez v3, :cond_1a

    const/4 v3, 0x4

    iput v3, p0, Lorg/cocos2d/a/d;->g:I

    iget v3, p0, Lorg/cocos2d/a/d;->g:I

    invoke-direct {p0, v3}, Lorg/cocos2d/a/d;->b(I)V

    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_16
    :goto_8
    const/4 v3, 0x0

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v5, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v4

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x0

    iget v7, v4, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v5, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v3, v3, Lorg/cocos2d/g/o;->a:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v3, v3, Lorg/cocos2d/g/o;->b:Z

    if-eqz v3, :cond_19

    :cond_17
    iget-object v3, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v3, v3, Lorg/cocos2d/g/o;->b:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v7, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v7, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_18
    iget-object v3, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v3, v3, Lorg/cocos2d/g/o;->a:Z

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v7, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-char v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    iget v6, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v7, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float v3, v6, v3

    invoke-virtual {v4, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_19
    invoke-direct {p0}, Lorg/cocos2d/a/d;->d()V

    :cond_1a
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_22

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-char v3, v2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_1b
    :goto_9
    const/4 v0, 0x0

    aget-char v0, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, v3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v4, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    aget-char v0, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v3

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    iget v6, v3, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v4, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v0, v0, Lorg/cocos2d/g/o;->a:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v0, v0, Lorg/cocos2d/g/o;->b:Z

    if-eqz v0, :cond_1e

    :cond_1c
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v0, v0, Lorg/cocos2d/g/o;->b:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    aget-char v0, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v6, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    sub-float v0, v5, v0

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    aget-char v0, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v6, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    sub-float v0, v5, v0

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_1d
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    iget-boolean v0, v0, Lorg/cocos2d/g/o;->a:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    aget-char v0, v2, v0

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v6, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    sub-float v0, v5, v0

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    aget-char v0, v2, v0

    iget-object v2, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v4, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    sub-float v0, v1, v0

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :cond_1e
    iget-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1

    :cond_1f
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_8

    :cond_20
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_8

    :cond_21
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_8

    :cond_22
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_23

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    const/high16 v6, 0x3f80

    sub-float v0, v6, v0

    mul-float/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-char v3, v2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget v4, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_9

    :cond_23
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_24

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    const/high16 v6, 0x3f80

    sub-float v0, v6, v0

    mul-float/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_9

    :cond_24
    iget v3, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput-char v4, v2, v3

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v3, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    aget-char v4, v2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_9

    :cond_25
    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lorg/cocos2d/a/d;->a:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/a/d;->c()V

    iput p1, p0, Lorg/cocos2d/a/d;->a:I

    :cond_0
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/4 v7, 0x4

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->L()Lorg/cocos2d/l/i;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->L()Lorg/cocos2d/l/i;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/i;->b:I

    const/16 v1, 0x303

    if-eq v0, v1, :cond_7

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->L()Lorg/cocos2d/l/i;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->L()Lorg/cocos2d/l/i;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v4

    :goto_1
    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->d()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v1, p0, Lorg/cocos2d/a/d;->e:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/a/d;->d:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/cocos2d/a/d;->f:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v6, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    if-ne v1, v4, :cond_5

    :cond_3
    const/4 v1, 0x6

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    invoke-interface {p1, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    if-eq v1, v7, :cond_6

    iget v1, p0, Lorg/cocos2d/a/d;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_6
    const/4 v1, 0x5

    iget v2, p0, Lorg/cocos2d/a/d;->g:I

    invoke-interface {p1, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_1
.end method

.method public final b()Lorg/cocos2d/g/o;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/d;->c:Lorg/cocos2d/g/o;

    return-object v0
.end method
