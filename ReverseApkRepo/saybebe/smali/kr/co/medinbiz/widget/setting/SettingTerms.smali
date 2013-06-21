.class public Lkr/co/medinbiz/widget/setting/SettingTerms;
.super Ljava/lang/Object;
.source "SettingTerms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "flag"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->mContext:Landroid/content/Context;

    .line 22
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 23
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_1

    .line 24
    sget v3, Lkr/co/medinbiz/R$layout;->setting_terms_160:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    .line 29
    :goto_0
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->webview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 30
    .local v2, webview:Landroid/webkit/WebView;
    const/4 v1, 0x0

    .line 32
    .local v1, webDomain:Ljava/lang/String;
    if-ne p2, v8, :cond_2

    .line 33
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->join_info1_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const-string v1, "http://app.saybebe.com/medismart/saybebe/smart_regist_terms_xml.asp"

    .line 42
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 45
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    new-instance v3, Lkr/co/medinbiz/widget/setting/SettingTerms$1;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/widget/setting/SettingTerms$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingTerms;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    new-instance v3, Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;

    invoke-direct {v3, p0, v6}, Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;-><init>(Lkr/co/medinbiz/widget/setting/SettingTerms;Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    return-void

    .line 26
    .end local v1           #webDomain:Ljava/lang/String;
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_1
    sget v3, Lkr/co/medinbiz/R$layout;->setting_terms:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    goto :goto_0

    .line 35
    .restart local v1       #webDomain:Ljava/lang/String;
    .restart local v2       #webview:Landroid/webkit/WebView;
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 36
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->join_info2_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const-string v1, "http://app.saybebe.com/medismart/saybebe/smart_privacy_terms_xml.asp"

    goto :goto_1

    .line 38
    :cond_3
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 39
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    sget v4, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->join_info3_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const-string v1, "http://app.saybebe.com/medismart/saybebe/smart_third_terms_xml.asp"

    goto :goto_1
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingTerms;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingTerms;->widget:Landroid/view/View;

    return-object v0
.end method
