.class Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ATOAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/views/ATOAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ATOAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/views/ATOAuthDialog;


# direct methods
.method private constructor <init>(Lcom/addthis/ui/views/ATOAuthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addthis/ui/views/ATOAuthDialog;Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;-><init>(Lcom/addthis/ui/views/ATOAuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    #calls: Lcom/addthis/ui/views/ATOAuthDialog;->stopProgressDialog()V
    invoke-static {v0}, Lcom/addthis/ui/views/ATOAuthDialog;->access$3(Lcom/addthis/ui/views/ATOAuthDialog;)V

    .line 155
    const-string v0, "OAuth dialog"

    const-string v1, "On page finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    iget-object v2, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    invoke-virtual {v2}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    invoke-virtual {v3}, Lcom/addthis/ui/views/ATOAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "loading_please_wait_msg"

    invoke-static {v3, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/addthis/ui/views/ATOAuthDialog;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/addthis/ui/views/ATOAuthDialog;->access$0(Lcom/addthis/ui/views/ATOAuthDialog;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, values:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATOAuthDialog;->mService:Lcom/addthis/models/ATService;
    invoke-static {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->access$1(Lcom/addthis/ui/views/ATOAuthDialog;)Lcom/addthis/models/ATService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/models/ATService;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getTwitterCallbackUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATOAuthDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->access$2(Lcom/addthis/ui/views/ATOAuthDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 143
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    #calls: Lcom/addthis/ui/views/ATOAuthDialog;->stopProgressDialog()V
    invoke-static {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->access$3(Lcom/addthis/ui/views/ATOAuthDialog;)V

    .line 144
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATOAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;
    invoke-static {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->access$4(Lcom/addthis/ui/views/ATOAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addthis/ui/views/ATOAuthDialogListener;->onAuthViewComplete(Landroid/os/Bundle;)V

    .line 145
    iget-object v1, p0, Lcom/addthis/ui/views/ATOAuthDialog$ATOAuthWebViewClient;->this$0:Lcom/addthis/ui/views/ATOAuthDialog;

    invoke-virtual {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->dismiss()V

    .line 150
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 126
    const-string v0, "OAuth dialog"

    const-string v1, "On receive error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 119
    const-string v0, "OAuth dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should over ride url loading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return v0
.end method
