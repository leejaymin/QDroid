.class public final Lorg/cocos2d/a/f/h;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field c:I

.field d:I


# direct methods
.method private constructor <init>(FI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/h;->c:I

    return-void
.end method

.method public static c(F)Lorg/cocos2d/a/f/h;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/f/h;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/h;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0}, Lorg/cocos2d/i/c;->b()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/a/f/h;->d:I

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2d/a/f/h;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    iget v1, p0, Lorg/cocos2d/a/f/h;->d:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/a/f/h;->c:I

    iget v3, p0, Lorg/cocos2d/a/f/h;->d:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/cocos2d/i/c;->a(I)V

    return-void
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/h;

    iget v1, p0, Lorg/cocos2d/a/f/h;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/h;->c:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/h;-><init>(FI)V

    return-object v0
.end method
