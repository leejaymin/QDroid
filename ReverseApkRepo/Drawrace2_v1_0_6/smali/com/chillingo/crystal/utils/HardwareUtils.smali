.class public Lcom/chillingo/crystal/utils/HardwareUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/utils/HardwareUtils$1;,
        Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
    }
.end annotation


# static fields
.field private static final HONEYCOMB_MAX:I = 0xd

.field private static final HONEYCOMB_MIN:I = 0xb

.field private static final MAX_SCREEN_SIZE_FOR_PHONE_INCHES:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ScreenRotation(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public static hasCamera(Landroid/content/Context;)Z
    .locals 8

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v2

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hasSystemFeature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "android.hardware.camera"

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    return v2

    :catch_0
    move-exception v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/16 v2, 0xd

    if-gt v0, v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v3, v4, v3

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x401c

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static screenDensityScale(Landroid/content/Context;)F
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static screenOrientation(Landroid/content/Context;)Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->ScreenRotation(Landroid/content/Context;)I

    move-result v1

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->Portrait:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeLeft:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->PortraitUpsideDown:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;->LandscapeRight:Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/chillingo/crystal/utils/Size;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v2, v1}, Lcom/chillingo/crystal/utils/Size;-><init>(II)V

    return-object v0
.end method
