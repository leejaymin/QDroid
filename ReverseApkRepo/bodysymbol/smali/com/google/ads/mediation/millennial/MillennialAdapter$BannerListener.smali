.class Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V

    return-void
.end method


# virtual methods
.method public MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 306
    return-void
.end method

.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 278
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 279
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 280
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 285
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 286
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 291
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 296
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 301
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 311
    return-void
.end method
