.class public final Lorg/cocos2d/a/c/o;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/o;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/o;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/o;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lorg/cocos2d/a/c/o;->c:Lorg/cocos2d/a/f/i;

    cmpl-float v1, p1, v4

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_0
    const-wide/high16 v1, 0x4000

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    neg-double v1, v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_0
.end method

.method public final synthetic j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/o;

    iget-object v1, p0, Lorg/cocos2d/a/c/o;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/o;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/m;

    iget-object v1, p0, Lorg/cocos2d/a/c/o;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/m;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
