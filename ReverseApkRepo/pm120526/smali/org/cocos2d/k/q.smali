.class public Lorg/cocos2d/k/q;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 6

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    float-to-int v1, v1

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/g;->a(II)Lorg/cocos2d/opengl/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lorg/cocos2d/g/o;->c(FF)V

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/cocos2d/opengl/g;->d(FF)V

    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/opengl/g;->c(FF)V

    invoke-virtual {v1}, Lorg/cocos2d/opengl/g;->d()V

    invoke-virtual {v1}, Lorg/cocos2d/opengl/g;->b()V

    iget-object v2, p0, Lorg/cocos2d/k/q;->c:Lorg/cocos2d/e/d;

    sget-object v3, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3}, Lorg/cocos2d/e/d;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {v1}, Lorg/cocos2d/opengl/g;->c()V

    invoke-virtual {p0}, Lorg/cocos2d/k/q;->d()V

    invoke-virtual {v1}, Lorg/cocos2d/opengl/g;->a()Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/o;->I()Lorg/cocos2d/opengl/i;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/d;->b()Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/o;->H()V

    invoke-virtual {p0}, Lorg/cocos2d/k/q;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/a/d;->a(I)V

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v2}, Lorg/cocos2d/a/d;->a(F)V

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v5

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v0, v5

    invoke-virtual {v1, v2, v0}, Lorg/cocos2d/a/d;->d(FF)V

    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/a/d;->c(FF)V

    iget v0, p0, Lorg/cocos2d/k/q;->d:F

    invoke-static {v0}, Lorg/cocos2d/a/f/n;->c(F)Lorg/cocos2d/a/f/n;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    const-string v4, "finish"

    invoke-static {p0, v4}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/4 v0, 0x2

    const v2, 0xc001

    invoke-virtual {p0, v1, v0, v2}, Lorg/cocos2d/k/q;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    const v0, 0xc001

    invoke-virtual {p0, v0}, Lorg/cocos2d/k/q;->d(I)V

    invoke-super {p0}, Lorg/cocos2d/k/aa;->g()V

    return-void
.end method
