.class public interface abstract Lcom/admob/android/ads/AdView$AdListener;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
.end method

.method public abstract onNewAd()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onReceiveAd(Lcom/admob/android/ads/AdView;)V
.end method
