.class public Lorg/cocos2d/a/d/c;
.super Lorg/cocos2d/a/d/d;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/d/d;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/d/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/d/b;

    invoke-virtual {p0, p1}, Lorg/cocos2d/d/b;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/d/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/d/b;

    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/d/b;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    return-void
.end method

.method public j()Lorg/cocos2d/a/d/c;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/d/c;

    invoke-virtual {p0}, Lorg/cocos2d/a/d/c;->o()Lorg/cocos2d/l/m;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/a/d/c;->g()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method

.method public final m()Lorg/cocos2d/d/c;
    .locals 2

    new-instance v0, Lorg/cocos2d/d/b;

    iget-object v1, p0, Lorg/cocos2d/a/d/c;->d:Lorg/cocos2d/l/m;

    invoke-direct {v0, v1}, Lorg/cocos2d/d/b;-><init>(Lorg/cocos2d/l/m;)V

    return-object v0
.end method

.method public final synthetic n()Lorg/cocos2d/a/d/d;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/d/c;->j()Lorg/cocos2d/a/d/c;

    move-result-object v0

    return-object v0
.end method
