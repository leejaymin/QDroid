.class Lcom/facebook/android/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FbDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/android/FbDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/FbDialog;Lcom/facebook/android/FbDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/facebook/android/FbDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$200(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$300(Lcom/facebook/android/FbDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 192
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$400(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mCrossImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$500(Lcom/facebook/android/FbDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 178
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/android/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 180
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$200(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 181
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/android/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 174
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 134
    const-string v2, "Facebook-WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/android/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "fbconnect://success"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, values:Landroid/os/Bundle;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, error:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const-string v2, "error_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 144
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v2}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v2}, Lcom/facebook/android/FbDialog;->dismiss()V

    move v2, v6

    .line 164
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :goto_1
    return v2

    .line 145
    .restart local v0       #error:Ljava/lang/String;
    .restart local v1       #values:Landroid/os/Bundle;
    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v2}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v2}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v2

    new-instance v3, Lcom/facebook/android/FacebookError;

    invoke-direct {v3, v0}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    goto :goto_0

    .line 154
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :cond_4
    const-string v2, "fbconnect://cancel"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v2}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 156
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v2}, Lcom/facebook/android/FbDialog;->dismiss()V

    move v2, v6

    .line 157
    goto :goto_1

    .line 158
    :cond_5
    const-string v2, "touch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    const/4 v2, 0x0

    goto :goto_1

    .line 162
    :cond_6
    iget-object v2, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v2}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v6

    .line 164
    goto :goto_1
.end method
