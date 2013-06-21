.class public Lorg/cocos2d/e/d;
.super Lorg/cocos2d/g/i;


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/cocos2d/e/d;->b(Z)V

    invoke-virtual {p0, v2, v2}, Lorg/cocos2d/e/d;->c(FF)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/l/g;)V

    return-void
.end method

.method public static a()Lorg/cocos2d/e/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/e/d;

    invoke-direct {v0}, Lorg/cocos2d/e/d;-><init>()V

    return-object v0
.end method
