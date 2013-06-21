.class public Lcom/addthis/ui/views/ATOAuthDialog;
.super Landroid/app/Dialog;
.source "ATOAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;
    }
.end annotation


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F = null

.field static final DIMENSIONS_DIFF_PORTRAIT:[F = null

.field private static final TAG:Ljava/lang/String; = "OAuth dialog"


# instance fields
.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/addthis/models/ATService;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/addthis/ui/views/ATOAuthDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 41
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/addthis/ui/views/ATOAuthDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 38
    return-void

    .line 40
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 41
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/addthis/models/ATService;Lcom/addthis/ui/views/ATOAuthDialogListener;)V
    .locals 0
    .parameter "context"
    .parameter "url"
    .parameter "service"
    .parameter "listener"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mUrl:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mService:Lcom/addthis/models/ATService;

    .line 54
    iput-object p4, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/ui/views/ATOAuthDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/addthis/ui/views/ATOAuthDialog;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/addthis/ui/views/ATOAuthDialog;)Lcom/addthis/models/ATService;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mService:Lcom/addthis/models/ATService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/addthis/ui/views/ATOAuthDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/addthis/ui/views/ATOAuthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->stopProgressDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/addthis/ui/views/ATOAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    return-object v0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 85
    invoke-virtual {p0, v4}, Lcom/addthis/ui/views/ATOAuthDialog;->requestWindowFeature(I)Z

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, pageTitle:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/TextView;

    .end local v0           #pageTitle:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .restart local v0       #pageTitle:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mService:Lcom/addthis/models/ATService;

    invoke-virtual {v1}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    .line 97
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 98
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 100
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;-><init>(Lcom/addthis/ui/views/ATOAuthDialog;Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->stopProgressDialog()V

    .line 71
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 72
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 73
    return-void
.end method

.method private stopProgressDialog()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    invoke-interface {v0}, Lcom/addthis/ui/views/ATOAuthDialogListener;->onAuthViewCancel()V

    .line 113
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    invoke-direct {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->setupViews()V

    .line 63
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATOAuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 66
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {p0, v1, v2}, Lcom/addthis/ui/views/ATOAuthDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method
