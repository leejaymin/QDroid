.class public Lorg/cocos2d/k/j;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4080

    const/high16 v4, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    iget-object v1, p0, Lorg/cocos2d/k/j;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v4}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v1, p0, Lorg/cocos2d/k/j;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v0, v3}, Lorg/cocos2d/e/d;->d(FF)V

    iget-object v1, p0, Lorg/cocos2d/k/j;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/e/d;->c(FF)V

    iget-object v1, p0, Lorg/cocos2d/k/j;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v4, v4}, Lorg/cocos2d/e/d;->c(FF)V

    iget v1, p0, Lorg/cocos2d/k/j;->d:F

    div-float/2addr v1, v5

    neg-float v2, v0

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    div-float/2addr v0, v5

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lorg/cocos2d/a/f/j;->a(FLorg/cocos2d/l/e;FI)Lorg/cocos2d/a/f/j;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/k/j;->d:F

    div-float/2addr v1, v5

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/k/j;->d:F

    div-float/2addr v2, v5

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v2

    new-array v3, v7, [Lorg/cocos2d/a/a/b;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v3, v7, [Lorg/cocos2d/a/a/b;

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/k/j;->d:F

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    invoke-static {v1}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v1

    iget-object v3, p0, Lorg/cocos2d/k/j;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v3, v2}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v2, p0, Lorg/cocos2d/k/j;->b:Lorg/cocos2d/e/d;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v0, v3, v6

    const-string v0, "finish"

    invoke-static {p0, v0}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
