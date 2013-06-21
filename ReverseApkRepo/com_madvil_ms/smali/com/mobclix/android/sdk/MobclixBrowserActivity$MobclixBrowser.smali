.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;
.super Landroid/widget/RelativeLayout;
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

.field private browserType:Ljava/lang/String;

.field private cachedHTML:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 638
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    .line 633
    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;

    .line 639
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    .line 642
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    .local v10, responseObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v0, "url"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    :goto_0
    :try_start_2
    const-string v0, "cachedHTML"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 645
    :goto_1
    :try_start_3
    const-string v0, "browserType"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 650
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :goto_2
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    .line 651
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setProgressBarVisibility(Z)V

    .line 652
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 671
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 677
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 683
    :goto_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->addView(Landroid/view/View;)V

    .line 684
    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BROWSER TYPE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;

    const-string v1, "minimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x1e

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    const/16 v1, 0x1e

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 687
    .local v8, closeButtonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x5

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    const/4 v1, 0x5

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 689
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 690
    .local v7, closeButton:Landroid/widget/ImageView;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    const v0, 0x108005a

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 693
    .local v6, backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;
    const/4 v0, -0x7

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    const/4 v1, -0x7

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    const/4 v2, -0x7

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    const/4 v3, -0x7

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 694
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    new-instance v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$3;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    invoke-virtual {p0, v7}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->addView(Landroid/view/View;)V

    .end local v6           #backgroundCircle:Landroid/graphics/drawable/ShapeDrawable;
    .end local v7           #closeButton:Landroid/widget/ImageView;
    .end local v8           #closeButtonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 643
    .restart local v10       #responseObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 646
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 647
    .local v9, e:Lorg/json/JSONException;
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 644
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v10       #responseObject:Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v9, v0

    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    goto/16 :goto_1

    .line 645
    .end local v9           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object v9, v0

    .restart local v9       #e:Ljava/lang/Exception;
    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->browserType:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 681
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #responseObject:Lorg/json/JSONObject;
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->cachedHTML:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method
