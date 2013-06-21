.class public final Lorg/cocos2d/a/c/u;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/u;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/u;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/u;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 6

    iget-object v0, p0, Lorg/cocos2d/a/c/u;->c:Lorg/cocos2d/a/f/i;

    const/high16 v1, -0x4100

    const-wide v2, 0x400921fb54442d18L

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final synthetic j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/u;

    iget-object v1, p0, Lorg/cocos2d/a/c/u;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/u;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/u;

    iget-object v1, p0, Lorg/cocos2d/a/c/u;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/u;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
