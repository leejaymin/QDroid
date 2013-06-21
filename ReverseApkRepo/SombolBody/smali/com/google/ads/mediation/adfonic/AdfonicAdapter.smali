.class public Lcom/google/ads/mediation/adfonic/AdfonicAdapter;
.super Ljava/lang/Object;
.source "AdfonicAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;",
        "Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;",
        "Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private adContainer:Landroid/widget/FrameLayout;

.field private adView:Lcom/adfonic/android/AdfonicView;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private layoutFactory:Lcom/google/ads/mediation/adfonic/util/LayoutFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;

    invoke-direct {v0}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->layoutFactory:Lcom/google/ads/mediation/adfonic/util/LayoutFactory;

    return-void
.end method

.method private prepareRequest(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)Lcom/adfonic/android/api/Request;
    .locals 2
    .parameter "activity"
    .parameter "mediationAdRequest"
    .parameter "serverParameters"
    .parameter "extras"

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/mediation/adfonic/util/RequestHelper;

    invoke-direct {v0}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;-><init>()V

    iget-object v1, p3, Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;->adSlotID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p4, p1}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->createRequest(Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;Landroid/app/Activity;)Lcom/adfonic/android/api/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 84
    iput-object v1, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 85
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 87
    iput-object v1, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    .line 89
    :cond_0
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const-class v0, Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 24
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)V

    return-void
.end method

.method public final requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)V
    .locals 5
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "adSize"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 51
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    .line 52
    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->layoutFactory:Lcom/google/ads/mediation/adfonic/util/LayoutFactory;

    invoke-virtual {v2, p2, p4}, Lcom/google/ads/mediation/adfonic/util/LayoutFactory;->buildLayoutForAd(Landroid/content/Context;Lcom/google/ads/AdSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 53
    .local v0, lf:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v2, Lcom/adfonic/android/AdfonicView;

    invoke-direct {v2, p2}, Lcom/adfonic/android/AdfonicView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    .line 55
    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    new-instance v3, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;

    iget-object v4, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    invoke-direct {v3, v4, p0}, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;-><init>(Lcom/google/ads/mediation/MediationBannerListener;Lcom/google/ads/mediation/adfonic/AdfonicAdapter;)V

    invoke-virtual {v2, v3}, Lcom/adfonic/android/AdfonicView;->setAdListener(Lcom/adfonic/android/AdListener;)V

    .line 56
    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-direct {p0, p2, p5, p3, p6}, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->prepareRequest(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)Lcom/adfonic/android/api/Request;

    move-result-object v1

    .line 58
    .local v1, r:Lcom/adfonic/android/api/Request;
    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    invoke-virtual {v2, v1}, Lcom/adfonic/android/AdfonicView;->loadAd(Lcom/adfonic/android/api/Request;)V

    .line 59
    return-void
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)V
    .locals 3
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 66
    new-instance v0, Lcom/adfonic/android/AdfonicView;

    invoke-direct {v0, p2}, Lcom/adfonic/android/AdfonicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    .line 67
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    new-instance v1, Lcom/google/ads/mediation/adfonic/listener/MediationInterstitialAdListener;

    iget-object v2, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    invoke-direct {v1, v2, p0}, Lcom/google/ads/mediation/adfonic/listener/MediationInterstitialAdListener;-><init>(Lcom/google/ads/mediation/MediationInterstitialListener;Lcom/google/ads/mediation/adfonic/AdfonicAdapter;)V

    invoke-virtual {v0, v1}, Lcom/adfonic/android/AdfonicView;->setAdListener(Lcom/adfonic/android/AdListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    invoke-direct {p0, p2, p4, p3, p5}, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->prepareRequest(Landroid/app/Activity;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicServerParameters;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;)Lcom/adfonic/android/api/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adfonic/android/AdfonicView;->loadAd(Lcom/adfonic/android/api/Request;)V

    .line 69
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/AdfonicAdapter;->adView:Lcom/adfonic/android/AdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/AdfonicView;->showInterstitial()V

    .line 79
    return-void
.end method
