.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    .line 646
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 660
    const-string v0, "javascript: alert(\'s: \' + shouldAccelerate());"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v4, 0x1

    .line 648
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 649
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 651
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 653
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser$1;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixBrowser;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 657
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 656
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v2, v4

    .line 657
    goto :goto_0
.end method
