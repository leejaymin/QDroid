.class Lorg/tf/gl/sprite/CenterScale;
.super Ljava/lang/Object;
.source "CenterScale.java"


# instance fields
.field m_centerX:F

.field m_centerY:F

.field m_scaleX:F

.field m_scaleY:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerX:F

    .line 61
    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerY:F

    .line 62
    iput v1, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleX:F

    .line 63
    iput v1, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleY:F

    .line 20
    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleY:F

    return v0
.end method

.method public scale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p1}, Lorg/tf/gl/sprite/CenterScale;->scale(FF)V

    .line 56
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 48
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleX:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleX:F

    .line 49
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleY:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleY:F

    .line 50
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 29
    iput p1, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerX:F

    .line 30
    iput p2, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerY:F

    .line 31
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p1}, Lorg/tf/gl/sprite/CenterScale;->setScale(FF)V

    .line 53
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 44
    iput p1, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleX:F

    .line 45
    iput p2, p0, Lorg/tf/gl/sprite/CenterScale;->m_scaleY:F

    .line 46
    return-void
.end method

.method public translateCenter(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 33
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerX:F

    .line 34
    iget v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerY:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/tf/gl/sprite/CenterScale;->m_centerY:F

    .line 35
    return-void
.end method
