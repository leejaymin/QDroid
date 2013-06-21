.class Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shoutem/twitter/TwitterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/twitter/TwitterDialog;


# direct methods
.method private constructor <init>(Lcom/shoutem/twitter/TwitterDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shoutem/twitter/TwitterDialog;Lcom/shoutem/twitter/TwitterDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;-><init>(Lcom/shoutem/twitter/TwitterDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/shoutem/twitter/TwitterDialog;->access$400(Lcom/shoutem/twitter/TwitterDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/shoutem/twitter/TwitterDialog;->access$500(Lcom/shoutem/twitter/TwitterDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/shoutem/twitter/TwitterDialog;->access$300(Lcom/shoutem/twitter/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 189
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 176
    const-string v0, "Twitter-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/shoutem/twitter/TwitterDialog;->access$300(Lcom/shoutem/twitter/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 179
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;
    invoke-static {v0}, Lcom/shoutem/twitter/TwitterDialog;->access$100(Lcom/shoutem/twitter/TwitterDialog;)Lcom/shoutem/twitter/TwitterDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shoutem/twitter/TwitterDialog$DialogListener;->onError()V

    .line 171
    iget-object v0, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    invoke-virtual {v0}, Lcom/shoutem/twitter/TwitterDialog;->dismiss()V

    .line 172
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    const-string v4, "Twitter-WebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirect URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v4, "shoutem://twitter_login_success"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, params:Ljava/lang/String;
    invoke-static {v0}, Lcom/shoutem/twitter/TwitterDialog;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 148
    .local v1, values:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;
    invoke-static {v3}, Lcom/shoutem/twitter/TwitterDialog;->access$100(Lcom/shoutem/twitter/TwitterDialog;)Lcom/shoutem/twitter/TwitterDialog$DialogListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/shoutem/twitter/TwitterDialog$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 149
    iget-object v3, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    invoke-virtual {v3}, Lcom/shoutem/twitter/TwitterDialog;->dismiss()V

    .line 163
    .end local v0           #params:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :goto_0
    return v2

    .line 151
    :cond_0
    const-string v4, "denied="

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    iget-object v3, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mListener:Lcom/shoutem/twitter/TwitterDialog$DialogListener;
    invoke-static {v3}, Lcom/shoutem/twitter/TwitterDialog;->access$100(Lcom/shoutem/twitter/TwitterDialog;)Lcom/shoutem/twitter/TwitterDialog$DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/shoutem/twitter/TwitterDialog$DialogListener;->onCancel()V

    .line 153
    iget-object v3, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    invoke-virtual {v3}, Lcom/shoutem/twitter/TwitterDialog;->dismiss()V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    #getter for: Lcom/shoutem/twitter/TwitterDialog;->mUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/shoutem/twitter/TwitterDialog;->access$200(Lcom/shoutem/twitter/TwitterDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    const-string v4, "://twitter.com/oauth/authorize"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 158
    goto :goto_0

    .line 161
    :cond_3
    iget-object v3, p0, Lcom/shoutem/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/shoutem/twitter/TwitterDialog;

    invoke-virtual {v3}, Lcom/shoutem/twitter/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
