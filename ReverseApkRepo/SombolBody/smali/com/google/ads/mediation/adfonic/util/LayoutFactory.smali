.class public Lcom/google/ads/mediation/adfonic/util/LayoutFactory;
.super Ljava/lang/Object;
.source "LayoutFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convert(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "pixels"
    .parameter "dm"

    .prologue
    .line 33
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public buildLayoutForAd(Landroid/content/Context;Lcom/google/ads/AdSize;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5
    .parameter "context"
    .parameter "adSize"

    .prologue
    const/16 v4, 0x11

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 17
    .local v0, dm:Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    if-ne v1, p2, :cond_0

    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x140

    invoke-direct {p0, v2, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v2

    const/16 v3, 0x30

    invoke-direct {p0, v3, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 29
    :goto_0
    return-object v1

    .line 19
    :cond_0
    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    if-ne v1, p2, :cond_1

    .line 20
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1d4

    invoke-direct {p0, v2, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v2

    const/16 v3, 0x3c

    invoke-direct {p0, v3, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 21
    :cond_1
    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    if-ne v1, p2, :cond_2

    .line 22
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x2d8

    invoke-direct {p0, v2, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v2

    const/16 v3, 0x5a

    invoke-direct {p0, v3, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    if-ne v1, p2, :cond_3

    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x12c

    invoke-direct {p0, v2, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v2

    const/16 v3, 0xfa

    invoke-direct {p0, v3, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 25
    :cond_3
    sget-object v1, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    if-ne v1, p2, :cond_4

    .line 26
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x78

    invoke-direct {p0, v2, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v2

    const/16 v3, 0x258

    invoke-direct {p0, v3, v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->convert(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 29
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildLayoutForInterstitial(Landroid/app/Activity;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, -0x1

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
