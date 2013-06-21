.class public Lelectrum2/drums/helppage;
.super Landroid/app/Activity;
.source "helppage.java"


# instance fields
.field tempweb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lelectrum2/drums/helppage;->setContentView(I)V

    .line 26
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lelectrum2/drums/helppage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lelectrum2/drums/helppage;->tempweb:Landroid/webkit/WebView;

    .line 28
    iget-object v0, p0, Lelectrum2/drums/helppage;->tempweb:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ElectrumHelp.htm"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 34
    return-void
.end method
