.class public Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;
.super Lkr/co/medinbiz/widget/ultra/UltraCommon;
.source "CelebrationGreetingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private webview:Landroid/webkit/WebView;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "aContext"
    .parameter "aMNum"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 27
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;-><init>()V

    .line 29
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    .line 31
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    .line 32
    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/LayoutInflater;

    .line 34
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v7

    const/16 v8, 0xa0

    if-ne v7, v8, :cond_0

    .line 35
    sget v7, Lkr/co/medinbiz/R$layout;->introduce_web_160:I

    invoke-virtual {v2, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    .line 39
    :goto_0
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    sget v8, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    sget v9, Lkr/co/medinbiz/R$string;->title_congratulation:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    .line 42
    sget v8, Lkr/co/medinbiz/R$id;->webview:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 41
    iput-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    .line 44
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    sget v8, Lkr/co/medinbiz/R$id;->webview:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    .line 46
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v7, v10}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 48
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    const/16 v8, 0x82

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 50
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 51
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 53
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, httpManager:Lkr/co/medinbiz/helper/HttpManager;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/smart_message_board.asp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, webDomain:Ljava/lang/String;
    new-instance v7, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    .line 57
    const-string v9, ""

    .line 56
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, ll:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 65
    new-instance v5, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    .line 66
    .local v5, pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 67
    invoke-virtual {v5}, Lkr/co/medinbiz/helper/PreferencesManager;->getHcode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "saybebe"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 68
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?mnum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    :goto_2
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    new-instance v8, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;

    invoke-direct {v8, p0}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;-><init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    new-instance v8, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;

    invoke-direct {v8, p0, v12}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;-><init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$HelloWebViewClient;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    sget v8, Lkr/co/medinbiz/R$id;->refresh:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 93
    new-instance v8, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$2;

    invoke-direct {v8, p0}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$2;-><init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void

    .line 37
    .end local v0           #cookieManager:Landroid/webkit/CookieManager;
    .end local v1           #httpManager:Lkr/co/medinbiz/helper/HttpManager;
    .end local v3           #ll:Ljava/lang/String;
    .end local v5           #pm:Lkr/co/medinbiz/helper/PreferencesManager;
    .end local v6           #webDomain:Ljava/lang/String;
    :cond_0
    sget v7, Lkr/co/medinbiz/R$layout;->introduce_web:I

    invoke-virtual {v2, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    goto/16 :goto_0

    .line 58
    .restart local v0       #cookieManager:Landroid/webkit/CookieManager;
    .restart local v1       #httpManager:Lkr/co/medinbiz/helper/HttpManager;
    .restart local v3       #ll:Ljava/lang/String;
    .restart local v6       #webDomain:Ljava/lang/String;
    :cond_1
    aget-object v4, v8, v7

    .line 61
    .local v4, lls:Ljava/lang/String;
    const-string v10, "saybebeapp"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 70
    .end local v4           #lls:Ljava/lang/String;
    .restart local v5       #pm:Lkr/co/medinbiz/helper/PreferencesManager;
    :cond_3
    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?mnum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&hcode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lkr/co/medinbiz/helper/PreferencesManager;->getHcode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->widget:Landroid/view/View;

    return-object v0
.end method
