.class public final Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;
.super Lcom/mobclix/android/sdk/MobclixAdView;
.source "MobclixMMABannerXLAdView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    const-string v0, "320x50"

    invoke-direct {p0, p1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    const-string v0, "320x50"

    invoke-direct {p0, p1, v0, p2}, Lcom/mobclix/android/sdk/MobclixAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method
