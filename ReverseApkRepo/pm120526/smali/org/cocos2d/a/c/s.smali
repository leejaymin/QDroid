.class public Lorg/cocos2d/a/c/s;
.super Lorg/cocos2d/a/c/a;


# instance fields
.field d:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    iput p2, p0, Lorg/cocos2d/a/c/s;->d:F

    return-void
.end method


# virtual methods
.method public final synthetic j()Lorg/cocos2d/a/c/a;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/c/s;->m()Lorg/cocos2d/a/c/s;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/cocos2d/a/f/i;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/c/s;

    iget-object v1, p0, Lorg/cocos2d/a/c/s;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    const/high16 v2, 0x3f80

    iget v3, p0, Lorg/cocos2d/a/c/s;->d:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/s;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public m()Lorg/cocos2d/a/c/s;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/c/s;

    iget-object v1, p0, Lorg/cocos2d/a/c/s;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/c/s;->d:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/c/s;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method
