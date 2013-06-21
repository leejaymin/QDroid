.class public Lorg/cocos2d/k/y;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/y;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v3}, Lorg/cocos2d/e/d;->c(Z)V

    invoke-virtual {p0}, Lorg/cocos2d/k/y;->b()Lorg/cocos2d/a/f/i;

    move-result-object v0

    new-array v1, v5, [Lorg/cocos2d/a/a/b;

    const-string v2, "hideOutShowIn"

    invoke-static {p0, v2}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    const/high16 v1, 0x4040

    invoke-static {v0, v1}, Lorg/cocos2d/a/c/q;->a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/q;

    move-result-object v0

    new-array v1, v5, [Lorg/cocos2d/a/a/b;

    const-string v2, "finish"

    invoke-static {p0, v2}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Lorg/cocos2d/a/d/k;->j()Lorg/cocos2d/a/d/k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/k/y;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method protected b()Lorg/cocos2d/a/f/i;
    .locals 2

    iget v0, p0, Lorg/cocos2d/k/y;->d:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/cocos2d/a/g/i;->c(F)Lorg/cocos2d/a/g/i;

    move-result-object v0

    return-object v0
.end method
