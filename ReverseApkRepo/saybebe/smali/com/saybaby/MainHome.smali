.class public Lcom/saybaby/MainHome;
.super Lkr/co/medinbiz/CommonActivity;
.source "MainHome.java"


# instance fields
.field private mMain:Lkr/co/medinbiz/widget/main/MainWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->onBackPressed()V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/high16 v6, 0x400

    const/high16 v5, 0x2

    .line 94
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onClick(Landroid/view/View;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/saybaby/MainHome;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 98
    .local v2, systemLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, strLanguage:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/saybaby/Pregnancy;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/saybaby/MainHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v1           #strLanguage:Ljava/lang/String;
    .end local v2           #systemLocale:Ljava/util/Locale;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/saybaby/hospital/FindHospitalView;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/saybaby/MainHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/saybaby/ultra/Ultra;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/saybaby/helfer/TabRegister;->memberAssecc(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/saybaby/Calculator;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/saybaby/MainHome;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :pswitch_4
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getForeignVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const v3, 0x7f0600d2

    invoke-virtual {p0, v3}, Lcom/saybaby/MainHome;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/saybaby/Invite;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/saybaby/helfer/TabRegister;->inviteAssecc(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f08002d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/saybaby/MainHome;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 40
    .local v1, widget:Landroid/view/View;
    invoke-static {p0}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_0

    .line 41
    const v2, 0x7f030016

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    :goto_0
    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/saybaby/MainHome;->mainview:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v2, Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/main/MainWidget;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    .line 56
    iget-object v2, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v2}, Lkr/co/medinbiz/widget/main/MainWidget;->onCreate()V

    .line 58
    return-void

    .line 43
    :cond_0
    const v2, 0x7f030015

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->onDestroy()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onPause()V

    .line 66
    iget-object v0, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 30
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 31
    iget-object v0, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->onResume()V

    .line 32
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onStop()V

    .line 75
    iget-object v0, p0, Lcom/saybaby/MainHome;->mMain:Lkr/co/medinbiz/widget/main/MainWidget;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->onStop()V

    .line 76
    return-void
.end method
