.class public final Lorg/cocos2d/l/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFLorg/cocos2d/l/d;Lorg/cocos2d/l/e;)V
    .locals 6

    float-to-double v0, p0

    iget-wide v2, p2, Lorg/cocos2d/l/d;->a:D

    mul-double/2addr v0, v2

    float-to-double v2, p1

    iget-wide v4, p2, Lorg/cocos2d/l/d;->c:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/cocos2d/l/d;->e:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lorg/cocos2d/l/e;->a:F

    float-to-double v0, p0

    iget-wide v2, p2, Lorg/cocos2d/l/d;->b:D

    mul-double/2addr v0, v2

    float-to-double v2, p1

    iget-wide v4, p2, Lorg/cocos2d/l/d;->d:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/cocos2d/l/d;->f:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/l/e;->a:F

    iput v0, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;F)V
    .locals 1

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)V
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/l/e;->a:F

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/cocos2d/l/e;->b:F

    return-void
.end method
