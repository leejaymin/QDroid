.class final Lcom/admob/android/ads/AdView$SwapViews;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private newAd:Lcom/admob/android/ads/AdContainer;

.field final synthetic this$0:Lcom/admob/android/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter
    .parameter "newAd"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p2, p0, Lcom/admob/android/ads/AdView$SwapViews;->newAd:Lcom/admob/android/ads/AdContainer;

    .line 766
    return-void
.end method

.method static synthetic access$900(Lcom/admob/android/ads/AdView$SwapViews;)Lcom/admob/android/ads/AdContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/admob/android/ads/AdView$SwapViews;->newAd:Lcom/admob/android/ads/AdContainer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    .line 771
    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    #getter for: Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;
    invoke-static {v1}, Lcom/admob/android/ads/AdView;->access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 772
    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews;->newAd:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v1, v6}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v7

    .line 776
    .local v3, centerX:F
    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v7

    .line 777
    .local v4, centerY:F
    const v1, -0x41333333

    iget-object v2, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v2}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 778
    .local v5, zDepth:F
    new-instance v0, Lcom/admob/android/ads/Rotate3dAnimation;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 780
    .local v0, rotation:Lcom/admob/android/ads/Rotate3dAnimation;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/Rotate3dAnimation;->setDuration(J)V

    .line 781
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setFillAfter(Z)V

    .line 782
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 783
    new-instance v1, Lcom/admob/android/ads/AdView$SwapViews$1;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$SwapViews$1;-><init>(Lcom/admob/android/ads/AdView$SwapViews;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    iget-object v1, p0, Lcom/admob/android/ads/AdView$SwapViews;->this$0:Lcom/admob/android/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    return-void
.end method
