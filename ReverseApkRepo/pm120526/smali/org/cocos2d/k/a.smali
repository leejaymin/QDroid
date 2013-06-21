.class public Lorg/cocos2d/k/a;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/k/aa;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final a_()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v6, 0x4000

    const/4 v7, 0x0

    const/high16 v5, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    new-instance v0, Lorg/cocos2d/l/k;

    invoke-direct {v0, v7, v7, v7, v7}, Lorg/cocos2d/l/k;-><init>(IIII)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    invoke-static {v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v0

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    float-to-int v2, v2

    iget v3, v1, Lorg/cocos2d/l/g;->b:F

    float-to-int v3, v3

    invoke-static {v2, v3}, Lorg/cocos2d/opengl/g;->a(II)Lorg/cocos2d/opengl/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lorg/cocos2d/g/o;->c(FF)V

    iget v3, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v3, v6

    iget v4, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/cocos2d/opengl/g;->d(FF)V

    invoke-virtual {v2, v5, v5}, Lorg/cocos2d/opengl/g;->c(FF)V

    invoke-virtual {v2}, Lorg/cocos2d/opengl/g;->b()V

    iget-object v3, p0, Lorg/cocos2d/k/a;->b:Lorg/cocos2d/e/d;

    sget-object v4, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v3, v4}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {v2}, Lorg/cocos2d/opengl/g;->c()V

    iget v3, v1, Lorg/cocos2d/l/g;->a:F

    float-to-int v3, v3

    iget v4, v1, Lorg/cocos2d/l/g;->b:F

    float-to-int v4, v4

    invoke-static {v3, v4}, Lorg/cocos2d/opengl/g;->a(II)Lorg/cocos2d/opengl/g;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lorg/cocos2d/g/o;->c(FF)V

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v4, v6

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v6

    invoke-virtual {v3, v4, v1}, Lorg/cocos2d/opengl/g;->d(FF)V

    invoke-virtual {v3, v5, v5}, Lorg/cocos2d/opengl/g;->c(FF)V

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->b()V

    iget-object v1, p0, Lorg/cocos2d/k/a;->c:Lorg/cocos2d/e/d;

    sget-object v4, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, v4}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->c()V

    new-instance v1, Lorg/cocos2d/l/i;

    invoke-direct {v1, v8, v8}, Lorg/cocos2d/l/i;-><init>(II)V

    new-instance v4, Lorg/cocos2d/l/i;

    const/16 v5, 0x302

    const/16 v6, 0x303

    invoke-direct {v4, v5, v6}, Lorg/cocos2d/l/i;-><init>(II)V

    invoke-virtual {v2}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/i;)V

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/i;)V

    invoke-virtual {v0, v2}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v0, v3}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-virtual {v2}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(I)V

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->a(I)V

    iget v1, p0, Lorg/cocos2d/k/a;->d:F

    invoke-static {v1}, Lorg/cocos2d/a/f/h;->c(F)Lorg/cocos2d/a/f/h;

    move-result-object v1

    new-array v2, v9, [Lorg/cocos2d/a/a/b;

    const-string v4, "hideOutShowIn"

    invoke-static {p0, v4}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "finish"

    invoke-static {p0, v4}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v3}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const v1, -0x5210522

    invoke-virtual {p0, v0, v9, v1}, Lorg/cocos2d/k/a;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    return-void
.end method

.method public final g()V
    .locals 1

    const v0, -0x5210522

    invoke-virtual {p0, v0}, Lorg/cocos2d/k/a;->d(I)V

    invoke-super {p0}, Lorg/cocos2d/k/aa;->g()V

    return-void
.end method
