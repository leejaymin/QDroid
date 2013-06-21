.class Lcom/fleapapa/helper/ItemView$12;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$12;->this$0:Lcom/fleapapa/helper/ItemView;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 401
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 402
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 407
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 408
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 405
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 411
    return-void
.end method
