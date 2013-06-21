.class public final Lorg/cocos2d/a/f/f;
.super Lorg/cocos2d/a/f/i;


# direct methods
.method protected constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    return-void
.end method

.method public static c(F)Lorg/cocos2d/a/f/f;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/f;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/f/f;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 1

    iget-object p0, p0, Lorg/cocos2d/a/f/f;->a:Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/i/c;

    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-interface {p0, v0}, Lorg/cocos2d/i/c;->a(I)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/g;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/g;

    iget v1, p0, Lorg/cocos2d/a/f/f;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/g;-><init>(F)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/f;->j()Lorg/cocos2d/a/f/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/f;

    iget v1, p0, Lorg/cocos2d/a/f/f;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/f;-><init>(F)V

    return-object v0
.end method
