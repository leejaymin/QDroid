.class public Lorg/tf/gl/sprite/Sprite;
.super Lorg/tf/gl/sprite/CenterScale;
.source "Sprite.java"


# instance fields
.field private m_angle:F

.field private m_created:Z

.field private m_cropRect:[F

.field private m_height:F

.field private m_texture:I

.field private m_width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 35
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->resetState()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1
    .parameter "context"
    .parameter "gl"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 40
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->resetState()V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lorg/tf/gl/sprite/Sprite;->create(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "gl"
    .parameter "assetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 46
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->resetState()V

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lorg/tf/gl/sprite/Sprite;->create(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "gl"
    .parameter "bitmap"
    .parameter "recycleBitmap"

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/tf/gl/sprite/CenterScale;-><init>()V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 50
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->resetState()V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lorg/tf/gl/sprite/Sprite;->create(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V

    .line 52
    return-void
.end method

.method private checkCreated()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/tf/gl/sprite/Sprite;->m_created:Z

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sprite is not created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/gl/sprite/Sprite;->m_created:Z

    .line 194
    invoke-virtual {p0, v1, v1}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    .line 195
    invoke-virtual {p0, v2, v2}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 196
    iput v1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    .line 197
    return-void
.end method


# virtual methods
.method public applyCenterRotation()V
    .locals 10

    .prologue
    const v8, 0x3c8efa35

    const/high16 v9, 0x4000

    .line 103
    iget v6, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    const/high16 v7, 0x43b4

    rem-float/2addr v6, v7

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 113
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v6, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 107
    .local v4, sinA:F
    iget v6, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 108
    .local v0, cosA:F
    invoke-virtual {p0}, Lorg/tf/gl/sprite/Sprite;->getWidth()F

    move-result v5

    .line 109
    .local v5, w:F
    invoke-virtual {p0}, Lorg/tf/gl/sprite/Sprite;->getHeight()F

    move-result v3

    .line 110
    .local v3, h:F
    div-float v6, v5, v9

    div-float v7, v5, v9

    mul-float/2addr v7, v0

    div-float v8, v3, v9

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    sub-float v1, v6, v7

    .line 111
    .local v1, dx:F
    div-float v6, v3, v9

    div-float v7, v3, v9

    mul-float/2addr v7, v0

    div-float v8, v5, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 112
    .local v2, dy:F
    invoke-virtual {p0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->translateCenter(FF)V

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 2
    .parameter "context"
    .parameter "gl"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p2}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 58
    invoke-static {p1, p3}, Lorg/tf/gl/GLHelpers;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    .line 60
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    .line 61
    invoke-static {p2, v0}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lorg/tf/gl/sprite/Sprite;->m_texture:I

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/tf/gl/sprite/Sprite;->m_created:Z

    .line 64
    return-void
.end method

.method public create(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "gl"
    .parameter "assetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 69
    invoke-static {p1, p3}, Lorg/tf/gl/GLHelpers;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lorg/tf/gl/sprite/Sprite;->create(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V

    .line 71
    return-void
.end method

.method public create(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "gl"
    .parameter "bitmap"
    .parameter "recycleBitmap"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    .line 75
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    .line 76
    invoke-static {p1, p2}, Lorg/tf/gl/GLHelpers;->loadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lorg/tf/gl/sprite/Sprite;->m_texture:I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/gl/sprite/Sprite;->m_created:Z

    .line 78
    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    :cond_0
    return-void
.end method

.method public destroy(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/tf/gl/sprite/Sprite;->m_created:Z

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_texture:I

    invoke-static {p1, v0}, Lorg/tf/gl/GLHelpers;->deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 90
    :cond_1
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->resetState()V

    goto :goto_0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

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
    .line 126
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleY:F

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
    .line 119
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    return v0
.end method

.method public getUnscaledWidth()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleX:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/16 v10, 0xde1

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->checkCreated()V

    .line 131
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_texture:I

    invoke-interface {p1, v10, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 132
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasDrawTexture(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    aput v4, v1, v9

    .line 134
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    aput v3, v1, v2

    .line 135
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x2

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    aput v3, v1, v2

    .line 136
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x3

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    neg-float v3, v3

    aput v3, v1, v2

    .line 137
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleX:F

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    mul-float v5, v1, v2

    .line 138
    .local v5, scaledWidth:F
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleY:F

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    mul-float v6, v1, v2

    .line 139
    .local v6, scaledHeight:F
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 141
    const v2, 0x8b9d

    iget-object v3, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 139
    invoke-interface {v1, v10, v2, v3, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 142
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 143
    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_centerX:F

    div-float v3, v5, v8

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_centerY:F

    div-float v7, v6, v8

    sub-float/2addr v3, v7

    .line 142
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 153
    .end local v5           #scaledWidth:F
    .end local v6           #scaledHeight:F
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 147
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_centerX:F

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_centerY:F

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 148
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    invoke-interface {p1, v1, v4, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 149
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleX:F

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleY:F

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    mul-float/2addr v2, v3

    invoke-interface {p1, v1, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 150
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->drawTextureXY(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 151
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public renderRegion(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 10
    .parameter "gl"
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    const/16 v9, 0xde1

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    .line 156
    invoke-direct {p0}, Lorg/tf/gl/sprite/Sprite;->checkCreated()V

    .line 157
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_texture:I

    invoke-interface {p1, v9, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 158
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasDrawTexture(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    aput p2, v1, v7

    .line 160
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x1

    sub-float v3, p5, p3

    aput v3, v1, v2

    .line 161
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x2

    aput p4, v1, v2

    .line 162
    iget-object v1, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    const/4 v2, 0x3

    neg-float v3, p5

    aput v3, v1, v2

    .line 163
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleX:F

    mul-float v5, v1, p4

    .line 164
    .local v5, scaledWidth:F
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleY:F

    mul-float v6, v1, p5

    .line 165
    .local v6, scaledHeight:F
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 167
    const v2, 0x8b9d

    iget-object v3, p0, Lorg/tf/gl/sprite/Sprite;->m_cropRect:[F

    .line 165
    invoke-interface {v1, v9, v2, v3, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 168
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    .line 169
    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_centerX:F

    div-float v3, v5, v8

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/tf/gl/sprite/Sprite;->m_centerY:F

    div-float v7, v6, v8

    sub-float/2addr v3, v7

    .line 168
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 188
    .end local v5           #scaledWidth:F
    .end local v6           #scaledHeight:F
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 173
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_centerX:F

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_centerY:F

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 174
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    invoke-interface {p1, v1, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 175
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleX:F

    mul-float/2addr v1, p4

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_scaleY:F

    mul-float/2addr v2, p5

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 177
    const/16 v1, 0x1702

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 178
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    div-float v1, p2, v1

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    div-float v2, p3, v2

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 179
    iget v1, p0, Lorg/tf/gl/sprite/Sprite;->m_width:F

    div-float v1, p4, v1

    iget v2, p0, Lorg/tf/gl/sprite/Sprite;->m_height:F

    div-float v2, p5, v2

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 181
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->drawTextureXY(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 183
    sget-object v1, Lorg/tf/gl/GLHelpers;->IDENTITY_MATRIX:[F

    invoke-interface {p1, v1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 184
    const/16 v1, 0x1700

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 186
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public rotate(F)V
    .locals 1
    .parameter "dAngle"

    .prologue
    .line 100
    iget v0, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    .line 101
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
    .line 97
    iput p1, p0, Lorg/tf/gl/sprite/Sprite;->m_angle:F

    .line 98
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
