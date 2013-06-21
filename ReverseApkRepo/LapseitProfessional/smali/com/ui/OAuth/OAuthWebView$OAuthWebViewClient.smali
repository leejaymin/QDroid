.class final Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/OAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OAuthWebViewClient"
.end annotation


# static fields
.field static final getInstance:Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;


# instance fields
.field private previousURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;

    invoke-direct {v0}, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;-><init>()V

    sput-object v0, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;->getInstance:Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;

    .line 93
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;->previousURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;->previousURL:Ljava/lang/String;

    if-eq p2, v0, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/ui/OAuth/OAuthWebView;->access$2()Lcom/ui/OAuth/OAuthCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ui/OAuth/OAuthCallback;->urlReceived(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    #calls: Lcom/ui/OAuth/OAuthWebView;->dismiss()V
    invoke-static {}, Lcom/ui/OAuth/OAuthWebView;->access$0()V

    .line 106
    :cond_1
    iput-object p2, p0, Lcom/ui/OAuth/OAuthWebView$OAuthWebViewClient;->previousURL:Ljava/lang/String;

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 108
    return-void
.end method
