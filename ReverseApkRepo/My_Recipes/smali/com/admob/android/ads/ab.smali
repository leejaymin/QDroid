.class public abstract Lcom/admob/android/ads/ab;
.super Landroid/widget/RelativeLayout;
.source "AdMobVideoView.java"


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:F

.field protected c:Lcom/admob/android/ads/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/ab;->a:Landroid/os/Handler;

    .line 26
    invoke-virtual {p0}, Lcom/admob/android/ads/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/admob/android/ads/ab;->b:F

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/admob/android/ads/r;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/admob/android/ads/ab;->c:Lcom/admob/android/ads/r;

    .line 19
    return-void
.end method
