.class Lcom/sugree/twitter/TwDialog$TwWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sugree/twitter/TwDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/TwDialog;


# direct methods
.method private constructor <init>(Lcom/sugree/twitter/TwDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sugree/twitter/TwDialog;Lcom/sugree/twitter/TwDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sugree/twitter/TwDialog$TwWebViewClient;-><init>(Lcom/sugree/twitter/TwDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$300(Lcom/sugree/twitter/TwDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$1000(Lcom/sugree/twitter/TwDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sget-object v0, Lcom/sugree/twitter/Twitter;->OAUTH_AUTHORIZE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Crystal"

    const-string v1, "TwDialog finished loading authroize page - will attempt to scrape PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "javascript:(function(){var d = document.getElementById(\'oauth-pin\'); if (d == null) d = document.getElementById(\'oauth_pin\'); if (d) d = d.innerHTML; if (d == null) {var r = new RegExp(\'\\\\s[0-9]+\\\\s\'); d = r.exec(document.body.innerHTML); if (d.length > 0) d = d[0];} d.replace(/^\\s*/, \'\').replace(/\\s*$/, \'\'); window.PinCatcher.pinFound(d);})();"

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$300(Lcom/sugree/twitter/TwDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/sugree/twitter/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "twitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "twitter://callback"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #calls: Lcom/sugree/twitter/TwDialog;->retrieveAccessToken(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/sugree/twitter/TwDialog;->access$900(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    const-string v0, "twitter://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sugree/twitter/Twitter$DialogListener;->onCancel()V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$TwWebViewClient;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
