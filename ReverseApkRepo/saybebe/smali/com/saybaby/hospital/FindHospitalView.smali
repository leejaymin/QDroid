.class public Lcom/saybaby/hospital/FindHospitalView;
.super Lkr/co/medinbiz/CommonActivity;
.source "FindHospitalView.java"


# static fields
.field public static final FIND_HOSPITAL_URL_CN:Ljava/lang/String; = "http://cn.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

.field public static final FIND_HOSPITAL_URL_DEFAULT:Ljava/lang/String; = "http://app.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

.field public static final FIND_HOSPITAL_URL_EN:Ljava/lang/String; = "http://us.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

.field public static final FIND_HOSPITAL_URL_JP:Ljava/lang/String; = "http://www.saybebe.jp/medismart/saybebe/smart_search_hospital.asp"


# instance fields
.field private mContext:Landroid/content/Context;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/saybaby/hospital/FindHospitalView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public findHospitalURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/saybaby/hospital/FindHospitalView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 50
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, strLanguage:Ljava/lang/String;
    const-string v2, "FindHospitalView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locale = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, p0, Lcom/saybaby/hospital/FindHospitalView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getForeignVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    const-string v2, "jp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "http://www.saybebe.jp/medismart/saybebe/smart_search_hospital.asp"

    .line 66
    :goto_0
    return-object v2

    .line 59
    :cond_0
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "http://cn.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

    goto :goto_0

    .line 62
    :cond_1
    const-string v2, "http://us.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

    goto :goto_0

    .line 66
    :cond_2
    const-string v2, "http://app.saybebe.com/medismart/saybebe/smart_search_hospital.asp"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iput-object p0, p0, Lcom/saybaby/hospital/FindHospitalView;->mContext:Landroid/content/Context;

    .line 72
    new-instance v3, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 73
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/saybaby/hospital/FindHospitalView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 75
    .local v2, widget:Landroid/view/View;
    invoke-static {p0}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_0

    .line 76
    const v3, 0x7f030011

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 81
    :goto_0
    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/saybaby/hospital/FindHospitalView;->mContext:Landroid/content/Context;

    const v5, 0x7f06008a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    .line 83
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 85
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 86
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/saybaby/hospital/FindHospitalView;->findHospitalURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/saybaby/hospital/FindHospitalView$1;

    invoke-direct {v4, p0}, Lcom/saybaby/hospital/FindHospitalView$1;-><init>(Lcom/saybaby/hospital/FindHospitalView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 101
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    new-instance v4, Lkr/co/medinbiz/helper/WebClientManager;

    iget-object v5, p0, Lcom/saybaby/hospital/FindHospitalView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lkr/co/medinbiz/helper/WebClientManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 104
    .local v1, refresh:Landroid/widget/ImageButton;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    new-instance v3, Lcom/saybaby/hospital/FindHospitalView$2;

    invoke-direct {v3, p0}, Lcom/saybaby/hospital/FindHospitalView$2;-><init>(Lcom/saybaby/hospital/FindHospitalView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v3, p0, Lcom/saybaby/hospital/FindHospitalView;->mainview:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    return-void

    .line 78
    .end local v1           #refresh:Landroid/widget/ImageButton;
    :cond_0
    const v3, 0x7f030010

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "goBack"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 123
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "out"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/saybaby/hospital/FindHospitalView;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 125
    invoke-super {p0, p1, p2}, Lkr/co/medinbiz/CommonActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 35
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 36
    return-void
.end method
