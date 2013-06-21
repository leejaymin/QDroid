.class public Lorg/cocos2d/a/c/a;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:Lorg/cocos2d/a/f/i;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cocos2d/a/f/i;->g()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput-object p1, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    iget-object v1, p0, Lorg/cocos2d/a/c/a;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/a/f/i;->b(F)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/a;

    iget-object v1, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/a;

    iget-object v1, p0, Lorg/cocos2d/a/c/a;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/c/a;->j()Lorg/cocos2d/a/c/a;

    move-result-object v0

    return-object v0
.end method
