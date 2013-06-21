.class public final Lorg/cocos2d/a/f/t;
.super Lorg/cocos2d/a/f/u;


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/a/f/u;-><init>(FFF)V

    return-void
.end method

.method public static a(FF)Lorg/cocos2d/a/f/t;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/t;

    invoke-direct {v0, p0, p1, p1}, Lorg/cocos2d/a/f/t;-><init>(FFF)V

    return-object v0
.end method

.method public static j()Lorg/cocos2d/a/f/t;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/t;

    const/high16 v1, 0x4000

    const/high16 v2, 0x3e80

    const/high16 v3, 0x4090

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/t;-><init>(FFF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/u;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lorg/cocos2d/a/f/t;->c:F

    iget v1, p0, Lorg/cocos2d/a/f/t;->e:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/a/f/t;->c:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/t;->g:F

    iget v0, p0, Lorg/cocos2d/a/f/t;->d:F

    iget v1, p0, Lorg/cocos2d/a/f/t;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/a/f/t;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/t;->h:F

    return-void
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/t;->m()Lorg/cocos2d/a/f/t;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lorg/cocos2d/a/f/t;
    .locals 5

    const/high16 v4, 0x3f80

    new-instance v0, Lorg/cocos2d/a/f/t;

    iget v1, p0, Lorg/cocos2d/a/f/t;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/t;->e:F

    div-float v2, v4, v2

    iget v3, p0, Lorg/cocos2d/a/f/t;->f:F

    div-float v3, v4, v3

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/t;-><init>(FFF)V

    return-object v0
.end method

.method public final synthetic n()Lorg/cocos2d/a/f/u;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/t;

    iget v1, p0, Lorg/cocos2d/a/f/t;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/t;->e:F

    iget v3, p0, Lorg/cocos2d/a/f/t;->f:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/t;-><init>(FFF)V

    return-object v0
.end method
