.class public Lcom/ui/OAuth/OAuthWebView;
.super Ljava/lang/Object;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;
    }
.end annotation


# static fields
.field private static final backgroundClickHandler:Landroid/view/View$OnClickListener;

.field private static container:Landroid/view/ViewGroup;

.field public static isVisible:Z

.field private static oAuthCallBack:Lcom/ui/OAuth/OAuthCallback;

.field private static webView:Landroid/webkit/WebView;

.field private static final webViewKeyHandler:Landroid/view/View$OnKeyListener;

.field private static widget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/ui/OAuth/OAuthWebView$1;

    invoke-direct {v0}, Lcom/ui/OAuth/OAuthWebView$1;-><init>()V

    sput-object v0, Lcom/ui/OAuth/OAuthWebView;->backgroundClickHandler:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/ui/OAuth/OAuthWebView$2;

    invoke-direct {v0}, Lcom/ui/OAuth/OAuthWebView$2;-><init>()V

    sput-object v0, Lcom/ui/OAuth/OAuthWebView;->webViewKeyHandler:Landroid/view/View$OnKeyListener;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lcom/ui/OAuth/OAuthWebView;->dismiss()V

    return-void
.end method

.method static synthetic access$1()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2()Lcom/ui/OAuth/OAuthCallback;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->oAuthCallBack:Lcom/ui/OAuth/OAuthCallback;

    return-object v0
.end method

.method private static final createWidget(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    if-nez v1, :cond_0

    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    .line 36
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    .line 37
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    sget-object v2, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;->getInstance:Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 40
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    sget-object v2, Lcom/ui/OAuth/OAuthWebView;->webViewKeyHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 42
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 43
    .local v0, backgroundContainer:Landroid/widget/RelativeLayout;
    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->backgroundClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .end local v0           #backgroundContainer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void
.end method

.method private static final dismiss()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->container:Landroid/view/ViewGroup;

    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    .line 70
    return-void
.end method

.method public static final setContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "viewGroup"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ui/OAuth/OAuthWebView;->createWidget(Landroid/content/Context;)V

    .line 49
    sput-object p0, Lcom/ui/OAuth/OAuthWebView;->container:Landroid/view/ViewGroup;

    .line 50
    return-void
.end method

.method public static final show(Landroid/net/Uri;Lcom/ui/OAuth/OAuthCallback;)V
    .locals 4
    .parameter "url"
    .parameter "callback"

    .prologue
    const/4 v3, -0x1

    .line 54
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sput-object p1, Lcom/ui/OAuth/OAuthWebView;->oAuthCallBack:Lcom/ui/OAuth/OAuthCallback;

    .line 58
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->container:Landroid/view/ViewGroup;

    sget-object v1, Lcom/ui/OAuth/OAuthWebView;->widget:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 61
    sget-object v0, Lcom/ui/OAuth/OAuthWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    goto :goto_0
.end method
