.class public final Lorg/cocos2d/a/f/e;
.super Lorg/cocos2d/a/f/i;


# direct methods
.method protected constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    return-void
.end method

.method public static c(F)Lorg/cocos2d/a/f/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/e;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/f/e;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 0

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/e;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/e;

    iget v1, p0, Lorg/cocos2d/a/f/e;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/e;-><init>(F)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/e;

    iget v1, p0, Lorg/cocos2d/a/f/e;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/e;-><init>(F)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/e;->j()Lorg/cocos2d/a/f/e;

    move-result-object v0

    return-object v0
.end method
