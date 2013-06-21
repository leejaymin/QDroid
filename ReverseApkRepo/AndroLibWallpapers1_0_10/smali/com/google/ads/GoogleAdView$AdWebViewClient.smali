.class Lcom/google/ads/GoogleAdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "GoogleAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebViewClient"
.end annotation


# instance fields
.field private mStartedAdFetch:Z

.field final synthetic this$0:Lcom/google/ads/GoogleAdView;


# direct methods
.method private constructor <init>(Lcom/google/ads/GoogleAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdView$AdWebViewClient;-><init>(Lcom/google/ads/GoogleAdView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/ads/GoogleAdView$AdWebViewClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->reset()V

    return-void
.end method

.method private isRedirect(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$300()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 310
    invoke-static {}, Lcom/google/ads/GoogleAdView;->access$300()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 314
    :goto_1
    return v2

    .line 309
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 319
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 281
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    .line 282
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/AdViewListener;->onFinishFetchAd()V

    .line 286
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 267
    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->mStartedAdFetch:Z

    .line 269
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    .line 270
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v0}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/AdViewListener;->onStartFetchAd()V

    .line 274
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 290
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v2}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    #getter for: Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;
    invoke-static {v2}, Lcom/google/ads/GoogleAdView;->access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/ads/AdViewListener;->onClickAd()V

    .line 300
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v2, p0, Lcom/google/ads/GoogleAdView$AdWebViewClient;->this$0:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v2}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    const/4 v2, 0x1

    return v2
.end method
