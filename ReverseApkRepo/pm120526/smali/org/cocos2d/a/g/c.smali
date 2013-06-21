.class public Lorg/cocos2d/a/g/c;
.super Lorg/cocos2d/a/g/k;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method

.method public static c(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/c;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/g/c;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/g/c;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public b(Lorg/cocos2d/l/m;F)F
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/g/c;->d:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/a/g/c;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget v2, v0, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lorg/cocos2d/l/m;->a:I

    iget v2, p1, Lorg/cocos2d/l/m;->b:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v0, v2

    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public final b(F)V
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/g/c;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v4

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/g/c;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/cocos2d/a/g/c;->b(Lorg/cocos2d/l/m;F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    new-instance v3, Lorg/cocos2d/l/o;

    invoke-direct {v3}, Lorg/cocos2d/l/o;-><init>()V

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/a/g/c;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/g/c;->d(Lorg/cocos2d/l/m;F)V

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/g/c;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/a/g/c;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    goto :goto_2
.end method

.method public d(Lorg/cocos2d/l/m;F)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    invoke-virtual {p0, p1}, Lorg/cocos2d/a/g/c;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/g/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->c()Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/o;->a:F

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->a:F

    iget v2, v0, Lorg/cocos2d/l/o;->b:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->b:F

    iget v2, v0, Lorg/cocos2d/l/o;->d:F

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->d:F

    iget v2, v0, Lorg/cocos2d/l/o;->e:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->e:F

    iget v2, v0, Lorg/cocos2d/l/o;->g:F

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->g:F

    iget v2, v0, Lorg/cocos2d/l/o;->h:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->h:F

    iget v2, v0, Lorg/cocos2d/l/o;->j:F

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->j:F

    iget v2, v0, Lorg/cocos2d/l/o;->k:F

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v1, v6

    sub-float v3, v5, p2

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, v0, Lorg/cocos2d/l/o;->k:F

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/a/g/c;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    return-void
.end method
