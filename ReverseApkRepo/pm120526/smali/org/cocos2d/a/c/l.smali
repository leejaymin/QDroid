.class public final Lorg/cocos2d/a/c/l;
.super Lorg/cocos2d/a/c/i;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/c/i;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/l;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/l;

    const v1, 0x3e99999a

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/c/l;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public static b(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/l;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/l;

    const v1, 0x3eb33333

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/c/l;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    move v0, p1

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/c/l;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_1
    iget v0, p0, Lorg/cocos2d/a/c/l;->d:F

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    const-wide/high16 v1, 0x4000

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-float v0, p1, v0

    const v3, 0x40c90fdb

    mul-float/2addr v0, v3

    iget v3, p0, Lorg/cocos2d/a/c/l;->d:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v0, v1, v3

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/l;

    iget-object v1, p0, Lorg/cocos2d/a/c/l;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/l;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/l;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/j;

    iget-object v1, p0, Lorg/cocos2d/a/c/l;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/l;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/j;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method
