.class Lcom/fleapapa/helper/ItemList$16;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$16;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 179
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 185
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 189
    return-void
.end method
