.class Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
.super Landroid/webkit/WebView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiWebView"
.end annotation


# instance fields
.field public client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 44
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 45
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroy()V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 54
    return-void
.end method
