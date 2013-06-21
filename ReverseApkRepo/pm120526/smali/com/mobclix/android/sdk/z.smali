.class final Lcom/mobclix/android/sdk/z;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/y;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/z;->a:Lcom/mobclix/android/sdk/y;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/z;->a:Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->c(Lcom/mobclix/android/sdk/y;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0
.end method
