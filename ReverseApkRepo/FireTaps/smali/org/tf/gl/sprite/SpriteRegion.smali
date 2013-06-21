.class public Lorg/tf/gl/sprite/SpriteRegion;
.super Lorg/tf/gl/sprite/SpriteBase;
.source "SpriteRegion.java"


# instance fields
.field private m_rx:F

.field private m_ry:F

.field private m_sprite:Lorg/tf/gl/sprite/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/tf/gl/sprite/SpriteBase;-><init>()V

    .line 25
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteRegion;->detach()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/tf/gl/sprite/Sprite;FFFF)V
    .locals 0
    .parameter "sprite"
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/tf/gl/sprite/SpriteBase;-><init>()V

    .line 29
    invoke-virtual/range {p0 .. p5}, Lorg/tf/gl/sprite/SpriteRegion;->attach(Lorg/tf/gl/sprite/Sprite;FFFF)V

    .line 30
    return-void
.end method


# virtual methods
.method public attach(Lorg/tf/gl/sprite/Sprite;FFFF)V
    .locals 0
    .parameter "sprite"
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteRegion;->detach()V

    .line 34
    iput-object p1, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 35
    iput p2, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_rx:F

    .line 36
    iput p3, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_ry:F

    .line 37
    iput p4, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_width:F

    .line 38
    iput p5, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_height:F

    .line 39
    return-void
.end method

.method public destroy(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 53
    :cond_0
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteRegion;->detach()V

    .line 54
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0}, Lorg/tf/gl/sprite/SpriteRegion;->reset()V

    .line 43
    iput v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_rx:F

    .line 44
    iput v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_ry:F

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 46
    return-void
.end method

.method public bridge synthetic getCenterX()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/SpriteBase;->getCenterX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getCenterY()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/SpriteBase;->getCenterY()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getScaleX()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/SpriteBase;->getScaleX()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getScaleY()F
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lorg/tf/gl/sprite/SpriteBase;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getSprite()Lorg/tf/gl/sprite/Sprite;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    return-object v0
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_centerX:F

    iget v2, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_centerY:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    .line 65
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_scaleX:F

    iget v2, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_scaleY:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 66
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_angle:F

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/Sprite;->setAngle(F)V

    .line 67
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v2, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_rx:F

    iget v3, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_ry:F

    iget v4, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_width:F

    iget v5, p0, Lorg/tf/gl/sprite/SpriteRegion;->m_height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/tf/gl/sprite/Sprite;->renderRegion(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_0
.end method

.method public bridge synthetic scale(F)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/tf/gl/sprite/SpriteBase;->scale(F)V

    return-void
.end method

.method public bridge synthetic scale(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/SpriteBase;->scale(FF)V

    return-void
.end method

.method public bridge synthetic setCenter(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/SpriteBase;->setCenter(FF)V

    return-void
.end method

.method public bridge synthetic setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lorg/tf/gl/sprite/SpriteBase;->setScale(F)V

    return-void
.end method

.method public bridge synthetic setScale(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/SpriteBase;->setScale(FF)V

    return-void
.end method

.method public bridge synthetic translateCenter(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lorg/tf/gl/sprite/SpriteBase;->translateCenter(FF)V

    return-void
.end method
