.class public Lcom/saybaby/Setting;
.super Lkr/co/medinbiz/CommonActivity;
.source "Setting.java"


# instance fields
.field private widget:Lkr/co/medinbiz/widget/setting/SettingMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/saybaby/Setting;->widget:Lkr/co/medinbiz/widget/setting/SettingMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMain;->onBackPressed()V

    .line 43
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/saybaby/Setting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "invite"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, flag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingMain;

    iget-object v2, p0, Lcom/saybaby/Setting;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v0}, Lkr/co/medinbiz/widget/setting/SettingMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/saybaby/Setting;->widget:Lkr/co/medinbiz/widget/setting/SettingMain;

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingMain;

    iget-object v2, p0, Lcom/saybaby/Setting;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2}, Lkr/co/medinbiz/widget/setting/SettingMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/saybaby/Setting;->widget:Lkr/co/medinbiz/widget/setting/SettingMain;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onDestroy()V

    .line 37
    iget-object v0, p0, Lcom/saybaby/Setting;->widget:Lkr/co/medinbiz/widget/setting/SettingMain;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMain;->onDestroy()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 18
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 19
    return-void
.end method
