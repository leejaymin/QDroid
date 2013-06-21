.class public abstract Lorg/cocos2d/a/d/d;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected d:Lorg/cocos2d/l/m;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/cocos2d/a/f/i;-><init>(F)V

    new-instance v0, Lorg/cocos2d/l/m;

    invoke-direct {v0, p1}, Lorg/cocos2d/l/m;-><init>(Lorg/cocos2d/l/m;)V

    iput-object v0, p0, Lorg/cocos2d/a/d/d;->d:Lorg/cocos2d/l/m;

    return-void
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    invoke-virtual {p0}, Lorg/cocos2d/a/d/d;->m()Lorg/cocos2d/d/c;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/d/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->d()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->f()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/a/d/d;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->a:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->g()I

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/a/d/d;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->b:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v2, v0, :cond_1

    sget-object v0, Lorg/cocos2d/g/c;->d:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot reuse grid_"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/cocos2d/d/c;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2d/d/c;->a(Z)V

    :cond_3
    iget-object v2, p0, Lorg/cocos2d/a/d/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/d/c;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/d/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/d/c;->a(Z)V

    goto :goto_0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-static {p0}, Lorg/cocos2d/a/f/q;->a(Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/d/d;->n()Lorg/cocos2d/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public abstract m()Lorg/cocos2d/d/c;
.end method

.method public abstract n()Lorg/cocos2d/a/d/d;
.end method

.method public final o()Lorg/cocos2d/l/m;
    .locals 2

    new-instance v0, Lorg/cocos2d/l/m;

    iget-object v1, p0, Lorg/cocos2d/a/d/d;->d:Lorg/cocos2d/l/m;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/m;-><init>(Lorg/cocos2d/l/m;)V

    return-object v0
.end method
