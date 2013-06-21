.class public Lkr/co/medinbiz/widget/setting/SettingMenu;
.super Lkr/co/medinbiz/widget/setting/SettingCommon;
.source "SettingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private appName:Ljava/lang/String;

.field private auto_login:Landroid/widget/ToggleButton;

.field private delete:Landroid/widget/Button;

.field private login:Landroid/widget/Button;

.field private logout:Landroid/widget/Button;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private user:Landroid/widget/TextView;

.field private versionName:Ljava/lang/String;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-direct {p0}, Lkr/co/medinbiz/widget/setting/SettingCommon;-><init>()V

    .line 39
    iput-object p1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    .line 41
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_0

    .line 43
    sget v4, Lkr/co/medinbiz/R$layout;->setting_main_160:I

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    .line 48
    :goto_0
    new-instance v4, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v4, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 49
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->auto_login:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    .line 50
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    invoke-virtual {v4, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->login_btn:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->login:Landroid/widget/Button;

    .line 52
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->logout_btn:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->logout:Landroid/widget/Button;

    .line 53
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->delete_btn:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->delete:Landroid/widget/Button;

    .line 54
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->login:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->logout:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->delete:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->user:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->user:Landroid/widget/TextView;

    .line 58
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->app_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->appName:Ljava/lang/String;

    .line 59
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->name:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    .local v2, pack:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 63
    .local v3, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 64
    const/16 v5, 0x80

    .line 63
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 68
    :goto_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->versionName:Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->version:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->web:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->email:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMenu;->onResume()V

    .line 73
    return-void

    .line 45
    .end local v2           #pack:Landroid/content/pm/PackageManager;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    sget v4, Lkr/co/medinbiz/R$layout;->setting_main:I

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    goto/16 :goto_0

    .line 65
    .restart local v2       #pack:Landroid/content/pm/PackageManager;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public DeleteDir(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 102
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, childFileList:[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    return-void

    .line 104
    :cond_0
    aget-object v0, v1, v3

    .line 106
    .local v0, childFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lkr/co/medinbiz/widget/setting/SettingMenu;->DeleteDir(Ljava/lang/String;)V

    .line 104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 119
    .local v1, id:I
    sget v4, Lkr/co/medinbiz/R$id;->auto_login:I

    if-ne v1, v4, :cond_3

    .line 120
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v6, Lkr/co/medinbiz/R$string;->err_login_to_use:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 122
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    goto :goto_0

    .line 130
    :cond_3
    sget v4, Lkr/co/medinbiz/R$id;->login_btn:I

    if-ne v1, v4, :cond_4

    .line 131
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMenu;->setLoginWidget()V

    goto :goto_0

    .line 132
    :cond_4
    sget v4, Lkr/co/medinbiz/R$id;->logout_btn:I

    if-ne v1, v4, :cond_5

    .line 133
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 134
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 135
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v7}, Lkr/co/medinbiz/helper/PreferencesManager;->setForeignVersion(Z)V

    .line 139
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setServer(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/setting/SettingMenu;->onResume()V

    goto :goto_0

    .line 141
    :cond_5
    sget v4, Lkr/co/medinbiz/R$id;->web:I

    if-ne v1, v4, :cond_6

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->homepage_url:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 142
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    sget v4, Lkr/co/medinbiz/R$id;->email:I

    if-ne v1, v4, :cond_8

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mailto:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->email_address:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 146
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, userId:Ljava/lang/String;
    :goto_1
    const-string v4, "android.intent.extra.TEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ device : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 150
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", App : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    .end local v3           #userId:Ljava/lang/String;
    :cond_7
    const-string v3, "GUEST"

    goto :goto_1

    .line 153
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    sget v4, Lkr/co/medinbiz/R$id;->delete_btn:I

    if-ne v1, v4, :cond_0

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v5, Lkr/co/medinbiz/R$string;->confirm_delete_cache:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v5, Lkr/co/medinbiz/R$string;->confirm:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Lkr/co/medinbiz/widget/setting/SettingMenu$1;

    invoke-direct {v5, p0}, Lkr/co/medinbiz/widget/setting/SettingMenu$1;-><init>(Lkr/co/medinbiz/widget/setting/SettingMenu;)V

    .line 156
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    iget-object v4, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->mContext:Landroid/content/Context;

    sget v5, Lkr/co/medinbiz/R$string;->cancel:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v5, Lkr/co/medinbiz/widget/setting/SettingMenu$2;

    invoke-direct {v5, p0}, Lkr/co/medinbiz/widget/setting/SettingMenu$2;-><init>(Lkr/co/medinbiz/widget/setting/SettingMenu;)V

    .line 166
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->login:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->logout:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getLoginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saybebe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->user:Landroid/widget/TextView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 98
    :goto_1
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->user:Landroid/widget/TextView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->login:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->logout:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->user:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/setting/SettingMenu;->auto_login:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method
