.class public Lng/vace/android/highwayracing/game/gui/Car;
.super Lng/vace/android/highwayracing/game/gui/MovingImage;
.source "Car.java"


# instance fields
.field health:I

.field private healthBarLength:F

.field maxHealth:I

.field maxSpeed:I


# direct methods
.method public constructor <init>(FFFFFLandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "speedX"
    .parameter "speedY"
    .parameter "rotation"
    .parameter "image"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p6}, Lng/vace/android/highwayracing/game/gui/MovingImage;-><init>(FFFFFLandroid/graphics/Bitmap;)V

    .line 10
    const/16 v0, 0x64

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxSpeed:I

    .line 16
    return-void
.end method

.method private checkAndActAgainstWorldBorders(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .parameter "area"
    .parameter "worldRect"
    .parameter "screenHeight"

    .prologue
    .line 33
    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->x:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->x:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Car;->die()V

    .line 35
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lng/vace/android/highwayracing/game/gui/Car;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float v0, v1, p3

    .line 36
    .local v0, topLimit:F
    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->y:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p3

    iput v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->y:F

    .line 37
    :cond_2
    return-void
.end method

.method private performDeathMovement()V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    const/high16 v1, 0x40a0

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    .line 41
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->alpha:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->alpha:I

    .line 42
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->alpha:I

    if-gtz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->alpha:I

    .line 44
    invoke-virtual {p0}, Lng/vace/android/highwayracing/game/gui/Car;->remove()V

    .line 46
    :cond_0
    return-void
.end method

.method private performIntersectionMovement()V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    .line 50
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersectCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersectCount:I

    .line 51
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersectCount:I

    if-gtz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersected:Z

    .line 53
    const/4 v0, 0x0

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxSpeed:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lng/vace/android/highwayracing/game/gui/Car;->setSpeed(FF)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getHealth()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->health:I

    return v0
.end method

.method public getHealthBarLength()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->healthBarLength:F

    return v0
.end method

.method public getMaxHealth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxHealth:I

    return v0
.end method

.method public getMaxSpeed()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxSpeed:I

    return v0
.end method

.method public setHealth(I)V
    .locals 2
    .parameter "health"

    .prologue
    .line 58
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Car;->health:I

    .line 59
    iget-object v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxHealth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->health:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->healthBarLength:F

    .line 60
    return-void
.end method

.method public setMaxHealth(I)V
    .locals 0
    .parameter "maxHealth"

    .prologue
    .line 63
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxHealth:I

    .line 64
    return-void
.end method

.method public setMaxSpeed(I)V
    .locals 0
    .parameter "maxSpeed"

    .prologue
    .line 83
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Car;->maxSpeed:I

    .line 84
    return-void
.end method

.method public setSpeed(FF)V
    .locals 4
    .parameter "speedX"
    .parameter "speedY"

    .prologue
    const/4 v1, 0x0

    .line 87
    iput p1, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedX:F

    .line 88
    iput p2, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedY:F

    .line 90
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersected:Z

    if-nez v0, :cond_1

    .line 91
    float-to-double v0, p2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lng/vace/android/highwayracing/util/ImageUtil;->toDegrees(D)F

    move-result v0

    const/high16 v1, 0x42b4

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    .line 92
    :cond_1
    return-void
.end method

.method public updatePosition(Landroid/graphics/RectF;FFLandroid/graphics/RectF;F)V
    .locals 4
    .parameter "area"
    .parameter "worldDeltaX"
    .parameter "worldDeltaY"
    .parameter "worldRect"
    .parameter "screenHeight"

    .prologue
    const/4 v2, 0x0

    .line 19
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->x:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedX:F

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->x:F

    .line 20
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->y:F

    iget v1, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedY:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->y:F

    .line 22
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->intersected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/gui/Car;->performIntersectionMovement()V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->dead:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lng/vace/android/highwayracing/game/gui/Car;->performDeathMovement()V

    goto :goto_0

    .line 25
    :cond_2
    invoke-direct {p0, p1, p4, p5}, Lng/vace/android/highwayracing/game/gui/Car;->checkAndActAgainstWorldBorders(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 27
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 28
    :cond_3
    iget v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedY:F

    float-to-double v0, v0

    iget v2, p0, Lng/vace/android/highwayracing/game/gui/Car;->speedX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lng/vace/android/highwayracing/util/ImageUtil;->toDegrees(D)F

    move-result v0

    const/high16 v1, 0x42b4

    add-float/2addr v0, v1

    iput v0, p0, Lng/vace/android/highwayracing/game/gui/Car;->rotation:F

    goto :goto_0
.end method
