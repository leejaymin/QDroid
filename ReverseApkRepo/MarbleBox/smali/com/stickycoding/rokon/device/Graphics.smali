.class public Lcom/stickycoding/rokon/device/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static FULL_WIDTH:I = 0x0

.field public static NORMAL:I = 0x0

.field public static WIDE:I = 0x0

.field public static final WIDE_RATIO:F = 0.60037524f

.field private static aspectRatio:F

.field private static displayMetrics:Landroid/util/DisplayMetrics;

.field private static halfHeightPixels:I

.field private static halfWidthPixels:I

.field private static heightPixels:I

.field private static screenType:I

.field private static supportsVBO:Z

.field private static widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->NORMAL:I

    const/4 v0, 0x1

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->WIDE:I

    const/4 v0, 0x2

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->FULL_WIDTH:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determine(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const v2, 0x3f19b231

    .line 76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    sget-object v0, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->widthPixels:I

    .line 79
    sget-object v0, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->heightPixels:I

    .line 80
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->halfWidthPixels:I

    .line 81
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->halfHeightPixels:I

    .line 82
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->widthPixels:I

    int-to-float v0, v0

    sget v1, Lcom/stickycoding/rokon/device/Graphics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->aspectRatio:F

    .line 83
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->aspectRatio:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->WIDE:I

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    .line 86
    :cond_0
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->aspectRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 87
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->NORMAL:I

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    .line 89
    :cond_1
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->aspectRatio:F

    sget v1, Lcom/stickycoding/rokon/device/Graphics;->FULL_WIDTH:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 90
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->FULL_WIDTH:I

    sput v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    .line 92
    :cond_2
    return-void
.end method

.method public static getAspectRatio()F
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->aspectRatio:F

    return v0
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/device/Graphics;->displayMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static getHalfHeightPixel()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->halfHeightPixels:I

    return v0
.end method

.method public static getHalfWidthPixels()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->halfWidthPixels:I

    return v0
.end method

.method public static getHeightPixels()I
    .locals 1

    .prologue
    .line 121
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->heightPixels:I

    return v0
.end method

.method public static getScreenType()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    return v0
.end method

.method public static getWidthPixels()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->widthPixels:I

    return v0
.end method

.method public static isFullWidthAspect()Z
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    sget v1, Lcom/stickycoding/rokon/device/Graphics;->FULL_WIDTH:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalAspect()Z
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    sget v1, Lcom/stickycoding/rokon/device/Graphics;->NORMAL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportsVBO()Z
    .locals 1

    .prologue
    .line 164
    sget-boolean v0, Lcom/stickycoding/rokon/device/Graphics;->supportsVBO:Z

    return v0
.end method

.method public static isWideAspect()Z
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/stickycoding/rokon/device/Graphics;->screenType:I

    sget v1, Lcom/stickycoding/rokon/device/Graphics;->WIDE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSupportsVBO(Z)V
    .locals 0
    .parameter "supportsVBO"

    .prologue
    .line 157
    sput-boolean p0, Lcom/stickycoding/rokon/device/Graphics;->supportsVBO:Z

    .line 158
    return-void
.end method

.method public static supportsVBO()Z
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/stickycoding/rokon/device/Graphics;->isSupportsVBO()Z

    move-result v0

    return v0
.end method
