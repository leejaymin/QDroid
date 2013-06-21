.class public Lcom/cocmoc/kulinglite/DownloadThemeActivity;
.super Landroid/app/Activity;
.source "DownloadThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# instance fields
.field dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, getIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, extras:Landroid/os/Bundle;
    const-string v5, "INSTALLED_SKINS"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, themeArray:[Ljava/lang/String;
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, v:Landroid/webkit/WebView;
    invoke-virtual {p0, v4}, Lcom/cocmoc/kulinglite/DownloadThemeActivity;->setContentView(Landroid/view/View;)V

    .line 66
    new-instance v5, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;

    invoke-direct {v5, p0, p0}, Lcom/cocmoc/kulinglite/DownloadThemeActivity$WebViewClientDemo;-><init>(Lcom/cocmoc/kulinglite/DownloadThemeActivity;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    const-string v5, "http://www.knutinge.com/cocmoc/cocmoc/kuling/skins/index.php"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 70
    .local v2, set:Landroid/webkit/WebSettings;
    invoke-virtual {v4}, Landroid/webkit/WebView;->clearHistory()V

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 73
    return-void
.end method
