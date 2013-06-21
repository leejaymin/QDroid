.class final Lcom/mobclix/android/sdk/y;
.super Landroid/widget/RelativeLayout;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/mobclix/android/sdk/y;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->d:Ljava/lang/String;

    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->e:Ljava/lang/String;

    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/y;->b:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/y;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    const-string v1, "cachedHTML"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/y;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    const-string v1, "browserType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->e:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    :try_start_5
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setProgressBarVisibility(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/z;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/z;-><init>(Lcom/mobclix/android/sdk/y;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/mobclix/android/sdk/aa;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/aa;-><init>(Lcom/mobclix/android/sdk/y;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/y;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->e:Ljava/lang/String;

    const-string v1, "minimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1e

    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x108005a

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v3, 0x0

    const/high16 v4, 0x43b4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v2, -0x7

    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    const/4 v3, -0x7

    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    const/4 v4, -0x7

    invoke-static {p1, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    const/4 v5, -0x7

    invoke-static {p1, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/mobclix/android/sdk/ab;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/ab;-><init>(Lcom/mobclix/android/sdk/y;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/y;->addView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_0
    :goto_4
    return-void

    :catch_0
    move-exception v1

    :try_start_6
    const-string v1, "http://www.mobclix.com"

    iput-object v1, p0, Lcom/mobclix/android/sdk/y;->c:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    const-string v0, "http://www.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->c:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_8
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/y;->d:Ljava/lang/String;

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const-string v0, "standard"

    iput-object v0, p0, Lcom/mobclix/android/sdk/y;->e:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :cond_1
    :try_start_9
    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/y;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/y;->d:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/y;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/y;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/y;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/y;->a:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method
