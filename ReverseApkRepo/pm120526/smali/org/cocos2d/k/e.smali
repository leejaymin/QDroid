.class public Lorg/cocos2d/k/e;
.super Lorg/cocos2d/k/aa;


# instance fields
.field a:Lorg/cocos2d/l/k;


# virtual methods
.method public final a_()V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const v2, -0x5210522

    const/high16 v5, 0x4000

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/e;->a:Lorg/cocos2d/l/k;

    invoke-static {v0}, Lorg/cocos2d/e/a;->a(Lorg/cocos2d/l/k;)Lorg/cocos2d/e/a;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/e;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v4}, Lorg/cocos2d/e/d;->c(Z)V

    invoke-virtual {p0, v0, v6, v2}, Lorg/cocos2d/k/e;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {p0, v2}, Lorg/cocos2d/k/e;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/k/e;->d:F

    div-float/2addr v1, v5

    invoke-static {v1}, Lorg/cocos2d/a/f/f;->c(F)Lorg/cocos2d/a/f/f;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const-string v3, "hideOutShowIn"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lorg/cocos2d/k/e;->d:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "finish"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-super {p0}, Lorg/cocos2d/k/aa;->g()V

    const v0, -0x5210522

    invoke-virtual {p0, v0}, Lorg/cocos2d/k/e;->d(I)V

    return-void
.end method
