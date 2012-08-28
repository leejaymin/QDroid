.class Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;
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
    name = "InterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V

    return-void
.end method


# virtual methods
.method public MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "success"

    .prologue
    .line 345
    if-nez p2, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    goto :goto_0
.end method

.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 319
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 320
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 326
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 331
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    #getter for: Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 336
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 341
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 356
    return-void
.end method
