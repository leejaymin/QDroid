.class public Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;
.super Landroid/widget/LinearLayout;
.source "AdWhirlAdsLayout.java"


# static fields
.field private static final ADWHIRL_ID:Ljava/lang/String; = "c26eebbdd57a4e8fa9952ab07c1d4d6d"

.field static final DIP_HEIGHT:I = 0x34

.field private static final GGADS_APP_NAME:Ljava/lang/String; = "Androlib Wallpapers"

.field private static final GGADS_CHANNEL_ID:Ljava/lang/String; = null

.field private static final GGADS_COMPANY_NAME:Ljava/lang/String; = "Magma Mobile"

.field public static GGADS_DEFAULTKEYWORDS:Ljava/lang/String; = null

.field private static final GGADS_EXPAND_DIRECTION:Ljava/lang/String; = "TOP"

.field private static GGADS_KEYWORDS:Ljava/lang/String;

.field private static adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

.field private static mParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "free+wallpapers,nature+wallpapers,beautiful+wallpapers,cool+wallpapers,mobile+wallpapers"

    .line 23
    const-string v0, "free+wallpapers,nature+wallpapers,beautiful+wallpapers,cool+wallpapers,mobile+wallpapers"

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    .line 24
    const-string v0, "free+wallpapers,nature+wallpapers,beautiful+wallpapers,cool+wallpapers,mobile+wallpapers"

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_DEFAULTKEYWORDS:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/App;->GGAdsense:Ljava/lang/String;

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_CHANNEL_ID:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdWhirlAdsLayout keys : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .local v0, DENSITY:F
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x4250

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    const-string v1, "Magma Mobile"

    invoke-static {v1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseCompanyName(Ljava/lang/String;)V

    .line 44
    const-string v1, "Androlib Wallpapers"

    invoke-static {v1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseAppName(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_CHANNEL_ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseChannel(Ljava/lang/String;)V

    .line 47
    const-string v1, "TOP"

    invoke-static {v1}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseExpandDirection(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-static {v1}, Lcom/adwhirl/AdWhirlTargeting;->setKeywords(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/adwhirl/AdWhirlLayout;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    const-string v2, "c26eebbdd57a4e8fa9952ab07c1d4d6d"

    invoke-direct {v1, p1, v2}, Lcom/adwhirl/AdWhirlLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

    .line 52
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method public static setKeywords(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "keywords"

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    sput-object p1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    .line 61
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setKeywords keys : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;)V

    .line 63
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;

    .line 65
    .local v2, ads:Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .local v1, DENSITY:F
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x4250

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    const-string v4, "Magma Mobile"

    invoke-static {v4}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseCompanyName(Ljava/lang/String;)V

    .line 69
    const-string v4, "Androlib Wallpapers"

    invoke-static {v4}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseAppName(Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_CHANNEL_ID:Ljava/lang/String;

    invoke-static {v4}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseChannel(Ljava/lang/String;)V

    .line 72
    const-string v4, "TOP"

    invoke-static {v4}, Lcom/adwhirl/adapters/AdWhirlAdapter;->setGoogleAdSenseExpandDirection(Ljava/lang/String;)V

    .line 74
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-static {v4}, Lcom/adwhirl/AdWhirlTargeting;->setKeywords(Ljava/lang/String;)V

    .line 76
    new-instance v4, Lcom/adwhirl/AdWhirlLayout;

    check-cast p0, Landroid/app/Activity;

    .end local p0
    const-string v5, "c26eebbdd57a4e8fa9952ab07c1d4d6d"

    invoke-direct {v4, p0, v5}, Lcom/adwhirl/AdWhirlLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

    .line 78
    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #DENSITY:F
    .end local v2           #ads:Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 81
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->removeAllViews()V

    .line 92
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->mParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/nix/apps/androlib/wallpapers/utils/ads/AdWhirlAdsLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_0
    return-void
.end method
