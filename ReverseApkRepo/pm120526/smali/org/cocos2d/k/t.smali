.class public Lorg/cocos2d/k/t;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 5

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/t;->b:Lorg/cocos2d/e/d;

    const v1, 0x3a83126f

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v0, p0, Lorg/cocos2d/k/t;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v3}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v0, p0, Lorg/cocos2d/k/t;->b:Lorg/cocos2d/e/d;

    const v1, 0x3f2aaaab

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/e/d;->c(FF)V

    iget-object v0, p0, Lorg/cocos2d/k/t;->c:Lorg/cocos2d/e/d;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/e/d;->c(FF)V

    iget v0, p0, Lorg/cocos2d/k/t;->d:F

    const v1, 0x3c23d70a

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/k/t;->d:F

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/k/t;->b:Lorg/cocos2d/e/d;

    invoke-static {v1, v4}, Lorg/cocos2d/a/c/r;->a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/r;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/k/t;->c:Lorg/cocos2d/e/d;

    invoke-static {v0, v4}, Lorg/cocos2d/a/c/r;->a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/r;

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

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
