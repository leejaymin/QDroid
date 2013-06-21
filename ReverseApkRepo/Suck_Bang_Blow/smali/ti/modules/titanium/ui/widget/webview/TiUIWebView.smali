.class public Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIWebView"

.field private static final escapeChars:[C


# instance fields
.field private changingUrl:Z

.field private client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->DBG:Z

    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x25t 0x0t
        0x23t 0x0t
        0x27t 0x0t
        0x3ft 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    const/4 v4, 0x1

    .line 59
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    const/4 v3, 0x0

    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 61
    new-instance v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    .line 62
    .local v2, webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setVerticalScrollbarOverlay(Z)V

    .line 64
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 65
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 67
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 68
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 70
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 72
    new-instance v3, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 73
    new-instance v3, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-direct {v3, p0, v2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 74
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    iput-object v3, v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 77
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, params:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 79
    iput-boolean v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 81
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setNativeView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method private escapeContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "content"

    .prologue
    .line 229
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 230
    .local v1, escapeChar:C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, regex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v1           #escapeChar:C
    .end local v4           #regex:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private mightBeHtml(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, mime:Ljava/lang/String;
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 142
    :goto_0
    return v1

    .line 139
    :cond_0
    const-string v1, "application/xhtml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "html"
    .parameter "baseUrl"

    .prologue
    const/4 v5, 0x0

    const-string v4, "utf-8"

    const-string v3, "text/html"

    .line 269
    const-string v0, "__ti_injection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "text/html"

    const-string v1, "utf-8"

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 275
    :cond_0
    const-string v0, "<html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, tagStart:I
    const/4 v7, -0x1

    .line 277
    .local v7, tagEnd:I
    if-ltz v8, :cond_1

    .line 278
    const-string v0, ">"

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 279
    if-le v7, v8, :cond_1

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, 0x9c4

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 281
    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "text/html"

    const-string v1, "utf-8"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "text/html"

    const-string v1, "utf-8"

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public changeProxyUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 213
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 214
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    .line 216
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "expression"

    .prologue
    .line 306
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    return-object p0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 323
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 327
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .parameter "d"

    .prologue
    const-string v4, "url"

    const-string v3, "html"

    const-string v2, "data"

    .line 91
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 93
    const-string v1, "url"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    :cond_1
    return-void

    .line 95
    :cond_2
    const-string v1, "html"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string v1, "html"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v1, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "data"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v1, "url"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changingUrl:Z

    if-nez v1, :cond_3

    .line 115
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 128
    .end local p3
    :cond_0
    :goto_0
    const-string v1, "background"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "border"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 129
    .local v0, isBgRelated:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    :cond_2
    return-void

    .line 116
    .end local v0           #isBgRelated:Z
    .restart local p3
    :cond_3
    const-string v1, "html"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    instance-of v1, p3, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 120
    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 123
    .restart local p3
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .end local p3
    :cond_6
    move v0, v2

    .line 128
    goto :goto_1
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 331
    return-void
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 310
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setData(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 4
    .parameter "blob"

    .prologue
    .line 293
    const-string v0, "text/html"

    .line 294
    .local v0, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v2

    const-string v3, "base64"

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v0, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1
    .parameter "html"

    .prologue
    .line 264
    const-string v0, "file:///android_asset/Resources/"

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 21
    .parameter "url"

    .prologue
    .line 148
    move-object/from16 v5, p1

    .line 149
    .local v5, finalUrl:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 150
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 152
    .local v10, originalUrlHasScheme:Z
    :goto_0
    if-nez v10, :cond_0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    :cond_0
    invoke-static {v5}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->mightBeHtml(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 157
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v15

    .line 158
    .local v15, tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v15, :cond_7

    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v11, out:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 162
    .local v6, fis:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 163
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 164
    .local v14, reader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v3, breader:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 166
    .local v7, injected:Z
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, line:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 168
    if-nez v7, :cond_3

    .line 169
    const-string v17, "<html"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 170
    .local v12, pos:I
    if-ltz v12, :cond_3

    .line 171
    const-string v17, ">"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 172
    .local v13, posEnd:I
    if-le v13, v12, :cond_3

    .line 173
    add-int/lit8 v17, v13, 0x1

    move-object v0, v9

    move v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 176
    add-int/lit8 v17, v13, 0x1

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    const-string v17, "\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v7, 0x1

    .line 180
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 181
    goto :goto_1

    .line 150
    .end local v3           #breader:Ljava/io/BufferedReader;
    .end local v6           #fis:Ljava/io/InputStream;
    .end local v7           #injected:Z
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #originalUrlHasScheme:Z
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v12           #pos:I
    .end local v13           #posEnd:I
    .end local v14           #reader:Ljava/io/InputStreamReader;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_2
    const/16 v17, 0x0

    move/from16 v10, v17

    goto/16 :goto_0

    .line 185
    .restart local v3       #breader:Ljava/io/BufferedReader;
    .restart local v6       #fis:Ljava/io/InputStream;
    .restart local v7       #injected:Z
    .restart local v9       #line:Ljava/lang/String;
    .restart local v10       #originalUrlHasScheme:Z
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v14       #reader:Ljava/io/InputStreamReader;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v17, "\n"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    if-eqz v10, :cond_6

    move-object/from16 v18, p1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    if-eqz v6, :cond_5

    .line 196
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .end local v3           #breader:Ljava/io/BufferedReader;
    .end local v6           #fis:Ljava/io/InputStream;
    .end local v7           #injected:Z
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v14           #reader:Ljava/io/InputStreamReader;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_5
    :goto_3
    return-void

    .restart local v3       #breader:Ljava/io/BufferedReader;
    .restart local v6       #fis:Ljava/io/InputStream;
    .restart local v7       #injected:Z
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v14       #reader:Ljava/io/InputStreamReader;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_6
    move-object/from16 v18, v5

    .line 189
    goto :goto_2

    .line 197
    :catch_0
    move-exception v4

    .line 198
    .local v4, e:Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 191
    .end local v3           #breader:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #injected:Z
    .end local v9           #line:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v17

    move-object/from16 v8, v17

    .line 192
    .local v8, ioe:Ljava/io/IOException;
    :try_start_2
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem reading from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Will let WebView try loading it directly."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v6, :cond_7

    .line 196
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    .end local v6           #fis:Ljava/io/InputStream;
    .end local v8           #ioe:Ljava/io/IOException;
    .end local v11           #out:Ljava/lang/StringBuilder;
    .end local v15           #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_7
    :goto_4
    sget-boolean v17, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->DBG:Z

    if-eqz v17, :cond_8

    .line 206
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WebView will load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " directly without code injection."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 197
    .restart local v6       #fis:Ljava/io/InputStream;
    .restart local v8       #ioe:Ljava/io/IOException;
    .restart local v11       #out:Ljava/lang/StringBuilder;
    .restart local v15       #tiFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    :catch_2
    move-exception v4

    .line 198
    .restart local v4       #e:Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 194
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v6, :cond_9

    .line 196
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 199
    :cond_9
    :goto_5
    throw v17

    .line 197
    :catch_3
    move-exception v4

    .line 198
    .restart local v4       #e:Ljava/io/IOException;
    const-string v18, "TiUIWebView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 335
    return-void
.end method
