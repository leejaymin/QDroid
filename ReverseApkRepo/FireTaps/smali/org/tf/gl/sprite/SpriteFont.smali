.class public Lorg/tf/gl/sprite/SpriteFont;
.super Lorg/tf/gl/sprite/CenterScale;
.source "SpriteFont.java"


# instance fields
.field m_charRects:[Landroid/graphics/RectF;

.field m_height:F

.field m_leading:F

.field m_sprite:Lorg/tf/gl/sprite/Sprite;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public destroy(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 26
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 27
    return-void
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
    .line 30
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_height:F

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleY:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLeading()F
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_leading:F

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleY:F

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
    .line 38
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_height:F

    return v0
.end method

.method public getUnscaledLeading()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_leading:F

    return v0
.end method

.method public measureUnscaledWidth(Ljava/lang/CharSequence;)F
    .locals 5
    .parameter "text"

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, width:F
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, e:I
    :goto_0
    if-ne v2, v1, :cond_0

    .line 54
    return v3

    .line 48
    :cond_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/tf/gl/sprite/SpriteFontBuilder;->getIndex(C)I

    move-result v0

    .line 49
    .local v0, charIndex:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 47
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, p0, Lorg/tf/gl/sprite/SpriteFont;->m_charRects:[Landroid/graphics/RectF;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_1
.end method

.method public measureWidth(Ljava/lang/CharSequence;)F
    .locals 2
    .parameter "text"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lorg/tf/gl/sprite/SpriteFont;->measureUnscaledWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/CharSequence;)V
    .locals 13
    .parameter "gl"
    .parameter "text"

    .prologue
    const/high16 v12, 0x4000

    const/4 v11, 0x0

    .line 62
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_centerX:F

    iget v2, p0, Lorg/tf/gl/sprite/SpriteFont;->m_centerY:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    .line 63
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {p0, p2}, Lorg/tf/gl/sprite/SpriteFont;->measureWidth(Ljava/lang/CharSequence;)F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v12

    invoke-virtual {v0, v1, v11}, Lorg/tf/gl/sprite/Sprite;->translateCenter(FF)V

    .line 64
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleX:F

    iget v2, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleY:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 65
    const/4 v10, 0x0

    .local v10, i:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .local v9, e:I
    :goto_0
    if-ne v10, v9, :cond_0

    .line 82
    return-void

    .line 66
    :cond_0
    invoke-interface {p2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/tf/gl/sprite/SpriteFontBuilder;->getIndex(C)I

    move-result v6

    .line 67
    .local v6, charIndex:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_charRects:[Landroid/graphics/RectF;

    aget-object v7, v0, v6

    .line 71
    .local v7, charRect:Landroid/graphics/RectF;
    if-eqz v7, :cond_1

    .line 74
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/tf/gl/sprite/SpriteFont;->m_scaleX:F

    mul-float/2addr v0, v1

    div-float v8, v0, v12

    .line 75
    .local v8, dx:F
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, v8, v11}, Lorg/tf/gl/sprite/Sprite;->translateCenter(FF)V

    .line 76
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 78
    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 79
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p1

    .line 76
    invoke-virtual/range {v0 .. v5}, Lorg/tf/gl/sprite/Sprite;->renderRegion(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 80
    iget-object v0, p0, Lorg/tf/gl/sprite/SpriteFont;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, v8, v11}, Lorg/tf/gl/sprite/Sprite;->translateCenter(FF)V

    goto :goto_1
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
