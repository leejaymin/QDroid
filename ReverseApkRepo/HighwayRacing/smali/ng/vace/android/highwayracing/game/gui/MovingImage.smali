.class public abstract Lng/vace/android/highwayracing/game/gui/MovingImage;
.super Lng/vace/android/highwayracing/game/gui/GameElement;
.source "MovingImage.java"


# instance fields
.field protected alpha:I

.field protected dead:Z

.field protected intersectCount:I

.field protected intersected:Z

.field protected removed:Z

.field protected rotation:F

.field protected speedX:F

.field protected speedY:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lng/vace/android/highwayracing/game/gui/GameElement;-><init>(FF)V

    .line 15
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->dead:Z

    .line 16
    const/16 v0, 0xff

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->alpha:I

    .line 17
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->removed:Z

    .line 20
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersected:Z

    .line 34
    return-void
.end method

.method protected constructor <init>(FFFFFLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "speedX"
    .parameter "speedY"
    .parameter "rotation"
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p6}, Lng/vace/android/highwayracing/game/gui/GameElement;-><init>(FFLandroid/graphics/Bitmap;)V

    .line 15
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->dead:Z

    .line 16
    const/16 v0, 0xff

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->alpha:I

    .line 17
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->removed:Z

    .line 20
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersected:Z

    .line 38
    iput p5, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->rotation:F

    .line 39
    invoke-virtual {p0, p3, p4}, Lng/vace/android/highwayracing/game/gui/MovingImage;->setSpeed(FF)V

    .line 40
    return-void
.end method


# virtual methods
.method public die()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xff

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->alpha:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->dead:Z

    .line 51
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->alpha:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->rotation:F

    return v0
.end method

.method public getSpeedX()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->speedX:F

    return v0
.end method

.method public getSpeedY()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->speedY:F

    return v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->dead:Z

    return v0
.end method

.method public isIntersected()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersected:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->removed:Z

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->removed:Z

    .line 95
    return-void
.end method

.method public resurrect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->dead:Z

    .line 88
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->removed:Z

    .line 89
    const/16 v0, 0xff

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->alpha:I

    .line 90
    iput-boolean v1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersected:Z

    .line 91
    return-void
.end method

.method public setIntersected(Z)V
    .locals 1
    .parameter "intersected"

    .prologue
    .line 28
    iput-boolean p1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersected:Z

    .line 29
    const/16 v0, 0x19

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->intersectCount:I

    .line 30
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 62
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->x:F

    .line 63
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->y:F

    .line 64
    return-void
.end method

.method public setSpeed(FF)V
    .locals 4
    .parameter "speedX"
    .parameter "speedY"

    .prologue
    const/4 v1, 0x0

    .line 71
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->speedX:F

    .line 72
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->speedY:F

    .line 74
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lng/vace/android/highwayracing/util/ImageUtil;->toDegrees(D)F

    move-result v0

    const/high16 v1, 0x42b4

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/MovingImage;->rotation:F

    .line 76
    :cond_1
    return-void
.end method

.method protected abstract updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V
.end method
