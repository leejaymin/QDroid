.class public final Lorg/cocos2d/a/c/q;
.super Lorg/cocos2d/a/c/s;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/c/s;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/q;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/q;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/c/q;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 8

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f00

    const/4 v0, 0x1

    iget v1, p0, Lorg/cocos2d/a/c/q;->d:F

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    mul-float v1, p1, v4

    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/c/q;->c:Lorg/cocos2d/a/f/i;

    float-to-double v1, v1

    iget v3, p0, Lorg/cocos2d/a/c/q;->d:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/cocos2d/a/c/q;->c:Lorg/cocos2d/a/f/i;

    int-to-float v3, v0

    mul-float/2addr v3, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    iget v1, p0, Lorg/cocos2d/a/c/q;->d:F

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    goto :goto_0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/q;

    iget-object v1, p0, Lorg/cocos2d/a/c/q;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/q;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/q;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method
