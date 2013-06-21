.class public final Lorg/cocos2d/a/d/k;
.super Lorg/cocos2d/a/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/e/e;-><init>()V

    return-void
.end method

.method public static j()Lorg/cocos2d/a/d/k;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d/k;

    invoke-direct {v0}, Lorg/cocos2d/a/d/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/e/e;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/d/k;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/d/c;->a(Z)V

    :cond_0
    return-void
.end method
