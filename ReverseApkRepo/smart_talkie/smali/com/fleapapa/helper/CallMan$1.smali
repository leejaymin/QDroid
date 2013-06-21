.class Lcom/fleapapa/helper/CallMan$1;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$1;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 120
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 126
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 130
    return-void
.end method
