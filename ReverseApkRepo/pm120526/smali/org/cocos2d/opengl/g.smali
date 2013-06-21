.class public final Lorg/cocos2d/opengl/g;
.super Lorg/cocos2d/g/i;


# instance fields
.field a:[I

.field b:[I

.field c:Lorg/cocos2d/opengl/i;

.field protected d:Lorg/cocos2d/g/o;


# direct methods
.method private constructor <init>(II)V
    .locals 7

    const/4 v6, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-array v0, v6, [I

    iput-object v0, p0, Lorg/cocos2d/opengl/g;->a:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lorg/cocos2d/opengl/g;->b:[I

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v2, 0x8ca6

    iget-object v3, p0, Lorg/cocos2d/opengl/g;->b:[I

    invoke-interface {v0, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetIntegerv(I[II)V

    const/16 v2, 0x8

    :goto_0
    if-lt v2, p1, :cond_0

    if-lt v2, p2, :cond_0

    new-instance v3, Lorg/cocos2d/opengl/i;

    invoke-direct {v3}, Lorg/cocos2d/opengl/i;-><init>()V

    iput-object v3, p0, Lorg/cocos2d/opengl/g;->c:Lorg/cocos2d/opengl/i;

    iget-object v3, p0, Lorg/cocos2d/opengl/g;->c:Lorg/cocos2d/opengl/i;

    new-instance v4, Lorg/cocos2d/opengl/h;

    invoke-direct {v4, p0, v2}, Lorg/cocos2d/opengl/h;-><init>(Lorg/cocos2d/opengl/g;I)V

    invoke-virtual {v3, v4}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/r;)V

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->a:[I

    invoke-interface {v0, v6, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->a:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    const v2, 0x8ce0

    const/16 v3, 0xde1

    iget-object v4, p0, Lorg/cocos2d/opengl/g;->c:Lorg/cocos2d/opengl/i;

    invoke-virtual {v4}, Lorg/cocos2d/opengl/i;->d()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v2

    const v3, 0x8cd5

    if-eq v2, v3, :cond_1

    const-string v0, "Render Texture"

    const-string v1, "Could not attach texture to framebuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/cocos2d/opengl/g;->c:Lorg/cocos2d/opengl/i;

    invoke-static {v2}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/g/o;

    move-result-object v2

    iput-object v2, p0, Lorg/cocos2d/opengl/g;->d:Lorg/cocos2d/g/o;

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->d:Lorg/cocos2d/g/o;

    const/high16 v3, -0x4080

    invoke-virtual {v2, v3}, Lorg/cocos2d/g/o;->d(F)V

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->d:Lorg/cocos2d/g/o;

    invoke-virtual {p0, v2}, Lorg/cocos2d/opengl/g;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->b:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    goto :goto_1
.end method

.method public static a(II)Lorg/cocos2d/opengl/g;
    .locals 1

    new-instance v0, Lorg/cocos2d/opengl/g;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/g;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/cocos2d/g/o;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/g;->d:Lorg/cocos2d/g/o;

    return-object v0
.end method

.method public final b()V
    .locals 10

    const/high16 v7, 0x3f80

    const/high16 v6, -0x4080

    const/4 v9, 0x0

    sget-object v1, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v1}, Lorg/cocos2d/b/a;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->c:Lorg/cocos2d/opengl/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v8

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->g()Lorg/cocos2d/l/g;

    move-result-object v2

    iget v3, v2, Lorg/cocos2d/l/g;->a:F

    iget v4, v8, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v3, v4

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget v4, v8, Lorg/cocos2d/l/g;->b:F

    div-float v5, v2, v4

    div-float v2, v6, v3

    div-float v3, v7, v3

    div-float v4, v6, v5

    div-float v5, v7, v5

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    iget v2, v8, Lorg/cocos2d/l/g;->a:F

    float-to-int v2, v2

    iget v3, v8, Lorg/cocos2d/l/g;->b:F

    float-to-int v3, v3

    invoke-interface {v1, v9, v9, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const v2, 0x8ca6

    iget-object v3, p0, Lorg/cocos2d/opengl/g;->b:[I

    invoke-interface {v1, v2, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    move-object v0, v1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move-object v2, v0

    const v3, 0x8d40

    iget-object v4, p0, Lorg/cocos2d/opengl/g;->a:[I

    aget v4, v4, v9

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-static {v1}, Lorg/cocos2d/b/a;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v1, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const v2, 0x8d40

    iget-object v3, p0, Lorg/cocos2d/opengl/g;->b:[I

    aget v3, v3, v5

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->g()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    float-to-int v2, v2

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    float-to-int v0, v0

    invoke-interface {v1, v5, v5, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-interface {v1, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/cocos2d/opengl/g;->b()V

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v3, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/g;->c()V

    return-void
.end method

.method public final finalize()V
    .locals 4

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/cocos2d/opengl/g;->a:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
