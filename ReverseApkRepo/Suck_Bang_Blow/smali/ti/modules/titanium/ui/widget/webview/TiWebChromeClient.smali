.class public Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TiWebChromeClient.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiWebChromeClient"


# instance fields
.field private isWindow:Z

.field private showProgress:Z

.field private softActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;ZZ)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;ZZ)V
    .locals 2
    .parameter "webView"
    .parameter "isWindow"
    .parameter "showProgress"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->softActivity:Ljava/lang/ref/SoftReference;

    .line 37
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->isWindow:Z

    .line 38
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->showProgress:Z

    .line 39
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Alert"

    new-instance v2, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$3;

    invoke-direct {v2, p0, p4}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$3;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-static {v0, v1, p3, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 61
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->isWindow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->showProgress:Z

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->softActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 64
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 65
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 66
    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;

    invoke-direct {v1, p0, v0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 80
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;

    invoke-direct {v1, p0, v0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
