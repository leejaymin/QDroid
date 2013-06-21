.class public Lcom/saybaby/ultra/VidioPlayer;
.super Landroid/app/Activity;
.source "VidioPlayer.java"


# instance fields
.field private videoMain:Landroid/widget/LinearLayout;

.field private widget:Lkr/co/medinbiz/widget/ultra/VidioView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/saybaby/ultra/VidioPlayer;->widget:Lkr/co/medinbiz/widget/ultra/VidioView;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->onBackPressed()V

    .line 47
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/VidioPlayer;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/saybaby/ultra/VidioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 22
    .local v6, i:Landroid/content/Intent;
    const-string v0, "url"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, url:Ljava/lang/String;
    const-string v0, "date"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, date:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    .local v4, title:Ljava/lang/String;
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/saybaby/ultra/VidioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/saybaby/ultra/VidioPlayer;->videoMain:Landroid/widget/LinearLayout;

    .line 26
    const-string v0, "BUM"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lkr/co/medinbiz/widget/ultra/VidioView;

    iget-object v5, p0, Lcom/saybaby/ultra/VidioPlayer;->videoMain:Landroid/widget/LinearLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkr/co/medinbiz/widget/ultra/VidioView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/saybaby/ultra/VidioPlayer;->widget:Lkr/co/medinbiz/widget/ultra/VidioView;

    .line 29
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 41
    iget-object v0, p0, Lcom/saybaby/ultra/VidioPlayer;->widget:Lkr/co/medinbiz/widget/ultra/VidioView;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->onStop()V

    .line 42
    return-void
.end method
