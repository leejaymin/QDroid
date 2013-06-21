.class Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule$CpaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/donple/cpa/CpaModule$CpaWebView;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView;Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x3

    .line 1065
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->loading:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$19(Lcom/donple/cpa/CpaModule;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->loading:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$19(Lcom/donple/cpa/CpaModule;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1073
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/donple/cpa/CpaModule;->loading:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/donple/cpa/CpaModule;->access$20(Lcom/donple/cpa/CpaModule;Landroid/app/ProgressDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$IniData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->currentApp:Lcom/donple/cpa/CpaModule$App;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$0(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/donple/cpa/CpaModule$App;->getAppStoreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #calls: Lcom/donple/cpa/CpaModule;->getTel()Ljava/lang/String;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$17(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, tel:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    #getter for: Lcom/donple/cpa/CpaModule;->webview:Lcom/donple/cpa/CpaModule$CpaWebView;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule;->access$1(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CpaWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:donple(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/donple/cpa/CpaModule$CpaWebView;->loadUrl(Ljava/lang/String;)V

    .line 1088
    .end local v0           #tel:Ljava/lang/String;
    :cond_1
    return-void

    .line 1076
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1054
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1055
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v0

    #getter for: Lcom/donple/cpa/CpaModule;->loading:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$19(Lcom/donple/cpa/CpaModule;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v0

    #calls: Lcom/donple/cpa/CpaModule;->startLoading()V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$4(Lcom/donple/cpa/CpaModule;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1045
    const-string v0, "onReceiveError()"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v0

    #calls: Lcom/donple/cpa/CpaModule;->getReceiveErrorHtml()Ljava/lang/String;
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$18(Lcom/donple/cpa/CpaModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1098
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1101
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    #getter for: Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;
    invoke-static {v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/donple/cpa/CpaModule;->startActivity(Landroid/content/Intent;)V

    .line 1102
    const/4 v1, 0x1

    .line 1104
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
