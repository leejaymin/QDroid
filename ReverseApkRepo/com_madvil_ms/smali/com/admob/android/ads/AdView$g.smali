.class final Lcom/admob/android/ads/AdView$g;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$g;->b:Ljava/lang/ref/WeakReference;

    .line 1547
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$g;->a:Ljava/lang/ref/WeakReference;

    .line 1548
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/high16 v2, 0x4000

    .line 1556
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/AdView$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admob/android/ads/AdView;

    move-object v8, v0

    .line 1557
    iget-object v1, p0, Lcom/admob/android/ads/AdView$g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/admob/android/ads/k;

    move-object v9, v0

    .line 1558
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 1560
    invoke-static {v8}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;

    move-result-object v10

    .line 1563
    if-eqz v10, :cond_0

    .line 1565
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 1567
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/admob/android/ads/k;->setVisibility(I)V

    .line 1570
    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 1571
    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v1, v2

    .line 1572
    const v1, -0x41333333

    invoke-virtual {v8}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v1, v2

    .line 1573
    new-instance v1, Lcom/admob/android/ads/an;

    const/high16 v2, 0x42b4

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/admob/android/ads/an;-><init>(FFFFFZ)V

    .line 1575
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Lcom/admob/android/ads/an;->setDuration(J)V

    .line 1576
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/an;->setFillAfter(Z)V

    .line 1577
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/an;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1578
    new-instance v2, Lcom/admob/android/ads/AdView$g$1;

    invoke-direct {v2, p0, v10, v8, v9}, Lcom/admob/android/ads/AdView$g$1;-><init>(Lcom/admob/android/ads/AdView$g;Lcom/admob/android/ads/k;Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/an;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1606
    invoke-virtual {v8, v1}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :cond_1
    :goto_0
    return-void

    .line 1609
    :catch_0
    move-exception v1

    .line 1611
    const-string v2, "AdMobSDK"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught in SwapViews.run(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
