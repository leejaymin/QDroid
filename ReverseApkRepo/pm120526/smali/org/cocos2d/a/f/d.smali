.class public final Lorg/cocos2d/a/f/d;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:I


# direct methods
.method private constructor <init>(FI)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput p2, p0, Lorg/cocos2d/a/f/d;->c:I

    return-void
.end method

.method public static b(I)Lorg/cocos2d/a/f/d;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/d;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1, p0}, Lorg/cocos2d/a/f/d;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 4

    const/high16 v0, 0x3f80

    iget v1, p0, Lorg/cocos2d/a/f/d;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    rem-float v1, p1, v0

    iget-object v2, p0, Lorg/cocos2d/a/f/d;->a:Lorg/cocos2d/g/i;

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->c(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/d;

    iget v1, p0, Lorg/cocos2d/a/f/d;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/d;->c:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/d;-><init>(FI)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/d;

    iget v1, p0, Lorg/cocos2d/a/f/d;->b:F

    iget v2, p0, Lorg/cocos2d/a/f/d;->c:I

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/d;-><init>(FI)V

    return-object v0
.end method
