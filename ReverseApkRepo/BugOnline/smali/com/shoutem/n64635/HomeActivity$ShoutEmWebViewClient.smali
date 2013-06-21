.class Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shoutem/n64635/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShoutEmWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/n64635/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/shoutem/n64635/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shoutem/n64635/HomeActivity;Lcom/shoutem/n64635/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 198
    const-string v6, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOADING URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, currentUrl:Ljava/lang/String;
    const-string v6, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ORIGINAL URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v6, "www.facebook.com/connect/window_comm.php"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 203
    const-string v6, "file:///android_asset/www/index.html"

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v6}, Lcom/shoutem/n64635/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, loggedInWithFacebookComments:Ljava/lang/String;
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;->this$0:Lcom/shoutem/n64635/HomeActivity;

    invoke-static {v6, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 206
    .local v3, toast:Landroid/widget/Toast;
    const/16 v6, 0x51

    invoke-virtual {v3, v6, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 207
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 246
    .end local v2           #loggedInWithFacebookComments:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return v4

    .line 213
    :cond_1
    sget-boolean v6, Lcom/shoutem/n64635/HomeActivity;->running:Z

    if-nez v6, :cond_2

    move v4, v5

    .line 214
    goto :goto_0

    .line 217
    :cond_2
    const-string v6, "geo:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 221
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, callIntent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    sget-object v4, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v4, v0}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 225
    goto :goto_0

    .line 228
    .end local v0           #callIntent:Landroid/content/Intent;
    :cond_3
    const-string v6, "about:blank"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 229
    goto :goto_0

    .line 231
    :cond_4
    const-string v5, "external://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    sget-object v5, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "external://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :cond_5
    const-string v5, "device:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "file://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 238
    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;->this$0:Lcom/shoutem/n64635/HomeActivity;

    #getter for: Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;
    invoke-static {v5}, Lcom/shoutem/n64635/HomeActivity;->access$100(Lcom/shoutem/n64635/HomeActivity;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->clearHistory()V

    .line 240
    :cond_6
    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;->this$0:Lcom/shoutem/n64635/HomeActivity;

    iget-object v5, v5, Lcom/shoutem/n64635/HomeActivity;->mDeviceHandler:Lcom/shoutem/UrlHandler;

    invoke-virtual {v5, p1, p2}, Lcom/shoutem/UrlHandler;->handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
