.class public final Lorg/cocos2d/a/c/d;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/d;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/d;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 5

    const/high16 v4, 0x3f80

    sub-float v0, p1, v4

    iget-object v1, p0, Lorg/cocos2d/a/c/d;->c:Lorg/cocos2d/a/f/i;

    mul-float v2, v0, v0

    const v3, 0x402ce6b0

    mul-float/2addr v0, v3

    const v3, 0x3fd9cd60

    add-float/2addr v0, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/d;

    iget-object v1, p0, Lorg/cocos2d/a/c/d;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/d;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/b;

    iget-object v1, p0, Lorg/cocos2d/a/c/d;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/b;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
