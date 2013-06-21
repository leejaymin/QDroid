.class public Lkr/co/medinbiz/widget/ultra/UltraMain;
.super Lkr/co/medinbiz/widget/ultra/UltraCommon;
.source "UltraMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field public isMenuFirst:Z

.field public mActivityControllListner:Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;

.field private mContext:Landroid/content/Context;

.field private mInviteList:Landroid/widget/ListView;

.field private mInviteListAdapter:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

.field private mMemberList:Lkr/co/medinbiz/dto/MemberList;

.field private mMyBtn:Landroid/widget/LinearLayout;

.field public mPhotoListView:Lkr/co/medinbiz/widget/ultra/PhotoListView;

.field public mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private title1:Landroid/widget/TextView;

.field private title2:Landroid/widget/TextView;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "aContext"
    .parameter "aMainView"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;-><init>()V

    .line 35
    iput-boolean v5, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->isMenuFirst:Z

    .line 74
    new-instance v1, Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->handler:Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    .line 43
    sput-object p2, Lkr/co/medinbiz/widget/ultra/UltraMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 44
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    move-object v1, p1

    .line 45
    check-cast v1, Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mActivityControllListner:Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;

    .line 46
    sput-object p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    .line 48
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 50
    sget v1, Lkr/co/medinbiz/R$layout;->ultra_main_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    .line 55
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->myname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->user_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->dialog:Landroid/app/ProgressDialog;

    .line 58
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMain$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/UltraMain$2;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    iput-boolean v5, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->isMenuFirst:Z

    .line 66
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu01:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;

    .line 67
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->invite_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;

    .line 69
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->title1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->title1:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->title2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->title2:Landroid/widget/TextView;

    .line 72
    return-void

    .line 52
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->ultra_main:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;

    return-object v0
.end method

.method static synthetic access$10(Lkr/co/medinbiz/widget/ultra/UltraMain;Lkr/co/medinbiz/dto/MemberList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;

    return-void
.end method

.method static synthetic access$11(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->title1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/ultra/UltraMain;Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteListAdapter:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

    return-void
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteListAdapter:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->title2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;

    invoke-super {p0, v0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;->onBackPressed(Landroid/content/Context;)V

    .line 221
    return-void
.end method
