.class public Lcom/nix/apps/androlib/wallpapers/utils/ads/AdMobAds;
.super Ljava/lang/Object;
.source "AdMobAds.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Wallpapers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setView(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4
    .parameter "view"
    .parameter "keywords"
    .parameter "imageOnly"

    .prologue
    .line 14
    move-object v0, p0

    check-cast v0, Lcom/admob/android/ads/AdView;

    move-object v1, v0

    .line 18
    .local v1, mAd:Lcom/admob/android/ads/AdView;
    const-string v2, "Wallpapers"

    const-string v3, "setView ADMOB"

    invoke-static {v2, v3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 28
    invoke-virtual {v1, p1}, Lcom/admob/android/ads/AdView;->setKeywords(Ljava/lang/String;)V

    .line 29
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 30
    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 43
    return-void
.end method
