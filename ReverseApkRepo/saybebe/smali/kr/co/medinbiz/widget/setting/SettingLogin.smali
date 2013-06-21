.class public Lkr/co/medinbiz/widget/setting/SettingLogin;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private http:Lkr/co/medinbiz/helper/HttpManager;

.field private id:Landroid/widget/EditText;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private phone:Landroid/widget/TextView;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private pw:Landroid/widget/EditText;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 63
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingLogin$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 39
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1

    .line 42
    sget v1, Lkr/co/medinbiz/R$layout;->setting_login_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    .line 47
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;

    .line 48
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pw:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;

    .line 49
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->phone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->login:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->certi:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 57
    return-void

    .line 44
    :cond_1
    sget v1, Lkr/co/medinbiz/R$layout;->setting_login:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/setting/SettingLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->memberOverlapDialog()V

    return-void
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/setting/SettingLogin;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/setting/SettingLogin;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method private memberOverlapDialog()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_saybebe_yes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->join:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Lkr/co/medinbiz/widget/setting/SettingLogin$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Lkr/co/medinbiz/widget/setting/SettingLogin$3;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin$3;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 120
    .local v0, r_id:I
    sget v1, Lkr/co/medinbiz/R$id;->login:I

    if-ne v0, v1, :cond_3

    .line 121
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->id:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->pw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 123
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->login_idpassword_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    const-string v2, ""

    .line 128
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;

    .line 129
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingLogin$4;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin$4;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    .line 153
    invoke-virtual {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin$4;->start()V

    goto :goto_0

    .line 156
    :cond_3
    sget v1, Lkr/co/medinbiz/R$id;->join:I

    if-ne v0, v1, :cond_5

    .line 157
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->phone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 158
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    const-string v2, ""

    .line 159
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin;->dialog:Landroid/app/ProgressDialog;

    .line 160
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingLogin$5;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin$5;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin;)V

    .line 183
    invoke-virtual {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin$5;->start()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->setCertificationWidget()V

    goto :goto_0

    .line 188
    :cond_5
    sget v1, Lkr/co/medinbiz/R$id;->certi:I

    if-ne v0, v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->setCertificationWidget()V

    goto :goto_0
.end method
