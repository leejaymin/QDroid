.class public Ladverteffect/rappername/AdListener;
.super Lcom/admob/android/ads/SimpleAdListener;
.source "AdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/admob/android/ads/SimpleAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 12
    const-string v0, "APP"

    const-string v1, "failed to receive ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 14
    return-void
.end method

.method public onFailedToReceiveRefreshAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 16
    const-string v0, "APP"

    const-string v1, "failed to refreshed ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 19
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 22
    const-string v0, "APP"

    const-string v1, "receive ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 24
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 27
    const-string v0, "APP"

    const-string v1, "receive refreshed ad"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 29
    return-void
.end method
