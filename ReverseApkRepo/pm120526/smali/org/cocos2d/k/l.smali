.class public Lorg/cocos2d/k/l;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 5

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/k/l;->b()V

    iget v0, p0, Lorg/cocos2d/k/l;->d:F

    new-instance v1, Lorg/cocos2d/l/e;

    invoke-direct {v1}, Lorg/cocos2d/l/e;-><init>()V

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/l;->b:Lorg/cocos2d/e/d;

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Lorg/cocos2d/a/c/r;->a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/r;

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

.method protected b()V
    .locals 3

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/l;->b:Lorg/cocos2d/e/d;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/e/d;->d(FF)V

    return-void
.end method
