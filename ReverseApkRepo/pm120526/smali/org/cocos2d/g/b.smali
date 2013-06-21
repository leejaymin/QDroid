.class public abstract Lorg/cocos2d/g/b;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Lorg/cocos2d/i/c;


# instance fields
.field protected a:Lorg/cocos2d/opengl/m;

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:F

.field protected f:I

.field protected g:I

.field h:Lorg/cocos2d/l/i;

.field i:I

.field j:Lorg/cocos2d/l/j;

.field k:Lorg/cocos2d/l/j;

.field l:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;III)V
    .locals 3

    const/16 v2, 0x303

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput p2, p0, Lorg/cocos2d/g/b;->f:I

    iput p3, p0, Lorg/cocos2d/g/b;->g:I

    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/g/b;->i:I

    sget-object v0, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    iput-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    sget-object v0, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    iput-object v0, p0, Lorg/cocos2d/g/b;->k:Lorg/cocos2d/l/j;

    iput-boolean v1, p0, Lorg/cocos2d/g/b;->l:Z

    new-instance v0, Lorg/cocos2d/l/i;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/l/i;-><init>(II)V

    iput-object v0, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    new-instance v0, Lorg/cocos2d/opengl/m;

    invoke-direct {v0, p1, p4}, Lorg/cocos2d/opengl/m;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    iget-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    const/16 v1, 0x302

    iput v1, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v0, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    iput v2, v0, Lorg/cocos2d/l/i;->b:I

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2d/g/b;->l:Z

    iget-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->b:F

    iget v2, p0, Lorg/cocos2d/g/b;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/cocos2d/g/b;->c:I

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget v1, p0, Lorg/cocos2d/g/b;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/cocos2d/g/b;->b:I

    iget-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/g/b;->f:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/g/b;->d:F

    iget v1, p0, Lorg/cocos2d/g/b;->g:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->c()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lorg/cocos2d/g/b;->e:F

    return-void
.end method


# virtual methods
.method public final a()Lorg/cocos2d/l/j;
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/g/b;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/cocos2d/l/j;

    iget-object v1, p0, Lorg/cocos2d/g/b;->k:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cocos2d/l/j;

    iget-object v1, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lorg/cocos2d/g/b;->i:I

    iget-boolean v0, p0, Lorg/cocos2d/g/b;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/cocos2d/g/b;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/b;->k:Lorg/cocos2d/l/j;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/g/b;->a(Lorg/cocos2d/l/j;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    goto :goto_0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const v7, 0x8076

    const/16 v6, 0x303

    const/4 v5, 0x1

    const/high16 v4, 0x437f

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    iget-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v0, v0, Lorg/cocos2d/l/j;->j:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lorg/cocos2d/g/b;->i:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->a:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    if-eq v1, v6, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/g/b;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v5

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v0, :cond_2

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_2
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 3

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/g/b;->k:Lorg/cocos2d/l/j;

    iget-boolean v0, p0, Lorg/cocos2d/g/b;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->j:I

    iget v2, p0, Lorg/cocos2d/g/b;->i:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->j:I

    iget-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->k:I

    iget v2, p0, Lorg/cocos2d/g/b;->i:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->k:I

    iget-object v0, p0, Lorg/cocos2d/g/b;->j:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->l:I

    iget v2, p0, Lorg/cocos2d/g/b;->i:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    iput v1, v0, Lorg/cocos2d/l/j;->l:I

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/b;->i:I

    return v0
.end method

.method public final c()Lorg/cocos2d/opengl/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/b;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    return-object v0
.end method
