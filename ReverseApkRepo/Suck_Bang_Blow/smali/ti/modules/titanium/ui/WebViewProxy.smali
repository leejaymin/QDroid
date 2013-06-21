.class public Lti/modules/titanium/ui/WebViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_EVAL_JS:I = 0x834

.field private static final MSG_FIRST_ID:I = 0x7d0

.field private static final MSG_GO_BACK:I = 0x835

.field private static final MSG_GO_FORWARD:I = 0x836

.field protected static final MSG_LAST_ID:I = 0xbb7

.field private static final MSG_RELOAD:I = 0x837

.field private static final MSG_STOP_LOADING:I = 0x838


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/ViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 36
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 40
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 41
    .local v0, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->focus()V

    .line 42
    return-object v0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "code"

    .prologue
    .line 51
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x834

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/WebViewProxy;->sendBlockingUiMessage(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    return-object p0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x835

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x836

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 60
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    .end local p0
    :goto_0
    return v2

    .line 62
    .restart local p0
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/util/AsyncResult;

    .line 63
    .local v0, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v2, v3

    .line 65
    goto :goto_0

    .line 67
    .end local v0           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v1           #value:Ljava/lang/String;
    .restart local p0
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goBack()V

    move v2, v3

    .line 68
    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goForward()V

    move v2, v3

    .line 71
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reload()V

    move v2, v3

    .line 74
    goto :goto_0

    .line 76
    :pswitch_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->stopLoading()V

    move v2, v3

    .line 77
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public releaseViews()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x837

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 85
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x838

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method
