.class public Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;
.super Landroid/app/Activity;
.source "DrawRace2WebViewActivity.java"


# static fields
.field private static smActivity:Landroid/app/Activity;

.field private static smUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 31
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->smActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method public static showPage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 38
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->smUrl:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->smActivity:Landroid/app/Activity;

    const-string v2, "com.redlynx.drawrace2.DrawRace2WebViewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->smActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 23
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->setContentView(I)V

    .line 24
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 25
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 26
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 27
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->smUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    return-void
.end method
