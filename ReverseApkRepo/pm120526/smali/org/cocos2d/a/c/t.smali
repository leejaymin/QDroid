.class public final Lorg/cocos2d/a/c/t;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/t;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/t;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/t;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/c/t;->c:Lorg/cocos2d/a/f/i;

    const/high16 v1, -0x4080

    const v2, 0x40490fdb

    mul-float/2addr v2, p1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final synthetic j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/t;

    iget-object v1, p0, Lorg/cocos2d/a/c/t;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/t;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/v;

    iget-object v1, p0, Lorg/cocos2d/a/c/t;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/v;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
