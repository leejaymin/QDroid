.class public Lcom/stickycoding/rokon/TextSprite;
.super Lcom/stickycoding/rokon/Sprite;
.source "TextSprite.java"


# instance fields
.field protected characterWidth:F

.field public text:Ljava/lang/String;

.field protected textLength:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "characterWidth"
    .parameter "height"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/Sprite;-><init>(FFFF)V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/TextSprite;->textLength:I

    .line 31
    iget v0, p0, Lcom/stickycoding/rokon/TextSprite;->width:F

    iput v0, p0, Lcom/stickycoding/rokon/TextSprite;->characterWidth:F

    .line 32
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onDrawNormal(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0x1406

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 68
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 70
    :cond_0
    iget v1, p0, Lcom/stickycoding/rokon/TextSprite;->red:F

    iget v2, p0, Lcom/stickycoding/rokon/TextSprite;->green:F

    iget v3, p0, Lcom/stickycoding/rokon/TextSprite;->blue:F

    iget v4, p0, Lcom/stickycoding/rokon/TextSprite;->alpha:F

    invoke-static {v1, v2, v3, v4}, Lcom/stickycoding/rokon/GLHelper;->color4f(FFFF)V

    .line 71
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->texture:Lcom/stickycoding/rokon/Texture;

    invoke-static {v1}, Lcom/stickycoding/rokon/GLHelper;->checkTextureValid(Lcom/stickycoding/rokon/Texture;)V

    .line 72
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    invoke-static {v1}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    .line 77
    :goto_1
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTextures()V

    .line 78
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableTexCoordArray()V

    .line 79
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->texture:Lcom/stickycoding/rokon/Texture;

    invoke-static {v1}, Lcom/stickycoding/rokon/GLHelper;->bindTexture(Lcom/stickycoding/rokon/Texture;)V

    .line 80
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 81
    invoke-static {}, Lcom/stickycoding/rokon/GLHelper;->enableVertexArray()V

    .line 82
    invoke-static {v6, v6}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 83
    sget-object v1, Lcom/stickycoding/rokon/Rokon;->triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-static {v1, v7}, Lcom/stickycoding/rokon/GLHelper;->vertexPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 84
    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextSprite;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/TextSprite;->getY()F

    move-result v2

    invoke-interface {p1, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v1, p0, Lcom/stickycoding/rokon/TextSprite;->textLength:I

    if-lt v0, v1, :cond_2

    .line 93
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 75
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    invoke-static {v1}, Lcom/stickycoding/rokon/GLHelper;->blendMode(Lcom/stickycoding/rokon/BlendFunction;)V

    goto :goto_1

    .line 86
    .restart local v0       #i:I
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 87
    int-to-float v1, v0

    iget v2, p0, Lcom/stickycoding/rokon/TextSprite;->characterWidth:F

    mul-float/2addr v1, v2

    invoke-interface {p1, v1, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 88
    iget v1, p0, Lcom/stickycoding/rokon/TextSprite;->characterWidth:F

    iget v2, p0, Lcom/stickycoding/rokon/TextSprite;->height:F

    invoke-interface {p1, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 89
    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->texture:Lcom/stickycoding/rokon/Texture;

    iget-object v2, v1, Lcom/stickycoding/rokon/Texture;->buffer:[Lcom/stickycoding/rokon/BufferObject;

    iget-object v1, p0, Lcom/stickycoding/rokon/TextSprite;->texture:Lcom/stickycoding/rokon/Texture;

    check-cast v1, Lcom/stickycoding/rokon/FontTexture;

    iget-object v3, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/stickycoding/rokon/FontTexture;->charPos(C)I

    move-result v1

    aget-object v1, v2, v1

    invoke-static {v1, v7}, Lcom/stickycoding/rokon/GLHelper;->texCoordPointer(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 90
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {p1, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 91
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/stickycoding/rokon/TextSprite;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/TextSprite;->textLength:I

    .line 48
    iget v0, p0, Lcom/stickycoding/rokon/TextSprite;->characterWidth:F

    iget v1, p0, Lcom/stickycoding/rokon/TextSprite;->textLength:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/stickycoding/rokon/TextSprite;->width:F

    .line 49
    return-void
.end method

.method public setTexture(Lcom/stickycoding/rokon/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 56
    instance-of v0, p1, Lcom/stickycoding/rokon/TextTexture;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "Tried setting TextSprite to non-TextTexture"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/Sprite;->setTexture(Lcom/stickycoding/rokon/Texture;)V

    goto :goto_0
.end method
