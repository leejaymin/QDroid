.class Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WAWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;->this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;Lcom/wolfram/android/alpha/activity/WebViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;-><init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;->this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;

    const v2, 0x7f0e00bd

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, progressBar:Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;->this$0:Lcom/wolfram/android/alpha/activity/WebViewActivity;

    const v2, 0x7f0e00bd

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, progressBar:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 151
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 133
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method
