.class public Lkr/co/medinbiz/widget/setting/SettingMemberRegister;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingMemberRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private http:Lkr/co/medinbiz/helper/HttpManager;

.field private phone_edit:Landroid/widget/EditText;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private result_edit:Landroid/widget/EditText;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 146
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 30
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 31
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 33
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 35
    sget v1, Lkr/co/medinbiz/R$layout;->setting_memberregister:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->widget:Landroid/view/View;

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->setting_memberregister:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phone_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->reLogin()V

    return-void
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->result_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private certification()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->result_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->dialog:Landroid/app/ProgressDialog;

    .line 79
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;-><init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V

    .line 97
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$3;->start()V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 100
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->certi_number_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneSend()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phone_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    const-string v1, ""

    .line 49
    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 48
    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->dialog:Landroid/app/ProgressDialog;

    .line 50
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V

    .line 68
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$2;->start()V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    .line 72
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->phone_number_check:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reLogin()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->dialog:Landroid/app/ProgressDialog;

    .line 106
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;-><init>(Lkr/co/medinbiz/widget/setting/SettingMemberRegister;)V

    .line 128
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister$4;->start()V

    .line 129
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 134
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->check_btn:I

    if-ne v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phoneSend()V

    .line 144
    :goto_0
    return-void

    .line 136
    :cond_0
    sget v1, Lkr/co/medinbiz/R$id;->ok_btn:I

    if-ne v0, v1, :cond_1

    .line 137
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->certification()V

    goto :goto_0

    .line 138
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->request_btn:I

    if-ne v0, v1, :cond_2

    .line 139
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->phoneSend()V

    goto :goto_0

    .line 140
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->cancel_btn:I

    goto :goto_0
.end method
