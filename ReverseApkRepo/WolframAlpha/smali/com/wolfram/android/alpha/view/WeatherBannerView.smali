.class public Lcom/wolfram/android/alpha/view/WeatherBannerView;
.super Landroid/widget/LinearLayout;
.source "WeatherBannerView.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"


# instance fields
.field private activityMeter:Landroid/view/View;

.field banner:Lcom/wolfram/alpha/WABanner;

.field private inflater:Landroid/view/LayoutInflater;

.field logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "com.wolfram.android.alpha.view.WeatherBannerView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->logger:Ljava/util/logging/Logger;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->activityMeter:Landroid/view/View;

    .line 39
    return-void
.end method

.method private populateBannerFooter([Lcom/wolfram/alpha/WAPodState;)V
    .locals 20
    .parameter "states"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->inflater:Landroid/view/LayoutInflater;

    move-object v2, v0

    const v3, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 96
    .local v18, podFooter:Landroid/widget/LinearLayout;
    const v2, 0x7f0e0073

    move-object/from16 v0, v18

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 97
    .local v19, podStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    const/16 v12, 0x32

    .line 99
    .local v12, buttonID:I
    const v2, 0x7f0e00b9

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/WeatherBannerView;->activityMeter:Landroid/view/View;

    .line 100
    move-object/from16 v10, p1

    .local v10, arr$:[Lcom/wolfram/alpha/WAPodState;
    array-length v15, v10

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v13, v12

    .end local v12           #buttonID:I
    .local v13, buttonID:I
    :goto_0
    if-ge v14, v15, :cond_1

    aget-object v3, v10, v14

    .line 101
    .local v3, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v3}, Lcom/wolfram/alpha/WAPodState;->getNames()[Ljava/lang/String;

    move-result-object v17

    .line 104
    .local v17, names:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    move v12, v13

    .line 100
    .end local v13           #buttonID:I
    .restart local v12       #buttonID:I
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12           #buttonID:I
    .restart local v13       #buttonID:I
    goto :goto_0

    .line 106
    :cond_0
    const/4 v2, 0x0

    aget-object v16, v17, v2

    .line 107
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->inflater:Landroid/view/LayoutInflater;

    move-object v2, v0

    const v4, 0x7f03006c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 108
    .local v11, button:Landroid/widget/Button;
    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v2, Lcom/wolfram/android/alpha/PodStateButtonData;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->banner:Lcom/wolfram/alpha/WABanner;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WABanner;->getWeatherBannerTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->activityMeter:Landroid/view/View;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/wolfram/android/alpha/PodStateButtonData;-><init>(Lcom/wolfram/alpha/WAPodState;ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v12, v13, 0x1

    .end local v13           #buttonID:I
    .restart local v12       #buttonID:I
    invoke-virtual {v11, v13}, Landroid/widget/Button;->setId(I)V

    .line 111
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 113
    .end local v3           #state:Lcom/wolfram/alpha/WAPodState;
    .end local v11           #button:Landroid/widget/Button;
    .end local v12           #buttonID:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #names:[Ljava/lang/String;
    .restart local v13       #buttonID:I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method private populatebannerpod()V
    .locals 6

    .prologue
    .line 77
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, subpodScrollView:Landroid/view/View;
    :try_start_0
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 82
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->addView(Landroid/view/View;)V

    .line 87
    const v2, 0x7f0e00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;

    .line 88
    .local v0, banner_subpodView:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->banner:Lcom/wolfram/alpha/WABanner;

    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->populate(Lcom/wolfram/alpha/WABanner;)V

    .line 89
    return-void

    .line 83
    .end local v0           #banner_subpodView:Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public populate(Lcom/wolfram/alpha/WABanner;)V
    .locals 9
    .parameter "banner"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->banner:Lcom/wolfram/alpha/WABanner;

    .line 50
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v7

    iput-object v7, p0, Lcom/wolfram/android/alpha/view/WeatherBannerView;->inflater:Landroid/view/LayoutInflater;

    .line 52
    const v7, 0x7f0e00b8

    invoke-virtual {p0, v7}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, bannerTitleView:Landroid/widget/TextView;
    invoke-interface {p1}, Lcom/wolfram/alpha/WABanner;->getWeatherBannerTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-interface {p1}, Lcom/wolfram/alpha/WABanner;->getweatherBannerPodstates()[Lcom/wolfram/alpha/WAPodState;

    move-result-object v6

    .line 57
    .local v6, states:[Lcom/wolfram/alpha/WAPodState;
    const/4 v2, 0x0

    .line 59
    .local v2, hasPodstateButtons:Z
    move-object v0, v6

    .local v0, arr$:[Lcom/wolfram/alpha/WAPodState;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 60
    .local v5, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v5}, Lcom/wolfram/alpha/WAPodState;->getNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v5           #state:Lcom/wolfram/alpha/WAPodState;
    :cond_1
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->populatebannerpod()V

    .line 68
    if-eqz v2, :cond_2

    .line 69
    invoke-direct {p0, v6}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->populateBannerFooter([Lcom/wolfram/alpha/WAPodState;)V

    .line 71
    :cond_2
    return-void
.end method
