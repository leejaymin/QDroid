.class Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CelebrationGreetingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelloWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;


# direct methods
.method private constructor <init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;->this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;-><init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 110
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
