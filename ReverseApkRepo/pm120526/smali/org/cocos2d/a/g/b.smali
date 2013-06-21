.class public Lorg/cocos2d/a/g/b;
.super Lorg/cocos2d/a/g/d;


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/g/d;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/b;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/g/b;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/g/b;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(Lorg/cocos2d/l/m;F)F
    .locals 4

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lorg/cocos2d/a/g/b;->d:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/cocos2d/a/g/b;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget v1, p1, Lorg/cocos2d/l/m;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4018

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method
