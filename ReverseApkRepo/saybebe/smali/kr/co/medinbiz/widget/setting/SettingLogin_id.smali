.class public Lkr/co/medinbiz/widget/setting/SettingLogin_id;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingLogin_id.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private http:Lkr/co/medinbiz/helper/HttpManager;

.field private id:Landroid/widget/EditText;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private pw:Landroid/widget/EditText;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 62
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    .line 37
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 38
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 39
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 40
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 41
    sget v1, Lkr/co/medinbiz/R$layout;->setting_login_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    .line 46
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->id:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->id:Landroid/widget/EditText;

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->pw:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pw:Landroid/widget/EditText;

    .line 49
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->login:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->certi:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 56
    return-void

    .line 43
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->setting_login:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->id:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->memberOverlapDialog()V

    return-void
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method private memberOverlapDialog()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->login_saybebe_yes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->join:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Lkr/co/medinbiz/widget/setting/SettingLogin_id$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Lkr/co/medinbiz/widget/setting/SettingLogin_id$3;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id$3;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 113
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    .local v0, r_id:I
    sget v1, Lkr/co/medinbiz/R$id;->login:I

    if-ne v0, v1, :cond_3

    .line 120
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->id:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->pw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 122
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v3, Lkr/co/medinbiz/R$string;->login_idpassword_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    const-string v2, ""

    .line 127
    iget-object v3, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 126
    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->dialog:Landroid/app/ProgressDialog;

    .line 128
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingLogin_id$4;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id$4;-><init>(Lkr/co/medinbiz/widget/setting/SettingLogin_id;)V

    .line 152
    invoke-virtual {v1}, Lkr/co/medinbiz/widget/setting/SettingLogin_id$4;->start()V

    goto :goto_0

    .line 190
    :cond_3
    sget v1, Lkr/co/medinbiz/R$id;->certi:I

    if-ne v0, v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingLogin_id;->setMemberRegister()V

    goto :goto_0
.end method
