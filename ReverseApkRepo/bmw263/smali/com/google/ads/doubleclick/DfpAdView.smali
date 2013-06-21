.class public Lcom/google/ads/doubleclick/DfpAdView;
.super Lcom/google/ads/AdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method


# virtual methods
.method public setAppEventListener(Lcom/google/ads/h;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setAppEventListener(Lcom/google/ads/h;)V

    .line 68
    return-void
.end method

.method public varargs setSupportedAdSizes([Lcom/google/ads/g;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setSupportedAdSizes([Lcom/google/ads/g;)V

    .line 77
    return-void
.end method
