.class public Lcom/admob/android/ads/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdView$SwapViews;,
        Lcom/admob/android/ads/AdView$AdListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x2bc

.field private static final ANIMATION_Z_DEPTH_PERCENTAGE:F = -0.4f


# instance fields
.field private ad:Lcom/admob/android/ads/AdContainer;

.field private backgroundColor:I

.field private hideWhenNoAd:Z

.field private keywords:Ljava/lang/String;

.field private listener:Lcom/admob/android/ads/AdView$AdListener;

.field private requestInterval:I

.field private requestIntervalTimer:Ljava/util/Timer;

.field private requestingFreshAd:Z

.field private searchQuery:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    invoke-virtual {p0, v8}, Lcom/admob/android/ads/AdView;->setFocusable(Z)V

    .line 170
    const/high16 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/admob/android/ads/AdView;->setDescendantFocusability(I)V

    .line 171
    invoke-virtual {p0, v8}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    .line 174
    const/4 v5, -0x1

    .line 175
    .local v5, tc:I
    const/high16 v0, -0x100

    .line 177
    .local v0, bc:I
    if-eqz p2, :cond_1

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://schemas.android.com/apk/res/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, namespace:Ljava/lang/String;
    const-string v7, "testing"

    invoke-interface {p2, v3, v7, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 182
    .local v6, testing:Z
    if-eqz v6, :cond_0

    .line 184
    invoke-static {v6}, Lcom/admob/android/ads/AdManager;->setInTestMode(Z)V

    .line 187
    :cond_0
    const-string v7, "textColor"

    const/4 v8, -0x1

    invoke-interface {p2, v3, v7, v8}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 188
    const-string v7, "backgroundColor"

    const/high16 v8, -0x100

    invoke-interface {p2, v3, v7, v8}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 190
    const-string v7, "keywords"

    invoke-interface {p2, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    .line 192
    const-string v7, "refreshInterval"

    invoke-interface {p2, v3, v7, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, freshAdsEvery:I
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setRequestInterval(I)V

    .line 195
    const-string v7, "isGoneWithoutAd"

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->isGoneWithoutAd()Z

    move-result v8

    invoke-interface {p2, v3, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 196
    .local v2, isGoneWithoutAd:Z
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setGoneWithoutAd(Z)V

    .line 199
    .end local v1           #freshAdsEvery:I
    .end local v2           #isGoneWithoutAd:Z
    .end local v3           #namespace:Ljava/lang/String;
    .end local v6           #testing:Z
    :cond_1
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/AdView;->setTextColor(I)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 204
    new-instance v4, Lcom/admob/android/ads/AdContainer;

    const/4 v7, 0x0

    invoke-direct {v4, v7, p1}, Lcom/admob/android/ads/AdContainer;-><init>(Lcom/admob/android/ads/Ad;Landroid/content/Context;)V

    .line 205
    .local v4, sizer:Lcom/admob/android/ads/AdContainer;
    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;)V

    .line 208
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 212
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/AdContainer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/admob/android/ads/AdView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    return p1
.end method

.method static synthetic access$401(Lcom/admob/android/ads/AdView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$AdListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->applyFadeIn(Lcom/admob/android/ads/AdContainer;)V

    return-void
.end method

.method static synthetic access$700(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->applyRotation(Lcom/admob/android/ads/AdContainer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/admob/android/ads/AdView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    return v0
.end method

.method private applyFadeIn(Lcom/admob/android/ads/AdContainer;)V
    .locals 3
    .parameter "newAd"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    .line 702
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 703
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 704
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 705
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 706
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 708
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 709
    return-void
.end method

.method private applyRotation(Lcom/admob/android/ads/AdContainer;)V
    .locals 7
    .parameter "newAd"

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x4000

    .line 719
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/admob/android/ads/AdContainer;->setVisibility(I)V

    .line 722
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 723
    .local v3, centerX:F
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 724
    .local v4, centerY:F
    const v1, -0x41333333

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v1, v2

    .line 728
    .local v5, zDepth:F
    new-instance v0, Lcom/admob/android/ads/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 730
    .local v0, rotation:Lcom/admob/android/ads/Rotate3dAnimation;
    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/Rotate3dAnimation;->setDuration(J)V

    .line 731
    invoke-virtual {v0, v6}, Lcom/admob/android/ads/Rotate3dAnimation;->setFillAfter(Z)V

    .line 732
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    new-instance v1, Lcom/admob/android/ads/AdView$3;

    invoke-direct {v1, p0, p1}, Lcom/admob/android/ads/AdView$3;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/AdContainer;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 751
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 752
    return-void
.end method

.method private manageRequestIntervalTimer(Z)V
    .locals 6
    .parameter "start"

    .prologue
    .line 408
    monitor-enter p0

    .line 410
    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    if-lez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    .line 416
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/admob/android/ads/AdView$2;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/AdView$2;-><init>(Lcom/admob/android/ads/AdView;)V

    iget v2, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    int-to-long v2, v2

    iget v4, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 441
    :cond_0
    :goto_0
    monitor-exit p0

    .line 442
    return-void

    .line 432
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    if-nez v0, :cond_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->requestIntervalTimer:Ljava/util/Timer;

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/admob/android/ads/AdView;->backgroundColor:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestInterval()I
    .locals 2

    .prologue
    .line 342
    iget v1, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    div-int/lit16 v0, v1, 0x3e8

    .line 343
    .local v0, requestIntervalSecs:I
    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/admob/android/ads/AdView;->textColor:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    const/16 v0, 0x8

    .line 657
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneWithoutAd()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    .line 455
    return-void
.end method

.method public requestFreshAd()V
    .locals 2

    .prologue
    const-string v1, "AdMob SDK"

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "AdMob SDK"

    const-string v0, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "AdMob SDK"

    const-string v0, "Ignoring requestFreshAd() because we are already getting a fresh ad."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->requestingFreshAd:Z

    .line 235
    new-instance v0, Lcom/admob/android/ads/AdView$1;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdView$1;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView$1;->start()V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 500
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->backgroundColor:I

    .line 502
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v0, p1}, Lcom/admob/android/ads/AdContainer;->setBackgroundColor(I)V

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 508
    return-void
.end method

.method public setGoneWithoutAd(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/admob/android/ads/AdView;->hideWhenNoAd:Z

    .line 581
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->keywords:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setListener(Lcom/admob/android/ads/AdView$AdListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 671
    monitor-enter p0

    .line 673
    :try_start_0
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->listener:Lcom/admob/android/ads/AdView$AdListener;

    .line 674
    monitor-exit p0

    .line 675
    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRequestInterval(I)V
    .locals 8
    .parameter "requestInterval"

    .prologue
    const/16 v6, 0x258

    const/16 v5, 0xf

    const-string v7, "AdView.setRequestInterval("

    .line 362
    const/16 v1, 0xf

    .line 363
    .local v1, minSecs:I
    const/16 v0, 0x258

    .line 365
    .local v0, maxSecs:I
    if-gtz p1, :cond_1

    .line 367
    const/4 p1, 0x0

    .line 380
    :cond_0
    :goto_0
    mul-int/lit16 v2, p1, 0x3e8

    .line 381
    .local v2, requestIntervalMillisecs:I
    iput v2, p0, Lcom/admob/android/ads/AdView;->requestInterval:I

    .line 384
    if-nez p1, :cond_3

    .line 387
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    .line 395
    :goto_1
    return-void

    .line 369
    .end local v2           #requestIntervalMillisecs:I
    :cond_1
    if-ge p1, v5, :cond_2

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView.setRequestInterval("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") seconds must be >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_2
    if-le p1, v6, :cond_0

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView.setRequestInterval("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") seconds must be <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .restart local v2       #requestIntervalMillisecs:I
    :cond_3
    const-string v3, "AdMob SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting fresh ads every "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/admob/android/ads/AdView;->manageRequestIntervalTimer(Z)V

    goto :goto_1
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "searchQuery"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/admob/android/ads/AdView;->searchQuery:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 468
    const/high16 v0, -0x100

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->textColor:I

    .line 470
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {v0, p1}, Lcom/admob/android/ads/AdContainer;->setTextColor(I)V

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    .line 476
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    .line 605
    invoke-super {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    .line 607
    .local v3, originalVisiblity:I
    if-eq v3, p1, :cond_1

    .line 609
    monitor-enter p0

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getChildCount()I

    move-result v1

    .line 614
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 616
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 617
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 624
    if-nez p1, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 635
    :goto_1
    monitor-exit p0

    .line 637
    .end local v1           #children:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 631
    .restart local v1       #children:I
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->removeView(Landroid/view/View;)V

    .line 632
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/admob/android/ads/AdView;->ad:Lcom/admob/android/ads/AdContainer;

    .line 633
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    goto :goto_1

    .line 635
    .end local v1           #children:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
