.class public Lorg/cocos2d/a/f/u;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lorg/cocos2d/a/f/u;-><init>(FFF)V

    return-void
.end method

.method protected constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/u;->e:F

    iput p3, p0, Lorg/cocos2d/a/f/u;->f:F

    return-void
.end method

.method public static b(FF)Lorg/cocos2d/a/f/u;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/u;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/u;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/u;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->j()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/a/f/u;->c:F

    iget-object v0, p0, Lorg/cocos2d/a/f/u;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->k()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/a/f/u;->d:F

    iget v0, p0, Lorg/cocos2d/a/f/u;->e:F

    iget v1, p0, Lorg/cocos2d/a/f/u;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/u;->g:F

    iget v0, p0, Lorg/cocos2d/a/f/u;->f:F

    iget v1, p0, Lorg/cocos2d/a/f/u;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/u;->h:F

    return-void
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/f/u;->a:Lorg/cocos2d/g/i;

    iget v1, p0, Lorg/cocos2d/a/f/u;->c:F

    iget v2, p0, Lorg/cocos2d/a/f/u;->g:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(F)V

    iget-object v0, p0, Lorg/cocos2d/a/f/u;->a:Lorg/cocos2d/g/i;

    iget v1, p0, Lorg/cocos2d/a/f/u;->d:F

    iget v2, p0, Lorg/cocos2d/a/f/u;->h:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->d(F)V

    return-void
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/u;->n()Lorg/cocos2d/a/f/u;

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/cocos2d/a/f/u;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/u;

    iget v1, p0, Lorg/cocos2d/a/f/u;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/u;->e:F

    iget v3, p0, Lorg/cocos2d/a/f/u;->f:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/u;-><init>(FFF)V

    return-object v0
.end method
