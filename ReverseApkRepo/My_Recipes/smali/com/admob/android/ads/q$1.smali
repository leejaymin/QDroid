.class final Lcom/admob/android/ads/q$1;
.super Ljava/lang/Object;
.source "AdMobOpener.java"

# interfaces
.implements Lcom/admob/android/ads/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/q;->a(Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/admob/android/ads/e;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "AdMobSDK"

    .line 788
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click processed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/admob/android/ads/e;->c()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    return-void
.end method

.method public final a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "AdMobSDK"

    .line 796
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click processing failed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/admob/android/ads/e;->c()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    :cond_0
    return-void
.end method
