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

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1668
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

    .line 1672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_c

    .line 1673
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1678
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eq v0, v7, :cond_b

    .line 1679
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->q(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 1682
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1683
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 1684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IMWebView-> SensorEventListener, It came inside the listener"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1686
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1683
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1689
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1690
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1691
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1693
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    if-eqz v3, :cond_2

    .line 1694
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1695
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-le v3, v9, :cond_1

    .line 1696
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    .line 1698
    :cond_1
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1699
    const-string v3, "InMobiAndroidSDK_3.5.2"

    .line 1700
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMWebView-> SensorEventListener, It is a tablet"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1702
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1700
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1699
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_2
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v3, :cond_9

    .line 1707
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 1708
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v3

    if-ne v3, v8, :cond_d

    .line 1709
    :cond_3
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1710
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1711
    if-le v0, v1, :cond_1b

    move v5, v1

    .line 1725
    :goto_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    if-eqz v1, :cond_4

    .line 1726
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iput v5, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1727
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1730
    :cond_4
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v6, v0, v1

    .line 1731
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->t(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 1733
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_e

    .line 1734
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1734
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    .line 1740
    :goto_2
    const/4 v0, 0x0

    .line 1741
    const/4 v1, 0x0

    .line 1742
    if-eqz v3, :cond_1a

    .line 1744
    const/16 v0, 0x1b3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1743
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1746
    const/16 v1, 0x1b6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1745
    check-cast v1, Landroid/widget/RelativeLayout;

    move-object v3, v1

    move-object v4, v0

    .line 1749
    :goto_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1750
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 1752
    :cond_5
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1753
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 1754
    const-string v1, "IMWebView-> SensorEventListener, It is the case from landscape to portrait"

    .line 1753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1758
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1760
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    sub-int v0, v6, v0

    .line 1761
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    .line 1762
    iget-object v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v6}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v6

    iget v6, v6, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1761
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1765
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v0, v1

    .line 1764
    sub-int v0, v5, v0

    .line 1767
    if-gez v0, :cond_f

    .line 1768
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v0, v1

    .line 1769
    if-gez v0, :cond_19

    .line 1770
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1771
    add-int/2addr v0, v5

    .line 1770
    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1777
    :goto_4
    if-eqz v4, :cond_9

    .line 1779
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1778
    invoke-virtual {v4, v2, v0, v1, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1780
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1781
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1782
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1783
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v1, :cond_7

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

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1784
    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1786
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1787
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1786
    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1788
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1790
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1791
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v1

    .line 1792
    if-eqz v1, :cond_8

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_8

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_8

    .line 1794
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1793
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1795
    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v2

    .line 1796
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1795
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1800
    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1801
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1802
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1800
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1803
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_10

    .line 1804
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1805
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1806
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1807
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1805
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1808
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1816
    :goto_5
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1817
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dimentions: {"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1818
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

    .line 1819
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

    .line 1820
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

    .line 1817
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
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

    .line 1902
    :cond_a
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1913
    :cond_b
    :goto_7
    return-void

    .line 1675
    :cond_c
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V

    goto/16 :goto_0

    .line 1717
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

    .line 1718
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v4, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1719
    if-ge v0, v1, :cond_1b

    move v5, v1

    .line 1722
    goto/16 :goto_1

    .line 1737
    :cond_e
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1738
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1737
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    goto/16 :goto_2

    .line 1775
    :cond_f
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    goto/16 :goto_4

    .line 1810
    :cond_10
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1811
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1812
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1813
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1811
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1814
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1906
    const-string v1, "InMobiAndroidSDK_3.5.2"

    .line 1907
    const-string v2, "Exception while changing the container coordinates or width while orientation change"

    .line 1906
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1823
    :cond_11
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 1824
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I

    move-result v0

    if-ne v0, v9, :cond_9

    .line 1826
    :cond_12
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 1827
    const-string v0, "InMobiAndroidSDK_3.5.2"

    .line 1828
    const-string v1, "IMWebView-> SensorEventListener, It is the case from portrait to landscape"

    .line 1827
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_13
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1833
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 1832
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1834
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    sub-int v0, v5, v0

    .line 1835
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    .line 1836
    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 1835
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1840
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v0, v1

    .line 1839
    sub-int v0, v6, v0

    .line 1842
    if-gez v0, :cond_16

    .line 1843
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v1

    .line 1844
    if-gez v0, :cond_18

    .line 1845
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v1

    iget-object v5, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v5

    iget v5, v5, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1846
    add-int/2addr v0, v5

    .line 1845
    iput v0, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    move v1, v2

    .line 1852
    :goto_8
    if-eqz v4, :cond_9

    .line 1853
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 1854
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1853
    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1855
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1856
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iput v1, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1857
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1858
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v2, :cond_14

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

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1859
    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1861
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    .line 1862
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1861
    iput v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1863
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 1865
    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1866
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v2

    .line 1867
    if-eqz v2, :cond_15

    iget v4, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ltz v4, :cond_15

    iget v4, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ltz v4, :cond_15

    .line 1869
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1868
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1870
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v5, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    add-int/2addr v4, v5

    .line 1871
    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    add-int/2addr v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1870
    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1875
    :cond_15
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1876
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1877
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1875
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_17

    .line 1879
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    .line 1880
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1881
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1882
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1880
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1883
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v2

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1891
    :goto_9
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1892
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimentions: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1893
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

    .line 1894
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

    .line 1895
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

    .line 1892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1850
    :cond_16
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v0

    iget v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    move v1, v0

    goto/16 :goto_8

    .line 1885
    :cond_17
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1886
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1887
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v3

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1888
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    move-result-object v4

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1886
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1889
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
