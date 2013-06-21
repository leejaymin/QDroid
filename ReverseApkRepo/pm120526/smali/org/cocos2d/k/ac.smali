.class public Lorg/cocos2d/k/ac;
.super Lorg/cocos2d/k/o;


# virtual methods
.method public final a_()V
    .locals 12

    const/high16 v3, 0x42b4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/high16 v9, 0x4000

    invoke-super {p0}, Lorg/cocos2d/k/o;->a_()V

    iget-object v0, p0, Lorg/cocos2d/k/ac;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v0, v10}, Lorg/cocos2d/e/d;->c(Z)V

    iget v0, p0, Lorg/cocos2d/k/ac;->a:I

    if-ne v0, v11, :cond_0

    const/high16 v0, 0x4387

    move v6, v3

    move v2, v0

    :goto_0
    iget v0, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v0, v9

    invoke-static {v0}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v7

    const/4 v0, 0x3

    new-array v8, v0, [Lorg/cocos2d/a/a/b;

    iget v0, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v0, v9

    const/high16 v4, -0x3dcc

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    iget v3, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v3, v9

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {}, Lorg/cocos2d/a/e/g;->j()Lorg/cocos2d/a/e/g;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/w;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;

    move-result-object v0

    aput-object v0, v8, v10

    invoke-static {}, Lorg/cocos2d/a/e/g;->j()Lorg/cocos2d/a/e/g;

    move-result-object v0

    aput-object v0, v8, v11

    const/4 v0, 0x2

    const-string v2, "finish"

    invoke-static {p0, v2}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v2

    aput-object v2, v8, v0

    invoke-static {v7, v8}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v7

    iget v0, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v0, v9

    const/high16 v4, 0x4234

    move v2, v1

    move v3, v6

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/cocos2d/a/b/b;->a(FFFFFF)Lorg/cocos2d/a/b/b;

    move-result-object v0

    new-array v1, v11, [Lorg/cocos2d/a/a/b;

    iget v2, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v2, v9

    const/high16 v3, 0x3f00

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/w;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/w;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/cocos2d/a/a/b;

    invoke-static {}, Lorg/cocos2d/a/e/d;->j()Lorg/cocos2d/a/e/d;

    move-result-object v2

    aput-object v2, v1, v10

    iget v2, p0, Lorg/cocos2d/k/ac;->d:F

    div-float/2addr v2, v9

    invoke-static {v2}, Lorg/cocos2d/a/f/e;->c(F)Lorg/cocos2d/a/f/e;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/k/ac;->b:Lorg/cocos2d/e/d;

    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Lorg/cocos2d/e/d;->e(F)V

    iget-object v1, p0, Lorg/cocos2d/k/ac;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v7}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    iget-object v1, p0, Lorg/cocos2d/k/ac;->c:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void

    :cond_0
    const/high16 v0, -0x3d4c

    const/high16 v2, -0x3d4c

    move v6, v2

    move v2, v3

    move v3, v0

    goto/16 :goto_0
.end method
