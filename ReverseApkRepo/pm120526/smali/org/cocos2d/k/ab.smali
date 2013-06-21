.class public Lorg/cocos2d/k/ab;
.super Lorg/cocos2d/k/aa;


# virtual methods
.method public final a_()V
    .locals 5

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    div-float v0, v1, v0

    const/high16 v1, 0x4140

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    iget v2, p0, Lorg/cocos2d/k/ab;->d:F

    invoke-static {v1, v0, v2}, Lorg/cocos2d/a/g/l;->a(ILorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/l;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/ab;->c:Lorg/cocos2d/e/d;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const/4 v3, 0x0

    const-string v4, "finish"

    invoke-static {p0, v4}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/cocos2d/a/d/k;->j()Lorg/cocos2d/a/d/k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method
