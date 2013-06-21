.class public Lcom/arellomobile/android/push/PushWebview;
.super Landroid/app/Activity;
.source "PushWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arellomobile/android/push/PushWebview$1;,
        Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;
    }
.end annotation


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/arellomobile/android/push/PushWebview;->webView:Landroid/webkit/WebView;

    .line 20
    invoke-virtual {p0}, Lcom/arellomobile/android/push/PushWebview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/arellomobile/android/push/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    iget-object v1, p0, Lcom/arellomobile/android/push/PushWebview;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/arellomobile/android/push/PushWebview$HelloWebViewClient;-><init>(Lcom/arellomobile/android/push/PushWebview;Lcom/arellomobile/android/push/PushWebview$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    iget-object v1, p0, Lcom/arellomobile/android/push/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/arellomobile/android/push/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/arellomobile/android/push/PushWebview;->setContentView(Landroid/view/View;)V

    .line 28
    return-void
.end method
