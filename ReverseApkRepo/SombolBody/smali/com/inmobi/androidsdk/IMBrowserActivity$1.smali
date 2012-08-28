.class Lcom/inmobi/androidsdk/IMBrowserActivity$1;
.super Landroid/webkit/WebViewClient;
.source "IMBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 494
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 518
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    .line 529
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 530
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 523
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 500
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 505
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    .line 507
    :cond_0
    return-void
.end method
