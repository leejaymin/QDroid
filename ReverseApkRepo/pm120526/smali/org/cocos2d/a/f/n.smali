.class public final Lorg/cocos2d/a/f/n;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field c:F

.field d:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p3, p0, Lorg/cocos2d/a/f/n;->c:F

    iput p2, p0, Lorg/cocos2d/a/f/n;->d:F

    return-void
.end method

.method public static c(F)Lorg/cocos2d/a/f/n;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/n;

    const/high16 v1, 0x42c8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/cocos2d/a/f/n;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/f/n;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/a/d;

    iget v1, p0, Lorg/cocos2d/a/f/n;->d:F

    iget v2, p0, Lorg/cocos2d/a/f/n;->c:F

    iget v3, p0, Lorg/cocos2d/a/f/n;->d:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/d;->a(F)V

    return-void
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/n;

    iget v1, p0, Lorg/cocos2d/a/f/n;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/n;->c:F

    iget v3, p0, Lorg/cocos2d/a/f/n;->d:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/n;-><init>(FFF)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/n;

    iget v1, p0, Lorg/cocos2d/a/f/n;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/n;->d:F

    iget v3, p0, Lorg/cocos2d/a/f/n;->c:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/n;-><init>(FFF)V

    return-object v0
.end method
