.class final Lcom/rubycell/a/l;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/rubycell/a/j;


# direct methods
.method private constructor <init>(Lcom/rubycell/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rubycell/a/j;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rubycell/a/l;-><init>(Lcom/rubycell/a/j;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->b(Lcom/rubycell/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->c(Lcom/rubycell/a/j;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->d(Lcom/rubycell/a/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->e(Lcom/rubycell/a/j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->b(Lcom/rubycell/a/j;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v0

    new-instance v1, Lcom/rubycell/a/e;

    invoke-direct {v1, p3, p2, p4}, Lcom/rubycell/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/rubycell/a/h;->a(Lcom/rubycell/a/e;)V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-virtual {v0}, Lcom/rubycell/a/j;->dismiss()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Redirect URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/rubycell/a/m;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "error_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v1}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/rubycell/a/h;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-virtual {v0}, Lcom/rubycell/a/j;->dismiss()V

    move v0, v4

    :goto_1
    return v0

    :cond_1
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OAuthAccessDeniedException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/rubycell/a/h;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v0

    new-instance v2, Lcom/rubycell/a/i;

    invoke-direct {v2, v1}, Lcom/rubycell/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/rubycell/a/h;->a(Lcom/rubycell/a/i;)V

    goto :goto_0

    :cond_4
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-static {v0}, Lcom/rubycell/a/j;->a(Lcom/rubycell/a/j;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/rubycell/a/h;->a()V

    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-virtual {v0}, Lcom/rubycell/a/j;->dismiss()V

    move v0, v4

    goto :goto_1

    :cond_5
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/rubycell/a/l;->a:Lcom/rubycell/a/j;

    invoke-virtual {v0}, Lcom/rubycell/a/j;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    goto :goto_1
.end method