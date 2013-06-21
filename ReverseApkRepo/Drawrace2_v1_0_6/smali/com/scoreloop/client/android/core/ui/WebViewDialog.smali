.class public Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.super Lcom/scoreloop/client/android/core/ui/ScoreloopCustomDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;,
        Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/ui/ScoreloopCustomDialog;-><init>(Landroid/content/Context;I)V

    .line 83
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog$a;-><init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->b:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 165
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->c(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    const/16 v1, 0xdc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 196
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method protected e()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f80

    const/4 v6, -0x1

    .line 106
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x14

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 114
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->setContentView(Landroid/view/View;)V

    .line 119
    iget-object v2, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v2, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;

    invoke-direct {v3, p0, v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;-><init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getZoomControls()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v2, v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 191
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 192
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 245
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/ui/ScoreloopCustomDialog;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->e()V

    .line 175
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 101
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/core/ui/ScoreloopCustomDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->cancel()V

    goto :goto_0
.end method
