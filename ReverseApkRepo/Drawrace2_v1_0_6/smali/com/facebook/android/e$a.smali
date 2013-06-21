.class final Lcom/facebook/android/e$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/android/e;


# direct methods
.method synthetic constructor <init>(Lcom/facebook/android/e;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/android/e$a;-><init>(Lcom/facebook/android/e;B)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/android/e;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v0}, Lcom/facebook/android/e;->c(Lcom/facebook/android/e;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v1}, Lcom/facebook/android/e;->d(Lcom/facebook/android/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v0}, Lcom/facebook/android/e;->b(Lcom/facebook/android/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 175
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v0}, Lcom/facebook/android/e;->b(Lcom/facebook/android/e;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 165
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v0}, Lcom/facebook/android/e;->a(Lcom/facebook/android/e;)Lcom/facebook/android/b$a;

    move-result-object v0

    new-instance v1, Lcom/facebook/android/a;

    invoke-direct {v1, p3}, Lcom/facebook/android/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/android/b$a;->a(Lcom/facebook/android/a;)V

    .line 157
    iget-object v0, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-virtual {v0}, Lcom/facebook/android/e;->dismiss()V

    .line 158
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    invoke-static {p2}, Lcom/facebook/android/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 126
    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    if-nez v1, :cond_0

    .line 128
    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_0
    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v1}, Lcom/facebook/android/e;->a(Lcom/facebook/android/e;)Lcom/facebook/android/b$a;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/facebook/android/b$a;->a(Landroid/os/Bundle;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-virtual {v1}, Lcom/facebook/android/e;->dismiss()V

    .line 150
    :goto_1
    return v0

    .line 133
    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v1}, Lcom/facebook/android/e;->a(Lcom/facebook/android/e;)Lcom/facebook/android/b$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/android/b$a;->a()V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v2}, Lcom/facebook/android/e;->a(Lcom/facebook/android/e;)Lcom/facebook/android/b$a;

    move-result-object v2

    new-instance v3, Lcom/facebook/android/d;

    invoke-direct {v3, v1}, Lcom/facebook/android/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/android/b$a;->a(Lcom/facebook/android/d;)V

    goto :goto_0

    .line 141
    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-static {v1}, Lcom/facebook/android/e;->a(Lcom/facebook/android/e;)Lcom/facebook/android/b$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/android/b$a;->a()V

    .line 143
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-virtual {v1}, Lcom/facebook/android/e;->dismiss()V

    goto :goto_1

    .line 145
    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    const/4 v0, 0x0

    goto :goto_1

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/facebook/android/e$a;->a:Lcom/facebook/android/e;

    invoke-virtual {v1}, Lcom/facebook/android/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
