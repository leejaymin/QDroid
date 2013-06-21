.class public Lcom/scoreloop/client/android/ui/component/base/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "RoundCornerImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private getRoundedCornerBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "bitmap"
    .parameter "pixels"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 38
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 40
    .local v11, output:Landroid/graphics/Bitmap;
    const v10, -0xbdbdbe

    .line 41
    .local v10, color:I
    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v13, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .local v13, rect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 44
    .local v14, rectF:Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v12, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    const v2, -0xbdbdbe

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v9, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v9, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 50
    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v9, v14, v2, v3, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 55
    .local v5, imgWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 56
    .local v6, imgHeight:I
    move/from16 v0, p3

    int-to-float v2, v0

    int-to-float v3, v5

    div-float/2addr v2, v3

    move/from16 v0, p4

    int-to-float v3, v0

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 57
    .local v15, scaleFactor:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .local v7, scale:Landroid/graphics/Matrix;
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 59
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 60
    .local v16, scaledImage:Landroid/graphics/Bitmap;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v13, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    return-object v11
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 26
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 27
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/RoundCornerImageView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/RoundCornerImageView;->getHeight()I

    move-result v6

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/scoreloop/client/android/ui/component/base/RoundCornerImageView;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 31
    .local v3, roundBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #roundBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 33
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
