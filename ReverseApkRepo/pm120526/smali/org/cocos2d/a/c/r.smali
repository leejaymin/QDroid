.class public final Lorg/cocos2d/a/c/r;
.super Lorg/cocos2d/a/c/s;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/c/s;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;F)Lorg/cocos2d/a/c/r;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/r;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/c/r;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/a/c/r;->c:Lorg/cocos2d/a/f/i;

    float-to-double v1, p1

    const/high16 v3, 0x3f80

    iget v4, p0, Lorg/cocos2d/a/c/r;->d:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method
