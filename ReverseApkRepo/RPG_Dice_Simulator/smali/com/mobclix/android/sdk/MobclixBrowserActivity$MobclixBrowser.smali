.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;
.super Landroid/widget/LinearLayout;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixBrowser"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private cachedHTML:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, ""

    .line 677
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 632
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 627
    const-string v0, ""

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    .line 633
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    .line 636
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 637
    .local v7, responseObject:Lorg/json/JSONObject;
    const-string v0, "url"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    .line 638
    const-string v0, "cachedHTML"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v7           #responseObject:Lorg/json/JSONObject;
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    .line 644
    invoke-virtual {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setProgressBarVisibility(Z)V

    .line 645
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 664
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 670
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->addView(Landroid/view/View;)V

    return-void

    .line 639
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 640
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    goto :goto_0

    .line 674
    .end local v6           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method
