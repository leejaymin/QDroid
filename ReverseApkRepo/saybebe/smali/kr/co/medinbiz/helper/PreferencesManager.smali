.class public Lkr/co/medinbiz/helper/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private pref:Landroid/content/SharedPreferences;

.field private saver:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/helper/PreferencesManager;->mContext:Landroid/content/Context;

    .line 17
    const-string v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    .line 18
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    .line 19
    return-void
.end method


# virtual methods
.method public getBabydue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "babydue"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBarcode_reg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "barcode_reg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdtype()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "cdtype"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "cookie"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiffCount()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "diffcount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDiffCountDate()J
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "diffcountdate"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForeignVersion()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IsForeignVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGPSused()Z
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHcode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "hcode"

    const-string v2, "saybebe"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsAutoLogin()Z
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "AutoLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsLogin()Z
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IsLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsNotFirst()Z
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "IsNotFirst"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "loginType"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeAgain()Z
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "noticeAgain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNoticeId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "noticeid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "pw"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "phoneNumber"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->pref:Landroid/content/SharedPreferences;

    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public helloMapping()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public saybebeMapping()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, isInit:Z
    iget-object v7, p0, Lkr/co/medinbiz/helper/PreferencesManager;->mContext:Landroid/content/Context;

    const-string v8, "SayBaby"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 177
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v7, "id"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, id:Ljava/lang/String;
    const-string v7, "pass"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, pw:Ljava/lang/String;
    const-string v7, "certPhone"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, phone:Ljava/lang/String;
    const-string v7, "logintype"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, type:Ljava/lang/String;
    const-string v7, "ishaslogin"

    invoke-interface {v4, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, login:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v0}, Lkr/co/medinbiz/helper/PreferencesManager;->setID(Ljava/lang/String;)V

    .line 185
    :cond_0
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {p0, v5}, Lkr/co/medinbiz/helper/PreferencesManager;->setPW(Ljava/lang/String;)V

    .line 188
    :cond_1
    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p0, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setPhoneNumber(Ljava/lang/String;)V

    .line 191
    :cond_2
    if-eqz v6, :cond_3

    .line 192
    invoke-virtual {p0, v6}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 194
    :cond_3
    if-eqz v2, :cond_4

    .line 195
    const-string v7, "Y"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    invoke-virtual {p0, v11}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 197
    invoke-virtual {p0, v11}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 198
    const/4 v1, 0x1

    .line 201
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 202
    return v1
.end method

.method public setBabydue(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 112
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "babydue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public setBarcode_reg(Ljava/lang/String;)V
    .locals 2
    .parameter "barcode_reg"

    .prologue
    .line 161
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "barcode_reg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method

.method public setCdtype(Ljava/lang/String;)V
    .locals 2
    .parameter "cdtype"

    .prologue
    .line 152
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cdtype"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2
    .parameter "cookie"

    .prologue
    .line 76
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cookie"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public setDiffCount(I)V
    .locals 2
    .parameter "name"

    .prologue
    .line 129
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "diffcount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method public setDiffCountDate(J)V
    .locals 2
    .parameter "date"

    .prologue
    .line 134
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "diffcountdate"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public setForeignVersion(Z)V
    .locals 2
    .parameter "foreign"

    .prologue
    .line 210
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsForeignVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    return-void
.end method

.method public setGPSused(Z)V
    .locals 2
    .parameter "gps"

    .prologue
    .line 227
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void
.end method

.method public setHcode(Ljava/lang/String;)V
    .locals 2
    .parameter "hcode"

    .prologue
    .line 170
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hcode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public setIsAutoLogin(Z)V
    .locals 2
    .parameter "login"

    .prologue
    .line 58
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AutoLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public setIsLogin(Z)V
    .locals 2
    .parameter "login"

    .prologue
    .line 49
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public setIsNotFirst(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 67
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsNotFirst"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 94
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "loginType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 103
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public setNoticeAgain(Z)V
    .locals 2
    .parameter "isNoti"

    .prologue
    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "noticeAgain"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    return-void
.end method

.method public setNoticeId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 143
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "noticeid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setPW(Ljava/lang/String;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 40
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pw"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 85
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "phoneNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 219
    iget-object v0, p0, Lkr/co/medinbiz/helper/PreferencesManager;->saver:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    return-void
.end method
