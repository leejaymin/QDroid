.class public Lkr/co/medinbiz/widget/introduce/IntroduceWeb;
.super Ljava/lang/Object;
.source "IntroduceWeb.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "title"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->mContext:Landroid/content/Context;

    .line 25
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/LayoutInflater;

    .line 26
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_0

    .line 27
    sget v3, Lkr/co/medinbiz/R$layout;->introduce_web_160:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    .line 32
    :goto_0
    iget-object v3, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    .line 35
    sget v4, Lkr/co/medinbiz/R$id;->webview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 34
    check-cast v2, Landroid/webkit/WebView;

    .line 36
    .local v2, webview:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 38
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 39
    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 40
    const-string v1, "http://app.saybebe.com/medismart/hellobaby/"

    .line 41
    .local v1, webDomain:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URL : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    new-instance v3, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;-><init>(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 61
    new-instance v3, Lkr/co/medinbiz/helper/WebClientManager;

    iget-object v4, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lkr/co/medinbiz/helper/WebClientManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    iget-object v3, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->refresh:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 64
    new-instance v4, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;

    invoke-direct {v4, p0, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;-><init>(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;Landroid/webkit/WebView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void

    .line 29
    .end local v1           #webDomain:Ljava/lang/String;
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_0
    sget v3, Lkr/co/medinbiz/R$layout;->introduce_web:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->widget:Landroid/view/View;

    return-object v0
.end method
