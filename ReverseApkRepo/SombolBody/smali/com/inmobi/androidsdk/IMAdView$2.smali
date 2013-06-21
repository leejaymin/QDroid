.class Lcom/inmobi/androidsdk/IMAdView$2;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1016
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch: view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1018
    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1046
    :cond_1
    :goto_0
    return v3

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->i(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0

    .line 1029
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 1030
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    .line 1031
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->g(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1033
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 1034
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->k(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->l(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1035
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1036
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1039
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->n(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1041
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1042
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1043
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0
.end method
