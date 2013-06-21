.class public Lorg/cocos2d/k/s;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 7

    const v3, 0x3a83126f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    const/high16 v2, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/s;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v3}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v0, p0, Lorg/cocos2d/k/s;->c:Lorg/cocos2d/e/d;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v0, p0, Lorg/cocos2d/k/s;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/e/d;->c(FF)V

    iget-object v0, p0, Lorg/cocos2d/k/s;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v2, v2}, Lorg/cocos2d/e/d;->c(FF)V

    iget v0, p0, Lorg/cocos2d/k/s;->d:F

    div-float/2addr v0, v4

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v0

    new-array v1, v6, [Lorg/cocos2d/a/a/b;

    iget v2, p0, Lorg/cocos2d/k/s;->d:F

    div-float/2addr v2, v4

    const/high16 v3, 0x4434

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/r;->a(FF)Lorg/cocos2d/a/f/r;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/w;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;

    move-result-object v0

    new-array v1, v6, [Lorg/cocos2d/a/a/b;

    iget v2, p0, Lorg/cocos2d/k/s;->d:F

    div-float/2addr v2, v4

    invoke-static {v2}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/s;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/k/s;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v2, v6, [Lorg/cocos2d/a/a/b;

    const-string v3, "finish"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
