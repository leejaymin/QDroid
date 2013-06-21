.class public Lorg/cocos2d/a/g/d;
.super Lorg/cocos2d/a/g/c;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/g/c;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method

.method public static e(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/g/d;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/g/d;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public b(Lorg/cocos2d/l/m;F)F
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/g/d;->d:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/a/g/d;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    int-to-float v1, v1

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public final d(Lorg/cocos2d/l/m;F)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    invoke-virtual {p0, p1}, Lorg/cocos2d/a/g/d;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/g/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->c()Lorg/cocos2d/l/e;

    move-result-object v1

    iget v2, v0, Lorg/cocos2d/l/o;->b:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->b:F

    iget v2, v0, Lorg/cocos2d/l/o;->e:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->e:F

    iget v2, v0, Lorg/cocos2d/l/o;->h:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v3, v6

    sub-float v4, v5, p2

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v0, Lorg/cocos2d/l/o;->h:F

    iget v2, v0, Lorg/cocos2d/l/o;->k:F

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    div-float/2addr v1, v6

    sub-float v3, v5, p2

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, v0, Lorg/cocos2d/l/o;->k:F

    invoke-virtual {p0, p1, v0}, Lorg/cocos2d/a/g/d;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    return-void
.end method
