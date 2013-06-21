.class public Lkr/co/medinbiz/widget/setting/SettingJoin;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingJoin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isFirstIn:Z


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private email:Landroid/widget/EditText;

.field private final handler:Landroid/os/Handler;

.field private http:Lkr/co/medinbiz/helper/HttpManager;

.field private join_info1:Landroid/widget/CheckBox;

.field private join_info2:Landroid/widget/CheckBox;

.field private join_info3:Landroid/widget/CheckBox;

.field private name:Landroid/widget/EditText;

.field private number1:Landroid/widget/EditText;

.field private number2:Landroid/widget/EditText;

.field private phone:Landroid/widget/TextView;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 150
    new-instance v1, Lkr/co/medinbiz/widget/setting/SettingJoin$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/setting/SettingJoin$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingJoin;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 38
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_1

    .line 42
    sget v1, Lkr/co/medinbiz/R$layout;->setting_join_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    .line 47
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->name:Landroid/widget/EditText;

    .line 48
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->number1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number1:Landroid/widget/EditText;

    .line 49
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->number2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number2:Landroid/widget/EditText;

    .line 50
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->email:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->email:Landroid/widget/EditText;

    .line 51
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->phone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->phone:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->phone:Landroid/widget/TextView;

    new-instance v2, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v2, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info1:Landroid/widget/CheckBox;

    .line 54
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info2:Landroid/widget/CheckBox;

    .line 55
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info3:Landroid/widget/CheckBox;

    .line 56
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info1_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 57
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info2_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_info3_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->join_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-boolean v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->isFirstIn:Z

    if-nez v1, :cond_0

    .line 65
    sget v1, Lkr/co/medinbiz/R$string;->first_join:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p1, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x1

    sput-boolean v1, Lkr/co/medinbiz/widget/setting/SettingJoin;->isFirstIn:Z

    .line 69
    :cond_0
    return-void

    .line 44
    :cond_1
    sget v1, Lkr/co/medinbiz/R$layout;->setting_join:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info3:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->phone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/setting/SettingJoin;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/setting/SettingJoin;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private join()V
    .locals 10

    .prologue
    const/4 v6, 0x5

    const/4 v9, 0x1

    .line 98
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->name:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, mName:Ljava/lang/String;
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number1:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, mNumber1:Ljava/lang/String;
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->number2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, mNumber2:Ljava/lang/String;
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->phone:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, mPhone:Ljava/lang/String;
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->email:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, mEmail:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info1:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->join_info2:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lkr/co/medinbiz/widget/setting/SettingJoin;->isValidEmail(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    const-string v6, ""

    iget-object v7, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lkr/co/medinbiz/R$string;->wait:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->dialog:Landroid/app/ProgressDialog;

    .line 109
    new-instance v5, Lkr/co/medinbiz/widget/setting/SettingJoin$2;

    invoke-direct {v5, p0}, Lkr/co/medinbiz/widget/setting/SettingJoin$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingJoin;)V

    .line 139
    invoke-virtual {v5}, Lkr/co/medinbiz/widget/setting/SettingJoin$2;->start()V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 142
    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->join_email_check:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v5, v6}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    .line 146
    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->join_check:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-static {v5, v6}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingJoin;->widget:Landroid/view/View;

    return-object v0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .locals 3
    .parameter "email"

    .prologue
    .line 91
    const-string v2, "^([a-z0-9_.-]+)@([da-z.-]+)\\.([a-z.]{2,6})$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 92
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 93
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 78
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->join_info1_btn:I

    if-ne v0, v1, :cond_1

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/setting/SettingJoin;->setTermsWidget(I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->join_info2_btn:I

    if-ne v0, v1, :cond_2

    .line 81
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/setting/SettingJoin;->setTermsWidget(I)V

    goto :goto_0

    .line 82
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->join_info3_btn:I

    if-ne v0, v1, :cond_3

    .line 83
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/setting/SettingJoin;->setTermsWidget(I)V

    goto :goto_0

    .line 84
    :cond_3
    sget v1, Lkr/co/medinbiz/R$id;->join_btn:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingJoin;->join()V

    goto :goto_0
.end method
