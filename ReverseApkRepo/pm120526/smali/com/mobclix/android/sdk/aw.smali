.class Lcom/mobclix/android/sdk/aw;
.super Lcom/mobclix/android/sdk/bq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mobclix/android/sdk/cq;

.field private c:Lcom/mobclix/android/sdk/cf;

.field private d:Lcom/mobclix/android/sdk/cd;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/bq;-><init>(Lcom/mobclix/android/sdk/ar;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/aw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/aw;->requestDisallowInterceptTouchEvent(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/mobclix/android/sdk/aw;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    return-object v0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/aw;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    return-void
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cd;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/cq;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    new-instance v0, Lcom/mobclix/android/sdk/cf;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-direct {v0, v1, v3}, Lcom/mobclix/android/sdk/cf;-><init>(Lcom/mobclix/android/sdk/cq;Z)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/cq;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    const-string v2, "MOBCLIX"

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/cq;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->a(Lcom/mobclix/android/sdk/cf;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    const-class v1, Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v3

    move-object v3, v4

    :goto_2
    array-length v4, v1

    if-lt v2, v4, :cond_3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v1, "OFF"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Landroid/webkit/WebSettings;

    const-string v4, "setPluginState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    new-instance v1, Lcom/mobclix/android/sdk/ax;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/ax;-><init>(Lcom/mobclix/android/sdk/aw;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    new-instance v1, Lcom/mobclix/android/sdk/ay;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/ay;-><init>(Lcom/mobclix/android/sdk/aw;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    new-instance v1, Lcom/mobclix/android/sdk/bg;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bg;-><init>(Lcom/mobclix/android/sdk/aw;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/cq;->setFocusable(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/aw;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v0, Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/cq;-><init>(Lcom/mobclix/android/sdk/cd;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    new-instance v0, Lcom/mobclix/android/sdk/cf;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-direct {v0, v1, v7}, Lcom/mobclix/android/sdk/cf;-><init>(Lcom/mobclix/android/sdk/cq;Z)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    iget v1, v1, Lcom/mobclix/android/sdk/cd;->f:I

    iget-object v2, p0, Lcom/mobclix/android/sdk/aw;->d:Lcom/mobclix/android/sdk/cd;

    iget v2, v2, Lcom/mobclix/android/sdk/cd;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.webkit.WebSettings$PluginState"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v3, v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->e()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->B:Lcom/mobclix/android/sdk/bh;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/bh;->a(Lcom/mobclix/android/sdk/aw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/mobclix/android/sdk/aw;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->d()V

    return-void
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/aw;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/aw;->b:Lcom/mobclix/android/sdk/cq;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/aw;->c:Lcom/mobclix/android/sdk/cf;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
