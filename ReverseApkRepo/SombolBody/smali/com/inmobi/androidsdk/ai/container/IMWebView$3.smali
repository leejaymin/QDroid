.class Lcom/inmobi/androidsdk/ai/container/IMWebView$3;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 3319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3323
    const/4 v1, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3324
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 3326
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3327
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 3328
    const-string v2, "Back Button pressed while fullscreen video is playing "

    .line 3327
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 3334
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
