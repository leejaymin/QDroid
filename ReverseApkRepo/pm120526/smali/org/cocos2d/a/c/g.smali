.class public final Lorg/cocos2d/a/c/g;
.super Lorg/cocos2d/a/c/e;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/e;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/g;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/g;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/g;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 7

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-float v0, p1, v6

    sub-float v0, v5, v0

    invoke-static {v0}, Lorg/cocos2d/a/c/g;->c(F)F

    move-result v0

    sub-float v0, v5, v0

    mul-float/2addr v0, v4

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/c/g;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void

    :cond_0
    mul-float v0, p1, v6

    sub-float/2addr v0, v5

    invoke-static {v0}, Lorg/cocos2d/a/c/g;->c(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v4

    goto :goto_0
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/g;

    iget-object v1, p0, Lorg/cocos2d/a/c/g;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/g;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/g;

    iget-object v1, p0, Lorg/cocos2d/a/c/g;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/g;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
