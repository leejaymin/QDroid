.class public Lorg/cocos2d/k/w;
.super Lorg/cocos2d/k/v;


# virtual methods
.method protected final b()V
    .locals 3

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/w;->b:Lorg/cocos2d/e/d;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x3f00

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/cocos2d/e/d;->d(FF)V

    return-void
.end method

.method public final c()Lorg/cocos2d/a/f/i;
    .locals 3

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/k/w;->d:F

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v2, 0x3f00

    sub-float/2addr v0, v2

    neg-float v0, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v0

    return-object v0
.end method
