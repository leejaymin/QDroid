.class Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 304
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;->$SwitchMap$com$inmobi$androidsdk$IMAdRequest$ErrorCode:[I

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 318
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 326
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 331
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 342
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    .line 336
    return-void
.end method
