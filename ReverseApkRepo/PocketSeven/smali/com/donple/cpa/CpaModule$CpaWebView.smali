.class Lcom/donple/cpa/CpaModule$CpaWebView;
.super Landroid/webkit/WebView;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpaWebView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;,
        Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 877
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;

    .line 878
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 881
    invoke-virtual {p0}, Lcom/donple/cpa/CpaModule$CpaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 882
    .local v0, websetting:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 883
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 884
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 885
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 886
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 889
    new-instance v1, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;

    invoke-direct {v1, p1}, Lcom/donple/cpa/CpaModule$MyJavaScriptInterface;-><init>(Lcom/donple/cpa/CpaModule;)V

    const-string v2, "HTMLOUT"

    invoke-virtual {p0, v1, v2}, Lcom/donple/cpa/CpaModule$CpaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0, v3}, Lcom/donple/cpa/CpaModule$CpaWebView;->setScrollbarFadingEnabled(Z)V

    .line 893
    const/high16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->setScrollBarStyle(I)V

    .line 895
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->requestFocus(I)Z

    .line 897
    new-instance v1, Lcom/donple/cpa/CpaModule$CpaWebView$1;

    invoke-direct {v1, p0}, Lcom/donple/cpa/CpaModule$CpaWebView$1;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V

    invoke-virtual {p0, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    new-instance v1, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;

    invoke-direct {v1, p0, v4}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView;Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;)V

    invoke-virtual {p0, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 918
    new-instance v1, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;

    invoke-direct {v1, p0, v4}, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;-><init>(Lcom/donple/cpa/CpaModule$CpaWebView;Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewClient;)V

    invoke-virtual {p0, v1}, Lcom/donple/cpa/CpaModule$CpaWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 919
    return-void
.end method

.method static synthetic access$0(Lcom/donple/cpa/CpaModule$CpaWebView;)Lcom/donple/cpa/CpaModule;
    .locals 1
    .parameter

    .prologue
    .line 874
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView;->this$0:Lcom/donple/cpa/CpaModule;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1123
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
