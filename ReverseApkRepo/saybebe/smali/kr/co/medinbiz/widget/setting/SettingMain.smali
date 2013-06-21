.class public Lkr/co/medinbiz/widget/setting/SettingMain;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingMain.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "context"
    .parameter "main"

    .prologue
    .line 9
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMain;->mContext:Landroid/content/Context;

    .line 11
    sput-object p2, Lkr/co/medinbiz/widget/setting/SettingMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->setMainWidget()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "main"
    .parameter "invite"

    .prologue
    .line 15
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMain;->mContext:Landroid/content/Context;

    .line 17
    sput-object p2, Lkr/co/medinbiz/widget/setting/SettingMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->setCertificationWidget()V

    .line 19
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    sget v0, Lkr/co/medinbiz/widget/setting/SettingMain;->CHILDCOUNT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->destroy()V

    .line 28
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMain;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    sget v0, Lkr/co/medinbiz/widget/setting/SettingMain;->CHILDCOUNT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 30
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMain;->loginWidget:Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->setMainWidget()V

    goto :goto_0

    .line 32
    :cond_2
    sget v0, Lkr/co/medinbiz/widget/setting/SettingMain;->CHILDCOUNT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 33
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMain;->joinWidget:Landroid/view/View;

    .line 34
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMain;->certiWidget:Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->setLoginWidget()V

    goto :goto_0

    .line 36
    :cond_3
    sget v0, Lkr/co/medinbiz/widget/setting/SettingMain;->CHILDCOUNT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 37
    sput-object v2, Lkr/co/medinbiz/widget/setting/SettingMain;->termsWidget:Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->setJoinWidget()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMain;->destroy()V

    .line 23
    return-void
.end method
