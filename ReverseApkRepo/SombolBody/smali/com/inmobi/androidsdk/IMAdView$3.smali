.class Lcom/inmobi/androidsdk/IMAdView$3;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1057
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->removeAllViews()V

    .line 1058
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->o(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z

    .line 1070
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    if-eq v0, v1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-eq v0, v1, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->p(Lcom/inmobi/androidsdk/IMAdView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    :cond_2
    :goto_1
    return-void

    .line 1065
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1066
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1084
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Error animating banner ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1078
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/IMAdView;->o(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;Z)V

    .line 1079
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->d(Lcom/inmobi/androidsdk/IMAdView;Z)V

    .line 1080
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$3;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1078
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    return-void
.end method
