.class Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;
.super Lcom/admob/android/ads/SimpleAdListener;
.source "MrTFree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearandvalid/soundboard/mrtfree/MrTFree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MrTLunarLanderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearandvalid/soundboard/mrtfree/MrTFree;


# direct methods
.method private constructor <init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;->this$0:Lcom/clearandvalid/soundboard/mrtfree/MrTFree;

    invoke-direct {p0}, Lcom/admob/android/ads/SimpleAdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;-><init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;)V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 246
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 256
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveAd(Lcom/admob/android/ads/AdView;)V

    .line 266
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/admob/android/ads/SimpleAdListener;->onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V

    .line 276
    return-void
.end method
