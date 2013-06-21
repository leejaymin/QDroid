.class public Lkr/co/medinbiz/widget/setting/SettingCertification;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingCertification.java"

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

    .line 29
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 154
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingCertification$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingCertification$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 31
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 32
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 34
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 36
    sget v1, Lkr/co/medinbiz/R$layout;->setting_certification_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    .line 41
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->phone_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->phone_edit:Landroid/widget/EditText;

    .line 42
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->result_edit:Landroid/widget/EditText;

    .line 43
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->check_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->ok_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->request_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cancel_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void

    .line 38
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->setting_certification:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->phone_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/setting/SettingCertification;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->reLogin()V

    return-void
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/setting/SettingCertification;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/setting/SettingCertification;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->result_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private certification()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->result_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->dialog:Landroid/app/ProgressDialog;

    .line 87
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingCertification$3;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingCertification$3;-><init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V

    .line 105
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification$3;->start()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 108
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->certi_number_err:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneSend()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->phone_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->dialog:Landroid/app/ProgressDialog;

    .line 58
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingCertification$2;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingCertification$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V

    .line 76
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification$2;->start()V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    .line 80
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->phone_number_check:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reLogin()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->dialog:Landroid/app/ProgressDialog;

    .line 114
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingCertification$4;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/setting/SettingCertification$4;-><init>(Lkr/co/medinbiz/widget/setting/SettingCertification;)V

    .line 136
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification$4;->start()V

    .line 137
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingCertification;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 142
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->check_btn:I

    if-ne v0, v1, :cond_0

    .line 143
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->phoneSend()V

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    sget v1, Lkr/co/medinbiz/R$id;->ok_btn:I

    if-ne v0, v1, :cond_1

    .line 145
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->certification()V

    goto :goto_0

    .line 146
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->request_btn:I

    if-ne v0, v1, :cond_2

    .line 147
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->phoneSend()V

    goto :goto_0

    .line 148
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->cancel_btn:I

    goto :goto_0
.end method
