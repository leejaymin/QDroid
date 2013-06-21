.class Lcom/inmobi/androidsdk/ai/container/IMWebView$12;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private final synthetic b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 3026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 3040
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3042
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3041
    check-cast v0, Landroid/view/ViewGroup;

    .line 3043
    if-eqz v0, :cond_0

    .line 3045
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    .line 3044
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3061
    :cond_0
    :goto_0
    return-void

    .line 3049
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3048
    check-cast v0, Landroid/view/ViewGroup;

    .line 3050
    if-eqz v0, :cond_0

    .line 3051
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3055
    :catch_0
    move-exception v0

    .line 3056
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3057
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 3058
    const-string v1, "Problem removing the audio relativelayout"

    .line 3057
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3033
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->onComplete(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 3034
    return-void
.end method

.method public onPrepared(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3029
    return-void
.end method
