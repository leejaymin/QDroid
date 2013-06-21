.class public abstract Lorg/cocos2d/d/c;
.super Ljava/lang/Object;


# instance fields
.field protected f:Z

.field protected g:I

.field protected h:Lorg/cocos2d/l/m;

.field protected i:Lorg/cocos2d/opengl/i;

.field protected j:Lorg/cocos2d/l/e;

.field protected k:Lorg/cocos2d/d/a;

.field protected l:Z


# direct methods
.method public constructor <init>(Lorg/cocos2d/l/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/opengl/i;

    invoke-direct {v0}, Lorg/cocos2d/opengl/i;-><init>()V

    new-instance v1, Lorg/cocos2d/d/d;

    invoke-direct {v1, p0, p1}, Lorg/cocos2d/d/d;-><init>(Lorg/cocos2d/d/c;Lorg/cocos2d/l/m;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/r;)V

    return-void
.end method

.method static synthetic a(Lorg/cocos2d/d/c;Lorg/cocos2d/l/m;Lorg/cocos2d/opengl/i;)V
    .locals 7

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/cocos2d/d/c;->f:Z

    iput v3, p0, Lorg/cocos2d/d/c;->g:I

    iput-object p1, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iput-object p2, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    iput-boolean v3, p0, Lorg/cocos2d/d/c;->l:Z

    iget-object v0, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v2, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    iget-object v2, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/d/c;->j:Lorg/cocos2d/l/e;

    new-instance v0, Lorg/cocos2d/d/a;

    invoke-direct {v0}, Lorg/cocos2d/d/a;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/d/c;->k:Lorg/cocos2d/d/a;

    iget-object v6, p0, Lorg/cocos2d/d/c;->k:Lorg/cocos2d/d/a;

    iget-object v4, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v1, 0x8ca6

    iget-object v2, v6, Lorg/cocos2d/d/a;->b:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    const v1, 0x8d40

    :try_start_0
    iget-object v2, v6, Lorg/cocos2d/d/a;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {v4}, Lorg/cocos2d/opengl/i;->d()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    const v1, 0x8d40

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/cocos2d/d/c;->a()V

    return-void

    :cond_1
    const v1, 0x8d40

    :try_start_1
    iget-object v2, v6, Lorg/cocos2d/d/a;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/d/c;->g:I

    return-void
.end method

.method public abstract a(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Lorg/cocos2d/g/i;)V
    .locals 11

    const/high16 v8, 0x3f80

    const/4 v4, 0x0

    const/high16 v10, 0x4000

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/cocos2d/d/c;->k:Lorg/cocos2d/d/a;

    iget-object v0, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v2, 0x8d40

    :try_start_0
    iget-object v1, v1, Lorg/cocos2d/d/a;->b:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->g()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    float-to-int v1, v1

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    float-to-int v2, v2

    invoke-interface {p1, v4, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v1, 0x4270

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    const v4, 0x44bb8000

    invoke-static {p1, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v10

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v2, v10

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/g/c;->c()F

    move-result v3

    iget v4, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v4, v10

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float v5, v0, v10

    move-object v0, p1

    move v7, v6

    move v9, v6

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->h()Z

    move-result v1

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v10

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v10

    if-eqz v1, :cond_1

    invoke-interface {p1, v2, v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v1, -0x3d4c

    invoke-interface {p1, v1, v6, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    neg-float v0, v0

    neg-float v1, v2

    invoke-interface {p1, v0, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_1
    invoke-virtual {p2}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/cocos2d/g/i;->m()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget v2, v0, Lorg/cocos2d/l/e;->b:F

    invoke-interface {p1, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-virtual {p2}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cocos2d/opengl/e;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v1, v1

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    neg-float v0, v0

    invoke-interface {p1, v1, v0, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_2
    const/16 v0, 0xde1

    iget-object v1, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->d()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/d/c;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/cocos2d/d/c;->f:Z

    if-nez p1, :cond_0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/c;->a(I)V

    :cond_0
    return-void
.end method

.method public abstract b()V
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget v3, v1, Lorg/cocos2d/l/g;->a:F

    float-to-int v3, v3

    iget v4, v1, Lorg/cocos2d/l/g;->b:F

    float-to-int v4, v4

    invoke-interface {p1, v8, v8, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 v3, 0x1701

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget v3, v1, Lorg/cocos2d/l/g;->a:F

    iget v5, v1, Lorg/cocos2d/l/g;->b:F

    const/high16 v6, -0x3d38

    const/high16 v7, 0x42c8

    move-object v1, p1

    move v4, v2

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v1, p0, Lorg/cocos2d/d/c;->k:Lorg/cocos2d/d/a;

    iget-object v2, p0, Lorg/cocos2d/d/c;->i:Lorg/cocos2d/opengl/i;

    sget-object v2, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v2, v2, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v2, :cond_0

    sget-object p0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast p0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v2, 0x8ca6

    iget-object v3, v1, Lorg/cocos2d/d/a;->b:[I

    invoke-interface {p0, v2, v3, v8}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    const v2, 0x8d40

    :try_start_0
    iget-object v1, v1, Lorg/cocos2d/d/a;->a:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-interface {p0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    move-object v0, p0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    check-cast p0, Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x4100

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final c()Lorg/cocos2d/l/e;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/d/c;->j:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/d/c;->j:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/d/c;->g:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/d/c;->f:Z

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    return v0
.end method

.method public finalize()V
    .locals 2

    const-string v0, "cocos2d: deallocing %s"

    invoke-virtual {p0}, Lorg/cocos2d/d/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/d/c;->a(Z)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/cocos2d/m/d;

    invoke-direct {v0}, Lorg/cocos2d/m/d;-><init>()V

    const-string v0, "<%s : Dimensions = %dx%d>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lorg/cocos2d/d/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/cocos2d/d/c;->h:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
