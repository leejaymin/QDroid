.class public Lorg/tf/gl/sprite/SpriteBase;
.super Lorg/tf/gl/sprite/CenterScale;
.source "SpriteBase.java"


# instance fields
.field m_angle:F

.field m_height:F

.field m_width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_angle:F

    return v0
.end method

.method public bridge synthetic getCenterX()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/CenterScale;->getCenterX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCenterY()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/CenterScale;->getCenterY()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_height:F

    iget v1, p0, Lorg/tf/gl/sprite/SpriteBase;->m_scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getScaleX()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/CenterScale;->getScaleX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getScaleY()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/CenterScale;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getUnscaledHeight()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_height:F

    return v0
.end method

.method public getUnscaledWidth()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_width:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_width:F

    iget v1, p0, Lorg/tf/gl/sprite/SpriteBase;->m_scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0, v0}, Lorg/tf/gl/sprite/SpriteBase;->setCenter(FF)V

    .line 50
    invoke-virtual {p0, v1, v1}, Lorg/tf/gl/sprite/SpriteBase;->setScale(FF)V

    .line 51
    invoke-virtual {p0, v0}, Lorg/tf/gl/sprite/SpriteBase;->setAngle(F)V

    .line 52
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .parameter "dAngle"

    .prologue
    .line 29
    iget v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_angle:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/tf/gl/sprite/SpriteBase;->m_angle:F

    .line 30
    return-void
.end method

.method public bridge synthetic scale(F)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/tf/gl/sprite/CenterScale;->scale(F)V

    return-void
.end method

.method public bridge synthetic scale(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/CenterScale;->scale(FF)V

    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 26
    iput p1, p0, Lorg/tf/gl/sprite/SpriteBase;->m_angle:F

    .line 27
    return-void
.end method

.method public bridge synthetic setCenter(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/CenterScale;->setCenter(FF)V

    return-void
.end method

.method public bridge synthetic setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/tf/gl/sprite/CenterScale;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setScale(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/CenterScale;->setScale(FF)V

    return-void
.end method

.method public bridge synthetic translateCenter(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/CenterScale;->translateCenter(FF)V

    return-void
.end method
