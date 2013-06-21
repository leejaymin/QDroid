.class public Lcom/google/ads/GoogleAdView;
.super Landroid/widget/ViewSwitcher;
.source "GoogleAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/GoogleAdView$1;,
        Lcom/google/ads/GoogleAdView$AdWebViewClient;,
        Lcom/google/ads/GoogleAdView$AdWebView;
    }
.end annotation


# static fields
.field private static final AD_FOOTER:Ljava/lang/String; = ";\n</script>\n<script type=\'text/javascript\' src=\'http://pagead2.googlesyndication.com/pagead/show_mobile_ads.js\'></script>\n</body>\n</html>"

.field private static final AD_HEADER:Ljava/lang/String; = "<html>\n<body marginwidth=\'0\' marginheight=\'0\'>\n<script type=\'text/javascript\'>\nwindow.google_afma_request = "

.field private static final AD_URL:Ljava/lang/String; = "http://pagead2.googlesyndication.com/pagead/show_mobile_ads.js"

.field private static final DEBUG_WATERMARK_FILE:Ljava/lang/String; = "test_ad.png"

.field private static final ENABLE_REDIRECT_OPTIMIZATION:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GoogleAdView"

.field private static final PROGRESS_BAR_INDEX:I = 0x0

.field private static final REDIRECT_DOMAINS:[Ljava/lang/String; = null

.field private static final TARGET_HEIGHT:I = 0x32

.field private static final TARGET_WIDTH:I = 0x140

.field private static final WEBVIEW_INDEX:I = 0x1


# instance fields
.field private mAdViewListener:Lcom/google/ads/AdViewListener;

.field private mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

.field private mDebugDrawable:Landroid/graphics/drawable/Drawable;

.field private mDebugMode:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "googleads.g.doubleclick.net"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "googleadservices.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/GoogleAdView;->REDIRECT_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 95
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/ads/GoogleAdView;->init(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 101
    return-void
.end method

.method static synthetic access$200(Lcom/google/ads/GoogleAdView;)Lcom/google/ads/AdViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/ads/GoogleAdView;->REDIRECT_DOMAINS:[Ljava/lang/String;

    return-object v0
.end method

.method private generateHtml(Lcom/google/ads/AdSpec;)Ljava/lang/String;
    .locals 9
    .parameter "adSpec"

    .prologue
    .line 193
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v2, jsonParams:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/google/ads/AdSpec;->generateParameters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/AdSpec$Parameter;

    .line 196
    .local v4, param:Lcom/google/ads/AdSpec$Parameter;
    invoke-virtual {v4}, Lcom/google/ads/AdSpec$Parameter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/ads/AdSpec$Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "GoogleAdView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error encoding JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #param:Lcom/google/ads/AdSpec$Parameter;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<html>\n<body marginwidth=\'0\' marginheight=\'0\'>\n<script type=\'text/javascript\'>\nwindow.google_afma_request = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\n</script>\n<script type=\'text/javascript\' src=\'http://pagead2.googlesyndication.com/pagead/show_mobile_ads.js\'></script>\n</body>\n</html>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getDebugDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const-class v2, Landroid/graphics/Bitmap;

    .line 212
    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "test_ad.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 220
    .local v0, debugBitmap:Landroid/graphics/Bitmap;
    :try_start_1
    const-class v2, Landroid/graphics/Bitmap;

    const-string v3, "setDensity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v0           #debugBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 226
    .restart local v0       #debugBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 228
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/ads/GoogleAdView;->mDebugDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 230
    .end local v0           #debugBitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 232
    .local v1, e:Ljava/io/IOException;
    const-string v2, "GoogleAdView"

    const-string v3, "Error loading debug watermark"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 11
    .parameter "context"
    .parameter "webView"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x43a0

    const/high16 v6, 0x4248

    const/4 v7, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, density:F
    new-instance v1, Landroid/widget/ProgressBar;

    const v4, 0x1010079

    invoke-direct {v1, p1, v10, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    .local v1, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 109
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, progressBarLayout:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    mul-float v4, v8, v0

    float-to-int v4, v4

    mul-float v5, v6, v0

    float-to-int v5, v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;II)V

    .line 115
    iput-object p2, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    .line 116
    new-instance v4, Lcom/google/ads/GoogleAdView$AdWebViewClient;

    invoke-direct {v4, p0, v10}, Lcom/google/ads/GoogleAdView$AdWebViewClient;-><init>(Lcom/google/ads/GoogleAdView;Lcom/google/ads/GoogleAdView$1;)V

    iput-object v4, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    .line 117
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const/high16 v5, 0x42c8

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 119
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    mul-float v5, v8, v0

    float-to-int v5, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;II)V

    .line 122
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 123
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 126
    iget-object v4, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 127
    .local v3, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 129
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 132
    const v4, 0x10a0001

    invoke-virtual {p0, p1, v4}, Lcom/google/ads/GoogleAdView;->setOutAnimation(Landroid/content/Context;I)V

    .line 133
    const/high16 v4, 0x10a

    invoke-virtual {p0, p1, v4}, Lcom/google/ads/GoogleAdView;->setInAnimation(Landroid/content/Context;I)V

    .line 136
    iput-boolean v7, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    .line 137
    return-void
.end method


# virtual methods
.method public getAdViewListener()Lcom/google/ads/AdViewListener;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    .line 172
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 173
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 174
    iget-object v0, p0, Lcom/google/ads/GoogleAdView;->mAdWebViewClient:Lcom/google/ads/GoogleAdView$AdWebViewClient;

    #calls: Lcom/google/ads/GoogleAdView$AdWebViewClient;->reset()V
    invoke-static {v0}, Lcom/google/ads/GoogleAdView$AdWebViewClient;->access$100(Lcom/google/ads/GoogleAdView$AdWebViewClient;)V

    .line 175
    return-void
.end method

.method public setAdViewListener(Lcom/google/ads/AdViewListener;)V
    .locals 0
    .parameter "adViewListener"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/ads/GoogleAdView;->mAdViewListener:Lcom/google/ads/AdViewListener;

    .line 147
    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .parameter "child"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 182
    iget-boolean v0, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->getDebugDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/GoogleAdView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showAds(Lcom/google/ads/AdSpec;)V
    .locals 4
    .parameter "adSpec"

    .prologue
    .line 155
    invoke-interface {p1}, Lcom/google/ads/AdSpec;->getDebugMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    .line 156
    invoke-direct {p0, p1}, Lcom/google/ads/GoogleAdView;->generateHtml(Lcom/google/ads/AdSpec;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, htmlString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/ads/GoogleAdView;->mDebugMode:Z

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "GoogleAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/google/ads/GoogleAdView;->getDebugDrawable()Landroid/graphics/drawable/Drawable;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/ads/GoogleAdView;->mWebView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
