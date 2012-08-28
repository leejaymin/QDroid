.class Lcom/inmobi/androidsdk/ai/container/IMWebView$4;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 3361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    .line 3378
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3377
    check-cast v0, Landroid/view/ViewGroup;

    .line 3379
    if-eqz v0, :cond_0

    .line 3380
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3382
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3391
    :cond_1
    :goto_0
    monitor-enter p0

    .line 3396
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3397
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v0

    .line 3398
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    .line 3397
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3399
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 3391
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3401
    return-void

    .line 3384
    :catch_0
    move-exception v0

    .line 3385
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3386
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 3387
    const-string v1, "Problem removing the video framelayout or relativelayout depending on video startstyle"

    .line 3386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3391
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onError(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3368
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;->onComplete(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 3369
    return-void
.end method

.method public onPrepared(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3364
    return-void
.end method
