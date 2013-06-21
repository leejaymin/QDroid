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

    .line 977
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

    .line 982
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "InMobiAndroidSDK_3.5.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch: view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 984
    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
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

    .line 988
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1012
    :cond_1
    :goto_0
    return v3

    .line 991
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

    .line 992
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    goto :goto_0

    .line 995
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 996
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    .line 997
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->g(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 999
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    .line 1000
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->k(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->l(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1001
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1005
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->n(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1007
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1008
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0

    .line 1009
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->j(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_0
.end method
