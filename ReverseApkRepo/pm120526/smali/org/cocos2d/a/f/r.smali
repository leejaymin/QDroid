.class public final Lorg/cocos2d/a/f/r;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/r;->c:F

    return-void
.end method

.method public static a(FF)Lorg/cocos2d/a/f/r;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/r;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/r;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/r;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->i()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/a/f/r;->d:F

    return-void
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/f/r;->a:Lorg/cocos2d/g/i;

    iget v1, p0, Lorg/cocos2d/a/f/r;->d:F

    iget v2, p0, Lorg/cocos2d/a/f/r;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->b(F)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/r;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/r;

    iget v1, p0, Lorg/cocos2d/a/f/r;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/r;->c:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/r;-><init>(FF)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/r;->j()Lorg/cocos2d/a/f/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/r;

    iget v1, p0, Lorg/cocos2d/a/f/r;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/r;->c:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/r;-><init>(FF)V

    return-object v0
.end method
