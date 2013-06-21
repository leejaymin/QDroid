.class Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SettingTerms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/setting/SettingTerms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelloWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/setting/SettingTerms;


# direct methods
.method private constructor <init>(Lkr/co/medinbiz/widget/setting/SettingTerms;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;->this$0:Lkr/co/medinbiz/widget/setting/SettingTerms;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkr/co/medinbiz/widget/setting/SettingTerms;Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/setting/SettingTerms$HelloWebViewClient;-><init>(Lkr/co/medinbiz/widget/setting/SettingTerms;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 75
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method
