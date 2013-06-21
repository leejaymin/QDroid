.class public final Lorg/cocos2d/a/f/s;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:F

.field private d:F

.field private e:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/s;->c:F

    return-void
.end method

.method public static a(FF)Lorg/cocos2d/a/f/s;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/s;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/s;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 3

    const/high16 v2, 0x43b4

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/s;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->i()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/a/f/s;->e:F

    iget v0, p0, Lorg/cocos2d/a/f/s;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lorg/cocos2d/a/f/s;->e:F

    rem-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/a/f/s;->e:F

    :goto_0
    iget v0, p0, Lorg/cocos2d/a/f/s;->c:F

    iget v1, p0, Lorg/cocos2d/a/f/s;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/s;->d:F

    iget v0, p0, Lorg/cocos2d/a/f/s;->d:F

    const/high16 v1, 0x4334

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/a/f/s;->d:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/a/f/s;->d:F

    :cond_0
    iget v0, p0, Lorg/cocos2d/a/f/s;->d:F

    const/high16 v1, -0x3ccc

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/cocos2d/a/f/s;->d:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/a/f/s;->d:F

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/cocos2d/a/f/s;->e:F

    const/high16 v1, -0x3c4c

    rem-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/s;->e:F

    goto :goto_0
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/f/s;->a:Lorg/cocos2d/g/i;

    iget v1, p0, Lorg/cocos2d/a/f/s;->e:F

    iget v2, p0, Lorg/cocos2d/a/f/s;->d:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->b(F)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/s;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/s;

    iget v1, p0, Lorg/cocos2d/a/f/s;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/s;->c:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/s;-><init>(FF)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/s;->j()Lorg/cocos2d/a/f/s;

    move-result-object v0

    return-object v0
.end method
