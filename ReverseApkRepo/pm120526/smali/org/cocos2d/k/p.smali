.class public Lorg/cocos2d/k/p;
.super Lorg/cocos2d/k/aa;


# instance fields
.field protected a:Z


# virtual methods
.method public final a_()V
    .locals 7

    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/cocos2d/k/aa;->a_()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    move v0, v2

    move v1, v3

    :goto_0
    invoke-static {v1, v0}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2d/k/p;->a:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/cocos2d/k/p;->d:F

    invoke-static {v0, v1}, Lorg/cocos2d/a/d/g;->a(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/g;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/a/f/q;->a(Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/q;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lorg/cocos2d/k/p;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/k/p;->c:Lorg/cocos2d/e/d;

    new-array v2, v6, [Lorg/cocos2d/a/a/b;

    const-string v3, "finish"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lorg/cocos2d/a/d/k;->j()Lorg/cocos2d/a/d/k;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    :goto_2
    return-void

    :cond_0
    move v0, v3

    move v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/cocos2d/k/p;->d:F

    invoke-static {v0, v1}, Lorg/cocos2d/a/d/g;->a(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/g;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/cocos2d/k/p;->b:Lorg/cocos2d/e/d;

    invoke-virtual {v1, v4}, Lorg/cocos2d/e/d;->c(Z)V

    iget-object v1, p0, Lorg/cocos2d/k/p;->b:Lorg/cocos2d/e/d;

    invoke-static {}, Lorg/cocos2d/a/e/g;->j()Lorg/cocos2d/a/e/g;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/cocos2d/a/a/b;

    aput-object v0, v3, v4

    const-string v0, "finish"

    invoke-static {p0, v0}, Lorg/cocos2d/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {}, Lorg/cocos2d/a/d/k;->j()Lorg/cocos2d/a/d/k;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    goto :goto_2
.end method
