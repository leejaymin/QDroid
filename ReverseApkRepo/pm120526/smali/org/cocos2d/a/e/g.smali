.class public final Lorg/cocos2d/a/e/g;
.super Lorg/cocos2d/a/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/e/e;-><init>()V

    return-void
.end method

.method public static j()Lorg/cocos2d/a/e/g;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/e/g;

    invoke-direct {v0}, Lorg/cocos2d/a/e/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/e/e;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/e/g;->a:Lorg/cocos2d/g/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    return-void
.end method

.method public final i()Lorg/cocos2d/a/a/b;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/e/d;

    invoke-direct {v0}, Lorg/cocos2d/a/e/d;-><init>()V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/e/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/e/g;

    invoke-direct {v0}, Lorg/cocos2d/a/e/g;-><init>()V

    return-object v0
.end method
