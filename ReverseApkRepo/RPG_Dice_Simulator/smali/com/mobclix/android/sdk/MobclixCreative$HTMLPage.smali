.class Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTMLPage"
.end annotation


# instance fields
.field private html:Ljava/lang/String;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter
    .parameter "h"
    .parameter "c"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 707
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 709
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->html:Ljava/lang/String;

    .line 710
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->createLayout()V

    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x0

    .line 714
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    .line 716
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 717
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 720
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 721
    .local v8, webviewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 727
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 728
    .local v7, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 731
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setBuiltInZoomControls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 732
    .local v6, setBuiltInZoomControls:Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v6, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v6           #setBuiltInZoomControls:Ljava/lang/reflect/Method;
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 771
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->html:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    const/16 v2, 0x64

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 773
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 774
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;->addView(Landroid/view/View;)V

    .line 776
    return-void

    .line 733
    :catch_0
    move-exception v0

    goto :goto_0
.end method