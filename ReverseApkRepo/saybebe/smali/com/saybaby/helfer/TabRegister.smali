.class public Lcom/saybaby/helfer/TabRegister;
.super Ljava/lang/Object;
.source "TabRegister.java"


# static fields
.field public static mContext:Landroid/content/Context;

.field static on:Landroid/view/View$OnClickListener;

.field private static pm:Lkr/co/medinbiz/helper/PreferencesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/saybaby/helfer/TabRegister$1;

    invoke-direct {v0}, Lcom/saybaby/helfer/TabRegister$1;-><init>()V

    sput-object v0, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TabRegist(Landroid/app/Activity;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 30
    const-class v13, Lcom/saybaby/MainHome;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, tab1:Ljava/lang/String;
    const-class v13, Lcom/saybaby/ultra/Ultra;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, tab2:Ljava/lang/String;
    const-class v13, Lcom/saybaby/Pregnancy;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, tab3:Ljava/lang/String;
    const-class v13, Lcom/saybaby/Invite;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, tab4:Ljava/lang/String;
    const-class v13, Lcom/saybaby/Setting;

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, tab5:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, tab_state:Ljava/lang/String;
    const-string v13, "\\."

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, cls:[Ljava/lang/String;
    array-length v13, v0

    if-lez v13, :cond_0

    .line 39
    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v0, v13

    .line 42
    :cond_0
    sput-object p0, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    .line 43
    new-instance v13, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v13, p0}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    sput-object v13, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 44
    const v13, 0x7f080001

    invoke-virtual {p0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 45
    .local v1, group:Landroid/widget/FrameLayout;
    const v13, 0x7f08006c

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 46
    .local v7, tab_1:Landroid/widget/RadioButton;
    const v13, 0x7f08006d

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    .line 47
    .local v8, tab_2:Landroid/widget/RadioButton;
    const v13, 0x7f08006e

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 48
    .local v9, tab_3:Landroid/widget/RadioButton;
    const v13, 0x7f08006f

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    .line 49
    .local v10, tab_4:Landroid/widget/RadioButton;
    const v13, 0x7f080070

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    .line 50
    .local v11, tab_5:Landroid/widget/RadioButton;
    sget-object v13, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget-object v13, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget-object v13, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget-object v13, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget-object v13, Lcom/saybaby/helfer/TabRegister;->on:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v13}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 56
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 77
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 59
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 62
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 65
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 68
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0

    .line 71
    :cond_5
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic access$0()Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method public static inviteAssecc(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const v5, 0x7f060049

    .line 141
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getLoginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "invite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f060089

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 150
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    new-instance v4, Lcom/saybaby/helfer/TabRegister$3;

    invoke-direct {v4}, Lcom/saybaby/helfer/TabRegister$3;-><init>()V

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 164
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 167
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 173
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v4, Lcom/saybaby/helfer/TabRegister$4;

    invoke-direct {v4}, Lcom/saybaby/helfer/TabRegister$4;-><init>()V

    .line 173
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 183
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .restart local v0       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static memberAssecc(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 119
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 124
    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f060049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v4, Lcom/saybaby/helfer/TabRegister$2;

    invoke-direct {v4}, Lcom/saybaby/helfer/TabRegister$2;-><init>()V

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 135
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
