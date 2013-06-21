.class public Lcom/chillingo/crystal/utils/IOSUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/utils/IOSUtils$OriginUtils;
    }
.end annotation


# static fields
.field public static final DOUBLE_RESOLUTION_EXTENSION:Ljava/lang/String; = "@2x"

.field public static final IPAD_DISPLAY_HEIGHT_PX:F = 1024.0f

.field public static final IPAD_DISPLAY_WIDTH_PX:F = 768.0f

.field public static final IPHONE_DISPLAY_HEIGHT_PX:F = 480.0f

.field public static final IPHONE_DISPLAY_WIDTH_PX:F = 320.0f

.field public static final RETINA_DISPLAY_HEIGHT_PX:F = 960.0f

.field public static final RETINA_DISPLAY_WIDTH_PX:F = 640.0f

.field private static final _navigationBarPositionLandscape:Landroid/graphics/Rect;

.field private static final _navigationBarPositionPortrait:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x140

    const/16 v2, 0xa0

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aspectScale(Landroid/content/Context;)F
    .locals 3

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static iPadScaleX(Landroid/content/Context;)F
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4440

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static iPadScaleY(Landroid/content/Context;)F
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x4440

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static navigationBarPositionLandscape(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionLandscape:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static navigationBarPositionPortrait(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/chillingo/crystal/utils/IOSUtils;->_navigationBarPositionPortrait:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static scaleAspectFill(Landroid/content/Context;)F
    .locals 3

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static scaleAspectFit(Landroid/content/Context;)F
    .locals 3

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static scalePoint(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method public static scaleSize(Landroid/content/Context;Lcom/chillingo/crystal/utils/Size;)Lcom/chillingo/crystal/utils/Size;
    .locals 2

    invoke-virtual {p1}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Size;->setWidth(I)V

    invoke-virtual {p1}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleY(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/utils/Size;->setHeight(I)V

    return-object p1
.end method

.method public static scaleX(Landroid/content/Context;)F
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x43a0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static scaleY(Landroid/content/Context;)F
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x43a0

    div-float/2addr v0, v1

    goto :goto_0
.end method
