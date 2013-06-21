.class public Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;
.super Ljava/lang/Object;
.source "MediationBannerAdListener.java"

# interfaces
.implements Lcom/adfonic/android/AdListener;


# instance fields
.field private adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

.field private listener:Lcom/google/ads/mediation/MediationBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/MediationBannerListener;Lcom/google/ads/mediation/adfonic/AdfonicAdapter;)V
    .locals 0
    .parameter "listener"
    .parameter "adapter"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 15
    iput-object p2, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    .line 16
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 41
    return-void
.end method

.method public onDismissScreen()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 36
    return-void
.end method

.method public onInternalError()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 61
    return-void
.end method

.method public onInvalidRequest()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 46
    return-void
.end method

.method public onLeaveApplication()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 31
    return-void
.end method

.method public onNetworkError()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 51
    return-void
.end method

.method public onNoFill()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 56
    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 26
    return-void
.end method

.method public onReceivedAd()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->listener:Lcom/google/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adfonic/listener/MediationBannerAdListener;->adapter:Lcom/google/ads/mediation/adfonic/AdfonicAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 21
    return-void
.end method
