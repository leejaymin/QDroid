.class public Lorg/tf/gl/sprite/SpriteUtil;
.super Ljava/lang/Object;
.source "SpriteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSprite(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)Lorg/tf/gl/sprite/SpriteRegion;
    .locals 8
    .parameter "gl"
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 32
    invoke-static {p2}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v0

    .line 33
    invoke-static {p3}, Lorg/tf/util/MathHelpers;->roundUpPower2(I)I

    move-result v3

    .line 34
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 31
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 36
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 37
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v5, v5, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v6, v0}, Lorg/tf/gl/sprite/Sprite;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Z)V

    .line 42
    .local v1, sprite:Lorg/tf/gl/sprite/Sprite;
    new-instance v0, Lorg/tf/gl/sprite/SpriteRegion;

    int-to-float v4, p2

    int-to-float v5, p3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/tf/gl/sprite/SpriteRegion;-><init>(Lorg/tf/gl/sprite/Sprite;FFFF)V

    return-object v0
.end method
