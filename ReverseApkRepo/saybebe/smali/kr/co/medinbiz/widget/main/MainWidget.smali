.class public Lkr/co/medinbiz/widget/main/MainWidget;
.super Ljava/lang/Object;
.source "MainWidget.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/main/MainWidget;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/main/MainWidget;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private openNotice()V
    .locals 6

    .prologue
    .line 66
    iget-object v3, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, factory:Landroid/view/LayoutInflater;
    sget v3, Lkr/co/medinbiz/R$layout;->network_popup:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, textEntryView:Landroid/view/View;
    sget v3, Lkr/co/medinbiz/R$id;->isNoticeChkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/CheckBox;

    .line 72
    .local v1, isNotice:Landroid/widget/CheckBox;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 74
    iget-object v4, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->network_connect_info:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 77
    iget-object v4, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->confirm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v5, Lkr/co/medinbiz/widget/main/MainWidget$1;

    invoke-direct {v5, p0, v1}, Lkr/co/medinbiz/widget/main/MainWidget$1;-><init>(Lkr/co/medinbiz/widget/main/MainWidget;Landroid/widget/CheckBox;)V

    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->exit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    new-instance v5, Lkr/co/medinbiz/widget/main/MainWidget$2;

    invoke-direct {v5, p0}, Lkr/co/medinbiz/widget/main/MainWidget$2;-><init>(Lkr/co/medinbiz/widget/main/MainWidget;)V

    .line 85
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->exit_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsAutoLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 55
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 27
    iget-object v3, p0, Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 28
    .local v1, cMgr:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 29
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 32
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, ConnectMode:Ljava/lang/String;
    iget-object v3, p0, Lkr/co/medinbiz/widget/main/MainWidget;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/PreferencesManager;->getNoticeAgain()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MOBILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-direct {p0}, Lkr/co/medinbiz/widget/main/MainWidget;->openNotice()V

    .line 38
    .end local v0           #ConnectMode:Ljava/lang/String;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
