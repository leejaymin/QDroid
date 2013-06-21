.class public Lorg/cocos2d/a/d/b;
.super Lorg/cocos2d/a/d/a;


# virtual methods
.method public final b(F)V
    .locals 10

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Lorg/cocos2d/l/c;

    invoke-direct {v2, v4, v4, v4}, Lorg/cocos2d/l/c;-><init>(FFF)V

    invoke-static {v7, v7}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v3

    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v4

    iget v3, v3, Lorg/cocos2d/l/c;->b:F

    iget v4, v4, Lorg/cocos2d/l/c;->b:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v4

    invoke-static {v6, v7}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-static {v7, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    invoke-static {v7, v7}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v7

    move-object v8, v7

    move v7, v3

    move-object v3, v8

    move-object v9, v4

    move-object v4, v6

    move-object v6, v9

    :goto_0
    mul-float/2addr v0, v7

    sub-float v0, v7, v0

    iput v0, v2, Lorg/cocos2d/l/c;->b:F

    mul-float v0, v7, v1

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v2, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v6}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v2, Lorg/cocos2d/l/c;->b:F

    iput v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v7, v2, Lorg/cocos2d/l/c;->c:F

    add-float/2addr v1, v7

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v6, v0}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v5}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v6, v2, Lorg/cocos2d/l/c;->b:F

    sub-float/2addr v1, v6

    iput v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v6, v2, Lorg/cocos2d/l/c;->c:F

    sub-float/2addr v1, v6

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v5, v0}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v4}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v2, Lorg/cocos2d/l/c;->b:F

    iput v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v5, v2, Lorg/cocos2d/l/c;->c:F

    add-float/2addr v1, v5

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v4, v0}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v4, v2, Lorg/cocos2d/l/c;->b:F

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/cocos2d/l/c;->b:F

    iget v1, v0, Lorg/cocos2d/l/c;->c:F

    iget v2, v2, Lorg/cocos2d/l/c;->c:F

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/l/c;->c:F

    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/a/d/b;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    return-void

    :cond_0
    invoke-static {v6, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-static {v6, v7}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-static {v7, v6}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    invoke-static {v7, v7}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v7

    move-object v8, v6

    move-object v6, v5

    move-object v5, v3

    move-object v3, v8

    move-object v9, v7

    move v7, v4

    move-object v4, v9

    goto :goto_0
.end method
