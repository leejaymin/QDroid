.class public final Lorg/cocos2d/a/c/h;
.super Lorg/cocos2d/a/c/e;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/e;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/h;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/h;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/h;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 2

    invoke-static {p1}, Lorg/cocos2d/a/c/h;->c(F)F

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/a/c/h;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/h;

    iget-object v1, p0, Lorg/cocos2d/a/c/h;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/h;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/f;

    iget-object v1, p0, Lorg/cocos2d/a/c/h;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/f;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
