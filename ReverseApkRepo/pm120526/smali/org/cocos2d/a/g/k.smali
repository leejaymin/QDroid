.class public Lorg/cocos2d/a/g/k;
.super Lorg/cocos2d/a/d/d;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/d/d;-><init>(Lorg/cocos2d/l/m;F)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/g/k;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/d/e;

    invoke-virtual {p0, p1, p2}, Lorg/cocos2d/d/e;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    return-void
.end method

.method public final b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/g/k;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/d/e;

    invoke-virtual {p0, p1}, Lorg/cocos2d/d/e;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/cocos2d/a/g/k;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/g/k;

    invoke-virtual {p0}, Lorg/cocos2d/a/g/k;->o()Lorg/cocos2d/l/m;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/a/g/k;->g()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    return-object v0
.end method

.method public final m()Lorg/cocos2d/d/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/g/k;->d:Lorg/cocos2d/l/m;

    invoke-static {v0}, Lorg/cocos2d/d/e;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic n()Lorg/cocos2d/a/d/d;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/g/k;->j()Lorg/cocos2d/a/g/k;

    move-result-object v0

    return-object v0
.end method
