.class public Lcom/nix/apps/androlib/wallpapers/utils/ads/AdMobListener;
.super Lcom/admob/android/ads/SimpleAdListener;
.source "AdMobListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Wallpapers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/admob/android/ads/SimpleAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 18
    const-string v0, "Wallpapers"

    const-string v1, "onFailedToReceiveAd"

    invoke-static {v0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 28
    const-string v0, "Wallpapers"

    const-string v1, "onFailedToReceiveRefreshedAd"

    invoke-static {v0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 38
    const-string v0, "Wallpapers"

    const-string v1, "onReceiveAd"

    invoke-static {v0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 48
    const-string v0, "Wallpapers"

    const-string v1, "onReceiveRefreshedAd"

    invoke-static {v0, v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
