.class public abstract Lorg/cocos2d/a/b/a;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F


# direct methods
.method protected constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    new-array v0, v2, [F

    new-array v1, v2, [F

    new-array v2, v2, [F

    iget-object v3, p0, Lorg/cocos2d/a/b/a;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v3}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/e;->b([F[F[F)V

    aget v3, v0, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->c:F

    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->d:F

    aget v3, v2, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->e:F

    iget-object v3, p0, Lorg/cocos2d/a/b/a;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v3}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/e;->a([F[F[F)V

    aget v3, v0, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->f:F

    aget v3, v1, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->g:F

    aget v3, v2, v4

    iput v3, p0, Lorg/cocos2d/a/b/a;->h:F

    iget-object v3, p0, Lorg/cocos2d/a/b/a;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v3}, Lorg/cocos2d/g/i;->t()Lorg/cocos2d/opengl/e;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lorg/cocos2d/opengl/e;->c([F[F[F)V

    aget v0, v0, v4

    iput v0, p0, Lorg/cocos2d/a/b/a;->i:F

    aget v0, v1, v4

    iput v0, p0, Lorg/cocos2d/a/b/a;->j:F

    aget v0, v2, v4

    iput v0, p0, Lorg/cocos2d/a/b/a;->k:F

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/q;
    .locals 1

    invoke-static {p0}, Lorg/cocos2d/a/f/q;->a(Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-static {p0}, Lorg/cocos2d/a/f/q;->a(Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/q;

    move-result-object v0

    return-object v0
.end method
