.class Lcom/inmobi/androidsdk/ai/container/IMWebView$7;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1666
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x5

    const/4 v2, 0x0

    .line 1670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 1671
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1676
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eq v0, v7, :cond_b

    .line 1677
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 1680
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1681
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IMWebView-> SensorEventListener, It came inside the listener"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1684
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1682
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1681
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1687
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1688
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1689
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1691
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    if-eqz v3, :cond_2

    .line 1692
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1693
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-le v3, v9, :cond_1

    .line 1694
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1696
    :cond_1
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1697
    const-string v3, "InMobiAndroidSDK_3.5.4"

    .line 1698
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMWebView-> SensorEventListener, It is a tablet"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1700
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1698
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1697
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_2
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v3, :cond_9

    .line 1705
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1706
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-ne v3, v8, :cond_d

    .line 1707
    :cond_3
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1708
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1709
    if-le v0, v1, :cond_1b

    move v5, v1

    .line 1723
    :goto_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    if-eqz v1, :cond_4

    .line 1724
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iput v5, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1725
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1728
    :cond_4
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v6, v0, v1

    .line 1729
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 1731
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_e

    .line 1732
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1733
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1732
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    .line 1738
    :goto_2
    const/4 v0, 0x0

    .line 1739
    const/4 v1, 0x0

    .line 1740
    if-eqz v3, :cond_1a

    .line 1742
    const/16 v0, 0x1b3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1741
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1744
    const/16 v1, 0x1b6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1743
    check-cast v1, Landroid/widget/RelativeLayout;

    move-object v3, v1

    move-object v4, v0

    .line 1747
    :goto_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1748
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 1750
    :cond_5
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1751
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 1752
    const-string v1, "IMWebView-> SensorEventListener, It is the case from landscape to portrait"

    .line 1751
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1757
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1756
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1758
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    sub-int v0, v6, v0

    .line 1759
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    .line 1760
    iget-object v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v6}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v6

    iget v6, v6, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1759
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1763
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v0, v1

    .line 1762
    sub-int v0, v5, v0

    .line 1765
    if-gez v0, :cond_f

    .line 1766
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v0, v1

    .line 1767
    if-gez v0, :cond_19

    .line 1768
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1769
    add-int/2addr v0, v5

    .line 1768
    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1775
    :goto_4
    if-eqz v4, :cond_9

    .line 1777
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1776
    invoke-virtual {v4, v2, v0, v1, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1778
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1779
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1780
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1781
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v1, :cond_7

    .line 1782
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1783
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1782
    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1784
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1785
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1784
    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1786
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1788
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1789
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v1

    .line 1790
    if-eqz v1, :cond_8

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_8

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_8

    .line 1792
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1791
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1793
    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v2

    .line 1794
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1793
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1798
    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1799
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1800
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1798
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1801
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_10

    .line 1802
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1803
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1804
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1805
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1803
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1806
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1814
    :goto_5
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1815
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dimentions: {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1817
    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1818
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1815
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eq v0, v7, :cond_a

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1900
    :cond_a
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :cond_b
    :goto_7
    return-void

    .line 1673
    :cond_c
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    goto/16 :goto_0

    .line 1715
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1716
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1717
    if-ge v0, v1, :cond_1b

    move v5, v1

    .line 1720
    goto/16 :goto_1

    .line 1735
    :cond_e
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1736
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1735
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    goto/16 :goto_2

    .line 1773
    :cond_f
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    goto/16 :goto_4

    .line 1808
    :cond_10
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1809
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1810
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1811
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1809
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1904
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 1905
    const-string v2, "Exception while changing the container coordinates or width while orientation change"

    .line 1904
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1821
    :cond_11
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 1822
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 1824
    :cond_12
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 1825
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 1826
    const-string v1, "IMWebView-> SensorEventListener, It is the case from portrait to landscape"

    .line 1825
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_13
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1831
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1830
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1832
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    sub-int v0, v5, v0

    .line 1833
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    .line 1834
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1833
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1838
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v0, v1

    .line 1837
    sub-int v0, v6, v0

    .line 1840
    if-gez v0, :cond_16

    .line 1841
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v1

    .line 1842
    if-gez v0, :cond_18

    .line 1843
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1844
    add-int/2addr v0, v5

    .line 1843
    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    move v1, v2

    .line 1850
    :goto_8
    if-eqz v4, :cond_9

    .line 1851
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 1852
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1851
    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1853
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1854
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1855
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1856
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v2, :cond_14

    .line 1857
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1858
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1857
    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1859
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1860
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1859
    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1861
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1863
    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1864
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v2

    .line 1865
    if-eqz v2, :cond_15

    iget v4, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_15

    iget v4, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_15

    .line 1867
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1866
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1868
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v5, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v5

    .line 1869
    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1868
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1873
    :cond_15
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1874
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1875
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1873
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1876
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_17

    .line 1877
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1878
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1879
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1880
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1878
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1881
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1889
    :goto_9
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1890
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimentions: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1891
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1892
    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1893
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1890
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1848
    :cond_16
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    move v1, v0

    goto/16 :goto_8

    .line 1883
    :cond_17
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1884
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1885
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1886
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1884
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    :cond_18
    move v1, v0

    goto/16 :goto_8

    :cond_19
    move v2, v0

    goto/16 :goto_4

    :cond_1a
    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_3

    :cond_1b
    move v5, v0

    move v0, v1

    goto/16 :goto_1
.end method
