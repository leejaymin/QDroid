.class public Lorg/cocos2d/a/d/g;
.super Lorg/cocos2d/a/d/c;


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/d/g;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d/g;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/d/g;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 14

    const/4 v0, 0x0

    const/high16 v1, 0x3e80

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v0

    const/high16 v1, 0x43fa

    mul-float/2addr v0, v1

    const/high16 v1, -0x3d38

    sub-float v0, v1, v0

    const v1, -0x4036f025

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x3fc90fdb

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/cocos2d/a/d/g;->d:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->a:I

    if-le v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/cocos2d/a/d/g;->d:Lorg/cocos2d/l/m;

    iget v5, v5, Lorg/cocos2d/l/m;->b:I

    if-le v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/cocos2d/a/d/g;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v5

    iget v6, v5, Lorg/cocos2d/l/c;->a:F

    iget v7, v5, Lorg/cocos2d/l/c;->a:F

    mul-float/2addr v6, v7

    iget v7, v5, Lorg/cocos2d/l/c;->b:F

    sub-float/2addr v7, v0

    iget v8, v5, Lorg/cocos2d/l/c;->b:F

    sub-float/2addr v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v7, v6, v2

    iget v8, v5, Lorg/cocos2d/l/c;->a:F

    div-float/2addr v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v8, v2

    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v8

    const-wide v12, 0x400921fb54442d18L

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_3

    float-to-double v10, v7

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v8, v10

    iput v8, v5, Lorg/cocos2d/l/c;->a:F

    add-float/2addr v6, v0

    const/high16 v8, 0x3f80

    sub-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    iput v6, v5, Lorg/cocos2d/l/c;->b:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v9

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/l/c;->c:F

    :goto_2
    iget v6, v5, Lorg/cocos2d/l/c;->c:F

    const v7, 0x3f666666

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    const v6, 0x3f666666

    iput v6, v5, Lorg/cocos2d/l/c;->c:F

    :cond_2
    invoke-static {v3, v4}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/cocos2d/a/d/g;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    iput v8, v5, Lorg/cocos2d/l/c;->a:F

    add-float/2addr v6, v0

    const/high16 v8, 0x3f80

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    iput v6, v5, Lorg/cocos2d/l/c;->b:F

    const v6, 0x3a83126f

    iput v6, v5, Lorg/cocos2d/l/c;->c:F

    goto :goto_2
.end method
