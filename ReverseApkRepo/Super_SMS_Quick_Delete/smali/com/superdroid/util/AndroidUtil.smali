.class public Lcom/superdroid/util/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "number"

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public static generateRegisterCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "appKey"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/superdroid/util/AndroidUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, imei:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "empty imei"

    .line 130
    :goto_0
    return-object v2

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/superdroid/util/MD5;->get16MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getAppID(Ljava/lang/String;)I
    .locals 1
    .parameter "resourceID"

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getAppResourceID(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .parameter "resolveInfo"
    .parameter "packageManager"

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getColumnAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 32
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static getColumnAsLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 3
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 27
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getColumnAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 22
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, columnIndex:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayHeight(Landroid/app/Activity;)I
    .locals 2
    .parameter "ctx"

    .prologue
    .line 240
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 242
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getDisplayWidth(Landroid/app/Activity;)I
    .locals 2
    .parameter "ctx"

    .prologue
    .line 233
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 234
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "ctx"

    .prologue
    .line 111
    const-string v1, ""

    .line 114
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 115
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 119
    .local v0, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v4, Lcom/superdroid/util/AndroidUtil;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "getIMEI error"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 98
    .line 99
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 100
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, retVal:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 102
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    .line 104
    .end local v1           #retVal:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, ""

    .restart local v1       #retVal:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIdByNumber(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .parameter "ctx"
    .parameter "number"

    .prologue
    .line 37
    invoke-static {}, Lcom/superdroid/util/ContactHelper;->getContactInstance()Lcom/superdroid/util/ContactHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/superdroid/util/ContactHelper;->getIdByNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNormalPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+86"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 76
    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 139
    .line 140
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 141
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, phoneNumber:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 143
    const-string v0, ""

    .line 145
    :cond_0
    return-object v0
.end method

.method public static getShowField([Ljava/lang/String;)I
    .locals 4
    .parameter "fields"

    .prologue
    const/4 v3, 0x1

    .line 45
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v1, p0

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_0

    .line 51
    array-length v1, p0

    sub-int/2addr v1, v3

    :goto_1
    return v1

    .line 46
    :cond_0
    aget-object v1, p0, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 47
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSuffixOfFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, suffix:Ljava/lang/String;
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 89
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v0           #dotPos:I
    :cond_0
    return-object v1
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, t:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static inLocalFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 67
    const-string v0, "/local"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static inSDcard(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 63
    const-string v0, "/sdcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .parameter "contentResolver"
    .parameter "number"

    .prologue
    .line 172
    invoke-static {}, Lcom/superdroid/util/ContactHelper;->getContactInstance()Lcom/superdroid/util/ContactHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/superdroid/util/ContactHelper;->isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocalContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/superdroid/util/AndroidUtil;->isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .parameter "contentResolver"
    .parameter "number"

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/superdroid/util/AndroidUtil;->isLocalContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShowDialPrefix(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "resolver"

    .prologue
    const/4 v1, 0x1

    .line 80
    const-string v0, "dialling_prefix_checked"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sendMail(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "tos"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, returnIt:Landroid/content/Intent;
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "message/rfc882"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "Choose Email Client"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public static final sendSms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "body"

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms"

    .line 198
    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public static final sendSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "number"
    .parameter "body"

    .prologue
    const-string v3, "sms_body"

    const-string v3, "address"

    .line 206
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.android.mms"

    .line 208
    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    .line 207
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v3, "address"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v3, "sms_body"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 216
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 218
    .restart local v1       #i:Landroid/content/Intent;
    const-string v3, "com.motorola.blur.conversations"

    .line 219
    const-string v4, "com.motorola.blur.conversations.ui.ComposeMessageActivity"

    .line 218
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v3, "address"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v3, "sms_body"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    .end local v1           #i:Landroid/content/Intent;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 226
    .local v2, motoe:Ljava/lang/Exception;
    const-string v3, "Compose message not supported!"

    invoke-static {p0, v3}, Lcom/superdroid/util/ToastUtil;->alertLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showDialog(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "prompt"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "prompt"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
.end method
