.class public Lcom/mopub/mobileads/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdView$LoadHtmlAdTaskResult;,
        Lcom/mopub/mobileads/AdView$LoadNativeAdTaskResult;,
        Lcom/mopub/mobileads/AdView$PerformCustomEventTaskResult;,
        Lcom/mopub/mobileads/AdView$LoadUrlTaskResult;,
        Lcom/mopub/mobileads/AdView$LoadUrlTask;,
        Lcom/mopub/mobileads/AdView$AdWebViewClient;
    }
.end annotation


# static fields
.field public static final AD_ORIENTATION_BOTH:Ljava/lang/String; = "b"

.field public static final AD_ORIENTATION_LANDSCAPE_ONLY:Ljava/lang/String; = "l"

.field public static final AD_ORIENTATION_PORTRAIT_ONLY:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field public static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field public static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"

.field private static final HTTP_CLIENT_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710


# instance fields
.field private mAdOrientation:Ljava/lang/String;

.field private mAdUnitId:Ljava/lang/String;

.field private mAutorefreshEnabled:Z

.field private mClickthroughUrl:Ljava/lang/String;

.field private mFailUrl:Ljava/lang/String;

.field private mHeight:I

.field private mImpressionUrl:Ljava/lang/String;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mKeywords:Ljava/lang/String;

.field private mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

.field private mLocation:Landroid/location/Location;

.field protected mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mRedirectUrl:Ljava/lang/String;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMilliseconds:I

.field private mResponseString:Ljava/lang/String;

.field private mTimeoutMilliseconds:I

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 105
    const v0, 0xea60

    iput v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 106
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    .line 849
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    .line 850
    new-instance v0, Lcom/mopub/mobileads/AdView$4;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdView$4;-><init>(Lcom/mopub/mobileads/AdView;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 122
    iput-object p2, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 123
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->disableScrollingAndZoom()V

    .line 129
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setBackgroundColor(I)V

    .line 132
    new-instance v0, Lcom/mopub/mobileads/AdView$AdWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdView$AdWebViewClient;-><init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidLoad()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidFail()V

    return-void
.end method

.method static synthetic access$1202(Lcom/mopub/mobileads/AdView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidClose()V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdView;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/AdView;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->getAdViewHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/AdView;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method private adDidClose()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    .line 603
    return-void
.end method

.method private adDidFail()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "MoPub"

    const-string v1, "Ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 597
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 598
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    .line 599
    return-void
.end method

.method private adDidLoad()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 581
    const-string v1, "MoPub"

    const-string v2, "Ad successfully loaded."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 583
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 584
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 585
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 589
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, p0, v0}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->adLoaded()V

    .line 592
    return-void
.end method

.method private configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 512
    const-string v11, "X-Networktype"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 513
    .local v5, ntHeader:Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    const-string v11, "MoPub"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fetching ad network type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    const-string v11, "X-Launchpage"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 517
    .local v7, rdHeader:Lorg/apache/http/Header;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    .line 521
    :goto_0
    const-string v11, "X-Clickthrough"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 522
    .local v0, ctHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 526
    :goto_1
    const-string v11, "X-Failurl"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 527
    .local v2, flHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    .line 531
    :goto_2
    const-string v11, "X-Imptracker"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 532
    .local v4, imHeader:Lorg/apache/http/Header;
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    .line 536
    :goto_3
    const-string v11, "X-Scrollable"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 537
    .local v9, scHeader:Lorg/apache/http/Header;
    const/4 v1, 0x0

    .line 538
    .local v1, enabled:Z
    if-eqz v9, :cond_1

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 539
    :cond_1
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdView;->setWebViewScrollingEnabled(Z)V

    .line 542
    const-string v11, "X-Width"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 543
    .local v10, wHeader:Lorg/apache/http/Header;
    const-string v11, "X-Height"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 544
    .local v3, hHeader:Lorg/apache/http/Header;
    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    .line 545
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    .line 546
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    .line 554
    :goto_4
    const-string v11, "X-Refreshtime"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 555
    .local v8, rtHeader:Lorg/apache/http/Header;
    if-eqz v8, :cond_8

    .line 556
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 557
    iget v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    const/16 v12, 0x2710

    if-ge v11, v12, :cond_2

    .line 558
    const/16 v11, 0x2710

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 564
    :cond_2
    :goto_5
    const-string v11, "X-Orientation"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 565
    .local v6, orHeader:Lorg/apache/http/Header;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    :goto_6
    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mAdOrientation:Ljava/lang/String;

    .line 566
    return-void

    .line 518
    .end local v0           #ctHeader:Lorg/apache/http/Header;
    .end local v1           #enabled:Z
    .end local v2           #flHeader:Lorg/apache/http/Header;
    .end local v3           #hHeader:Lorg/apache/http/Header;
    .end local v4           #imHeader:Lorg/apache/http/Header;
    .end local v6           #orHeader:Lorg/apache/http/Header;
    .end local v8           #rtHeader:Lorg/apache/http/Header;
    .end local v9           #scHeader:Lorg/apache/http/Header;
    .end local v10           #wHeader:Lorg/apache/http/Header;
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 523
    .restart local v0       #ctHeader:Lorg/apache/http/Header;
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 528
    .restart local v2       #flHeader:Lorg/apache/http/Header;
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 533
    .restart local v4       #imHeader:Lorg/apache/http/Header;
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 549
    .restart local v1       #enabled:Z
    .restart local v3       #hHeader:Lorg/apache/http/Header;
    .restart local v9       #scHeader:Lorg/apache/http/Header;
    .restart local v10       #wHeader:Lorg/apache/http/Header;
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    .line 550
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    goto :goto_4

    .line 561
    .restart local v8       #rtHeader:Lorg/apache/http/Header;
    :cond_8
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    goto :goto_5

    .line 565
    .restart local v6       #orHeader:Lorg/apache/http/Header;
    :cond_9
    const/4 v11, 0x0

    goto :goto_6
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setHorizontalScrollbarOverlay(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setVerticalScrollbarOverlay(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 141
    return-void
.end method

.method private generateAdUrl()Ljava/lang/String;
    .locals 11

    .prologue
    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "http://ads.mopub.com/m/ad"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .local v5, sz:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?v=5&id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, udid:Ljava/lang/String;
    if-nez v6, :cond_4

    const-string v7, ""

    .line 288
    .local v7, udidDigest:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&udid=sha:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v8, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    iget-object v8, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    if-eqz v8, :cond_1

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&ll="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&z="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    .line 299
    .local v4, orientation:I
    const-string v3, "u"

    .line 300
    .local v3, orString:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 301
    const-string v3, "p"

    .line 307
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&o="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&sc_a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/4 v2, 0x1

    .line 315
    .local v2, mraid:Z
    :try_start_0
    const-string v8, "com.mopub.mraid.MraidView"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_2
    if-eqz v2, :cond_3

    const-string v8, "&mr=1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 287
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #mraid:Z
    .end local v3           #orString:Ljava/lang/String;
    .end local v4           #orientation:I
    .end local v7           #udidDigest:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Lcom/mopub/mobileads/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 302
    .restart local v3       #orString:Ljava/lang/String;
    .restart local v4       #orientation:I
    .restart local v7       #udidDigest:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    .line 303
    const-string v3, "l"

    goto :goto_1

    .line 304
    :cond_6
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 305
    const-string v3, "s"

    goto :goto_1

    .line 316
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #mraid:Z
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getAdViewHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 497
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    if-lez v1, :cond_0

    .line 499
    iget v1, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 500
    iget v1, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 505
    :cond_0
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 507
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 21

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/MoPubView;->getLocationAwareness()Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-result-object v7

    .line 227
    .local v7, locationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/MoPubView;->getLocationPrecision()I

    move-result v8

    .line 228
    .local v8, locationPrecision:I
    const/4 v12, 0x0

    .line 230
    .local v12, result:Landroid/location/Location;
    sget-object v17, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 231
    const/16 v17, 0x0

    .line 279
    :goto_0
    return-object v17

    .line 234
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "location"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 236
    .local v6, lm:Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 238
    .local v3, gpsLocation:Landroid/location/Location;
    :try_start_0
    const-string v17, "gps"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 245
    :goto_1
    const/4 v11, 0x0

    .line 247
    .local v11, networkLocation:Landroid/location/Location;
    :try_start_1
    const-string v17, "network"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 254
    :goto_2
    if-nez v3, :cond_1

    if-nez v11, :cond_1

    .line 255
    const/16 v17, 0x0

    goto :goto_0

    .line 239
    .end local v11           #networkLocation:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 240
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #networkLocation:Landroid/location/Location;
    :catch_2
    move-exception v2

    .line 249
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 250
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 251
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: device has no network provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 257
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    .line 258
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v17

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    move-object v12, v3

    .line 265
    :goto_3
    sget-object v17, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_2

    .line 266
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 267
    .local v4, lat:D
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    .line 270
    .local v13, truncatedLat:D
    invoke-virtual {v12, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 272
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 273
    .local v9, lon:D
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v15

    .line 276
    .local v15, truncatedLon:D
    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .end local v4           #lat:D
    .end local v9           #lon:D
    .end local v13           #truncatedLat:D
    .end local v15           #truncatedLon:D
    :cond_2
    move-object/from16 v17, v12

    .line 279
    goto/16 :goto_0

    .line 259
    :cond_3
    move-object v12, v11

    goto :goto_3

    .line 261
    :cond_4
    if-eqz v3, :cond_5

    move-object v12, v3

    goto :goto_3

    .line 262
    :cond_5
    move-object v12, v11

    goto :goto_3
.end method

.method private getTimeZoneOffsetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, format:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 327
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 606
    iget-object v4, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubView;->adClicked()V

    .line 607
    const-string v4, "fnc"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, action:Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, adData:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v2, customIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    if-eqz v1, :cond_0

    const-string v4, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v3

    .line 615
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle custom intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Is your intent spelled correctly?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWebViewScrollingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 569
    if-eqz p1, :cond_0

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/AdView$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdView$1;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private showBrowserForUrl(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    const/high16 v7, 0x1000

    .line 621
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    :goto_0
    return-void

    .line 623
    :cond_0
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string p1, "about:blank"

    .line 624
    :cond_2
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final URI to show in browser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 626
    .local v1, actionIntent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, action:Ljava/lang/String;
    const-string v3, "market://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not handle market action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Perhaps you\'re running in the emulator, which does not have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "the Android Market?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "about:blank"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 636
    :cond_3
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not handle intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected adAppeared()V
    .locals 1

    .prologue
    .line 846
    const-string v0, "javascript:webviewDidAppear();"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method protected cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 759
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setAutorefreshEnabled(Z)V

    .line 760
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 761
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->destroy()V

    .line 767
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->releaseResources()V

    .line 769
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    .line 772
    :cond_0
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 775
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsDestroyed:Z

    .line 779
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    return v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 206
    const-string v1, "MoPub"

    const-string v2, "Can\'t load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, adUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->adWillLoad(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadFailUrl()V
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 789
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading failover url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidFail()V

    goto :goto_0
.end method

.method protected loadResponseString(Ljava/lang/String;)V
    .locals 6
    .parameter "responseString"

    .prologue
    .line 799
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 335
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already loading an ad for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wait to finish."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    .line 346
    iput-boolean v2, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->releaseResources()V

    .line 352
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/AdView$LoadUrlTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdView$LoadUrlTask;-><init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    .line 353
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLoadUrlTask:Lcom/mopub/mobileads/AdView$LoadUrlTask;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdView$LoadUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdView$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdView$3;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 783
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reload ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method protected scheduleRefreshTimerIfEnabled()V
    .locals 4

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 858
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    if-gtz v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .parameter "adUnitId"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    .line 890
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    .line 927
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic refresh for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 931
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 913
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 914
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    .line 874
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 881
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    .line 882
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 893
    iput p1, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    .line 894
    return-void
.end method

.method protected trackImpression()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdView$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdView$2;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
