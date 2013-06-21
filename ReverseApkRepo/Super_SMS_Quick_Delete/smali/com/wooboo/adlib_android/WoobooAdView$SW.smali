.class final Lcom/wooboo/adlib_android/WoobooAdView$SW;
.super Ljava/lang/Object;
.source "WoobooAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooboo/adlib_android/WoobooAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SW"
.end annotation


# instance fields
.field private newAd:Lcom/wooboo/adlib_android/_;

.field private oldAd:Lcom/wooboo/adlib_android/_;

.field final synthetic this$0:Lcom/wooboo/adlib_android/WoobooAdView;


# direct methods
.method public constructor <init>(Lcom/wooboo/adlib_android/WoobooAdView;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter "newAd"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->newAd:Lcom/wooboo/adlib_android/_;

    return-void
.end method

.method static synthetic access$0(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;
    .locals 1
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wooboo/adlib_android/WoobooAdView$SW;Lcom/wooboo/adlib_android/_;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    return-void
.end method

.method static synthetic access$2(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/_;
    .locals 1
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->newAd:Lcom/wooboo/adlib_android/_;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wooboo/adlib_android/WoobooAdView$SW;)Lcom/wooboo/adlib_android/WoobooAdView;
    .locals 1
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    .line 515
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    #getter for: Lcom/wooboo/adlib_android/WoobooAdView;->ad:Lcom/wooboo/adlib_android/_;
    invoke-static {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->access$0(Lcom/wooboo/adlib_android/WoobooAdView;)Lcom/wooboo/adlib_android/_;

    move-result-object v1

    iput-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    .line 516
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/wooboo/adlib_android/_;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->oldAd:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/_;->stopGIFShow()V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->newAd:Lcom/wooboo/adlib_android/_;

    invoke-virtual {v1, v6}, Lcom/wooboo/adlib_android/_;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v7

    .line 524
    .local v3, centerX:F
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/WoobooAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v7

    .line 525
    .local v4, centerY:F
    const v1, -0x41333333

    iget-object v2, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v2}, Lcom/wooboo/adlib_android/WoobooAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 526
    .local v5, zDepth:F
    new-instance v0, Lcom/wooboo/adlib_android/RA;

    const/high16 v1, 0x42b4

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/RA;-><init>(FFFFFZ)V

    .line 527
    .local v0, rotation:Lcom/wooboo/adlib_android/RA;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/wooboo/adlib_android/RA;->setDuration(J)V

    .line 528
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/RA;->setFillAfter(Z)V

    .line 529
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/RA;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 530
    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;

    invoke-direct {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView$SW$1;-><init>(Lcom/wooboo/adlib_android/WoobooAdView$SW;)V

    invoke-virtual {v0, v1}, Lcom/wooboo/adlib_android/RA;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 547
    iget-object v1, p0, Lcom/wooboo/adlib_android/WoobooAdView$SW;->this$0:Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v1, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 548
    return-void
.end method
