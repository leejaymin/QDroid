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

    .line 449
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 471
    const-string v1, "assets/im_next_arrow_active.png"

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    :cond_0
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 483
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 476
    const-string v1, "assets/im_next_arrow_inactive.png"

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 455
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 458
    const-string v1, "assets/im_next_arrow_inactive.png"

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    :cond_0
    return-void
.end method
