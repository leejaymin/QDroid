.class public Lcom/shoutem/twitter/TwitterDialog;
.super Landroid/app/Dialog;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shoutem/twitter/TwitterDialog$1;,
        Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;,
        Lcom/shoutem/twitter/TwitterDialog$DialogListener;
    }
.end annotation


# static fields
.field static final CANCEL_URL:Ljava/lang/String; = "denied="

.field static final DIMENSIONS_DIFF_LANDSCAPE:[F = null

.field static final DIMENSIONS_DIFF_PORTRAIT:[F = null

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final LOGIN_URL:Ljava/lang/String; = "://twitter.com/oauth/authorize"

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2

.field static final REDIRECT_URL:Ljava/lang/String; = "shoutem://twitter_login_success"

.field static final TWITTER_BLUE:I = 0x4099ff


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 30
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/shoutem/twitter/TwitterDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 31
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/shoutem/twitter/TwitterDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 33
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/shoutem/twitter/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/shoutem/twitter/TwitterDialog$DialogListener;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/shoutem/twitter/TwitterDialog;->mUrl:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/shoutem/twitter/TwitterDialog;->mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/shoutem/twitter/TwitterDialog;)Lcom/shoutem/twitter/TwitterDialog$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/shoutem/twitter/TwitterDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/shoutem/twitter/TwitterDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/shoutem/twitter/TwitterDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/shoutem/twitter/TwitterDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public static createForNetworkHost(Ljava/lang/String;Landroid/content/Context;Lcom/shoutem/twitter/TwitterDialog$DialogListener;)Lcom/shoutem/twitter/TwitterDialog;
    .locals 3
    .parameter "networkHost"
    .parameter "context"
    .parameter "dialogListener"

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pages/connect/TwitterAuth.aspx?rurl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shoutem://twitter_login_success"

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lcom/shoutem/twitter/TwitterDialog;

    invoke-direct {v1, p1, v0, p2}, Lcom/shoutem/twitter/TwitterDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shoutem/twitter/TwitterDialog$DialogListener;)V

    return-object v1
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "s"

    .prologue
    .line 194
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v5, params:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 196
    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 198
    .local v4, parameter:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, v:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #parameter:Ljava/lang/String;
    .end local v6           #v:[Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private setUpTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shoutem/twitter/TwitterDialog;->requestWindowFeature(I)Z

    .line 117
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const-string v1, "Twitter"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    const v1, 0x4099ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 122
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 125
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    .line 130
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;-><init>(Lcom/shoutem/twitter/TwitterDialog;Lcom/shoutem/twitter/TwitterDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/shoutem/twitter/TwitterDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    .line 92
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 94
    iget-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 95
    iget-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;

    const-string v5, "Loading..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    .line 98
    iget-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    invoke-direct {p0}, Lcom/shoutem/twitter/TwitterDialog;->setUpTitle()V

    .line 100
    invoke-direct {p0}, Lcom/shoutem/twitter/TwitterDialog;->setUpWebView()V

    .line 101
    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 102
    .local v1, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v3, scale:F
    invoke-virtual {p0}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 106
    .local v2, orientation:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    sget-object v0, Lcom/shoutem/twitter/TwitterDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 109
    .local v0, dimensions:[F
    :goto_0
    iget-object v4, p0, Lcom/shoutem/twitter/TwitterDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v9

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    aget v8, v0, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/shoutem/twitter/TwitterDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void

    .line 106
    .end local v0           #dimensions:[F
    :cond_0
    sget-object v0, Lcom/shoutem/twitter/TwitterDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    goto :goto_0
.end method
