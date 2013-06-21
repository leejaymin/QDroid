.class public Lexam/Widget/WebViewTest;
.super Landroid/app/Activity;
.source "WebViewTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Widget/WebViewTest$MyWebClient;
    }
.end annotation


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mWeb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lexam/Widget/WebViewTest$1;

    invoke-direct {v0, p0}, Lexam/Widget/WebViewTest$1;-><init>(Lexam/Widget/WebViewTest;)V

    iput-object v0, p0, Lexam/Widget/WebViewTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f03008b

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->setContentView(I)V

    .line 16
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    .line 17
    iget-object v1, p0, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Lexam/Widget/WebViewTest$MyWebClient;

    invoke-direct {v2, p0}, Lexam/Widget/WebViewTest$MyWebClient;-><init>(Lexam/Widget/WebViewTest;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 18
    iget-object v1, p0, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 19
    .local v0, set:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 21
    iget-object v1, p0, Lexam/Widget/WebViewTest;->mWeb:Landroid/webkit/WebView;

    const-string v2, "http://www.google.com"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 23
    const v1, 0x7f0c00a1

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Widget/WebViewTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v1, 0x7f0c00a2

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Widget/WebViewTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v1, 0x7f0c00a3

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Widget/WebViewTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Lexam/Widget/WebViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Widget/WebViewTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method
