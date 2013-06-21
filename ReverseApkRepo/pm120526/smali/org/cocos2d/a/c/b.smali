.class public final Lorg/cocos2d/a/c/b;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/b;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/b;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/b;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/c/b;->c:Lorg/cocos2d/a/f/i;

    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const v3, 0x3fd9cd60

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/b;

    iget-object v1, p0, Lorg/cocos2d/a/c/b;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/b;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/d;

    iget-object v1, p0, Lorg/cocos2d/a/c/b;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/d;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
