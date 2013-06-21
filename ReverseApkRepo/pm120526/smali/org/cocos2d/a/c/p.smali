.class public final Lorg/cocos2d/a/c/p;
.super Lorg/cocos2d/a/c/s;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/c/s;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/p;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/p;

    const/high16 v1, 0x4040

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/c/p;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/a/c/p;->c:Lorg/cocos2d/a/f/i;

    float-to-double v1, p1

    iget v3, p0, Lorg/cocos2d/a/c/p;->d:F

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/r;

    iget-object v1, p0, Lorg/cocos2d/a/c/p;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/p;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/r;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public final synthetic m()Lorg/cocos2d/a/c/s;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/p;

    iget-object v1, p0, Lorg/cocos2d/a/c/p;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/p;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/p;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method
