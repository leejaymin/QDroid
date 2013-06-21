.class public final Lorg/cocos2d/a/c/k;
.super Lorg/cocos2d/a/c/i;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/c/i;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/k;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/k;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/c/k;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 9

    const v8, 0x40c90fdb

    const/high16 v4, 0x3f80

    const-wide/high16 v6, 0x4000

    const/4 v3, 0x0

    cmpl-float v0, p1, v3

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v4

    if-nez v0, :cond_1

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/c/k;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_1
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/cocos2d/a/c/k;->d:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    const v1, 0x3ee66667

    iput v1, p0, Lorg/cocos2d/a/c/k;->d:F

    :cond_2
    iget v1, p0, Lorg/cocos2d/a/c/k;->d:F

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    sub-float/2addr v0, v4

    cmpg-float v2, v0, v3

    if-gez v2, :cond_3

    const-wide/high16 v2, -0x4020

    const/high16 v4, 0x4120

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget v1, p0, Lorg/cocos2d/a/c/k;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    :cond_3
    const/high16 v2, -0x3ee0

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    iget v1, p0, Lorg/cocos2d/a/c/k;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/k;

    iget-object v1, p0, Lorg/cocos2d/a/c/k;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/k;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/k;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/k;

    iget-object v1, p0, Lorg/cocos2d/a/c/k;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/k;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/k;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method
