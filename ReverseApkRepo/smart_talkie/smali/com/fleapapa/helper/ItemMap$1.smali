.class Lcom/fleapapa/helper/ItemMap$1;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemMap;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$1;->this$0:Lcom/fleapapa/helper/ItemMap;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 155
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 161
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 165
    return-void
.end method
