.class public Lng/vace/android/highwayracing/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field public static final BOTH:I = 0x0

.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tintImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "sourceImage"
    .parameter "multiplyColor"
    .parameter "addColor"
    .parameter "transparency"

    .prologue
    const/4 v7, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 20
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 21
    .local v3, height:I
    if-eqz p3, :cond_0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 22
    .local v1, copy:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .local v4, p:Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, p1, p2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 25
    .local v2, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 26
    invoke-virtual {v0, p0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 27
    return-object v1

    .line 21
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #copy:Landroid/graphics/Bitmap;
    .end local v2           #filter:Landroid/graphics/ColorFilter;
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static toDegrees(D)F
    .locals 2
    .parameter "rad"

    .prologue
    .line 11
    const-wide v0, 0x3f91df46a2529d39L

    div-double v0, p0, v0

    double-to-float v0, v0

    return v0
.end method

.method public static toRadians(F)D
    .locals 4
    .parameter "deg"

    .prologue
    .line 15
    float-to-double v0, p0

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    return-wide v0
.end method
