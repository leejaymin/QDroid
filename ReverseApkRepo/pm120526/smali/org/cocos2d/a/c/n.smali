.class public final Lorg/cocos2d/a/c/n;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/n;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/n;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/n;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 6

    const-wide/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    div-float v0, p1, v2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    const/high16 v1, 0x4120

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/c/n;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_0
    const/high16 v1, -0x3ee0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0
.end method
