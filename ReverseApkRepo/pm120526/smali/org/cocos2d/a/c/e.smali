.class public abstract Lorg/cocos2d/a/c/e;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method protected static c(F)F
    .locals 5

    const/high16 v4, 0x40f2

    float-to-double v0, p0

    const-wide v2, 0x3fd745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-float v0, v4, p0

    mul-float/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fe745d1745d1746L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const v0, 0x3f0ba2e9

    sub-float v0, p0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3fed1745d1745d17L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const v0, 0x3f51745d

    sub-float v0, p0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f70

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x3f745d17

    sub-float v0, p0, v0

    mul-float v1, v4, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c

    add-float/2addr v0, v1

    goto :goto_0
.end method
