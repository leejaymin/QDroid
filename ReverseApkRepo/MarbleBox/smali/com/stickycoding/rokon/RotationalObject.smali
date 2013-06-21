.class public Lcom/stickycoding/rokon/RotationalObject;
.super Lcom/stickycoding/rokon/DimensionalObject;
.source "RotationalObject.java"


# instance fields
.field protected rotateAboutPoint:Z

.field protected rotation:F

.field protected rotationPivotX:F

.field protected rotationPivotY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/DimensionalObject;-><init>(FFFF)V

    .line 19
    return-void
.end method


# virtual methods
.method public angle()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    return v0
.end method

.method public getRotationPivotX()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotX:F

    return v0
.end method

.method public getRotationPivotY()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotY:F

    return v0
.end method

.method public isRotateAboutPoint()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotateAboutPoint:Z

    return v0
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/stickycoding/rokon/DimensionalObject;->onUpdate()V

    .line 67
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 58
    iget v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    .line 59
    return-void
.end method

.method public rotateAboutCentre()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotateAboutPoint:Z

    .line 50
    return-void
.end method

.method public rotateAboutPoint(FF)V
    .locals 0
    .parameter "rotationPivotX"
    .parameter "rotationPivotY"

    .prologue
    .line 53
    iput p1, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotX:F

    .line 54
    iput p2, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotY:F

    .line 55
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 30
    iput p1, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    .line 31
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .parameter "rotation"
    .parameter "rotationPivotX"
    .parameter "rotationPivotY"

    .prologue
    .line 34
    iput p1, p0, Lcom/stickycoding/rokon/RotationalObject;->rotation:F

    .line 35
    iput p2, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotX:F

    .line 36
    iput p3, p0, Lcom/stickycoding/rokon/RotationalObject;->rotationPivotY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/RotationalObject;->rotateAboutPoint:Z

    .line 38
    return-void
.end method
