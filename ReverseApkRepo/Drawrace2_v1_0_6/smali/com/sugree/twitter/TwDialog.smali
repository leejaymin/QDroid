.class public Lcom/sugree/twitter/TwDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;,
        Lcom/sugree/twitter/TwDialog$TwWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_LANDSCAPE:[F = null

.field static final DIMENSIONS_PORTRAIT:[F = null

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "twitter"

.field static final TW_BLUE:I = -0x3f2113


# instance fields
.field private _foundPin:Ljava/lang/String;

.field private mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private mContent:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:I

.field private mListener:Lcom/sugree/twitter/Twitter$DialogListener;

.field private mProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, -0x1

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sugree/twitter/TwDialog;->DIMENSIONS_LANDSCAPE:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sugree/twitter/TwDialog;->DIMENSIONS_PORTRAIT:[F

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sugree/twitter/TwDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xe6t 0x43t
        0x0t 0x0t 0x82t 0x43t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x8ct 0x43t
        0x0t 0x0t 0xd2t 0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;Lcom/sugree/twitter/Twitter$DialogListener;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sugree/twitter/TwDialog;->mProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iput-object p3, p0, Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iput-object p4, p0, Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sugree/twitter/TwDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "twitter_icon"

    const-string v2, "drawable"

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->gamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sugree/twitter/TwDialog;->mIcon:I

    return-void
.end method

.method static synthetic access$000(Lcom/sugree/twitter/TwDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sugree/twitter/TwDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sugree/twitter/TwDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->_foundPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog;->_foundPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sugree/twitter/TwDialog;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sugree/twitter/TwDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sugree/twitter/TwDialog;->retrieveAccessToken(Ljava/lang/String;)V

    return-void
.end method

.method private retrieveAccessToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/sugree/twitter/TwDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/sugree/twitter/TwDialog$2;-><init>(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog$2;->start()V

    return-void
.end method

.method private retrieveRequestToken()V
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/sugree/twitter/TwDialog$1;

    invoke-direct {v0, p0}, Lcom/sugree/twitter/TwDialog$1;-><init>(Lcom/sugree/twitter/TwDialog;)V

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog$1;->start()V

    return-void
.end method

.method private setUpTitle()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sugree/twitter/TwDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sugree/twitter/TwDialog;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    const-string v2, "Twitter"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    const v2, -0x3f2113

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setUpWebView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sugree/twitter/TwDialog$TwWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/sugree/twitter/TwDialog$TwWebViewClient;-><init>(Lcom/sugree/twitter/TwDialog;Lcom/sugree/twitter/TwDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/sugree/twitter/TwDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;

    invoke-direct {v0, p0, v4}, Lcom/sugree/twitter/TwDialog$TwitterPinCatcher;-><init>(Lcom/sugree/twitter/TwDialog;Lcom/sugree/twitter/TwDialog$1;)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    const-string v2, "PinCatcher"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sugree/twitter/TwDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0}, Lcom/sugree/twitter/TwDialog;->setUpTitle()V

    invoke-direct {p0}, Lcom/sugree/twitter/TwDialog;->setUpWebView()V

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_0

    sget-object v0, Lcom/sugree/twitter/TwDialog;->DIMENSIONS_PORTRAIT:[F

    :goto_0
    iget-object v2, p0, Lcom/sugree/twitter/TwDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    aget v4, v0, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    aget v0, v0, v5

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/sugree/twitter/TwDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sugree/twitter/TwDialog;->retrieveRequestToken()V

    return-void

    :cond_0
    sget-object v0, Lcom/sugree/twitter/TwDialog;->DIMENSIONS_LANDSCAPE:[F

    goto :goto_0
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
