.class public Lcom/feelingk/iap/util/CommonF;
.super Ljava/lang/Object;
.source "CommonF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/util/CommonF$LOGGER;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Util.CommonF"

.field public static mMDN:Ljava/lang/String;

.field static m_UsimState:I

.field static timeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/feelingk/iap/util/CommonF;->m_UsimState:I

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/feelingk/iap/util/CommonF;->timeDiff:J

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "telNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    move-object v0, p0

    .line 59
    .local v0, converMDN:Ljava/lang/String;
    const-string v1, "+82"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "0%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    const-string v1, "82"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "0%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1
    const-string v1, "Util.CommonF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "converMDN="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 84
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 85
    .local v1, systemService:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, strNetworkOperator:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 100
    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 101
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 102
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 103
    :cond_4
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 104
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 260
    .local v2, imei:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 262
    .local v3, m_telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 264
    const-string v4, "Util.CommonF"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMEI: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-static {v2}, Lcom/feelingk/iap/encryption/CryptoManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    .local v1, encImei:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 268
    .end local v1           #encImei:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 270
    .restart local v1       #encImei:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMDN(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "CarrierIndex"

    .prologue
    .line 35
    sget-object v2, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 36
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 37
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 38
    const/4 v0, 0x0

    .line 52
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v0

    .line 39
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, phoneNumber:Ljava/lang/String;
    sput-object v0, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    .line 42
    const-string v2, "Util.CommonF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phoneNumber="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "Util.CommonF"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mMDN="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 46
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->convertMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    goto :goto_0

    .line 52
    .end local v0           #phoneNumber:Ljava/lang/String;
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    sget-object v0, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getModelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 111
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 113
    .local v1, modelName:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " "

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    .local v2, st:Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 115
    .local v0, convertModelName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    const-string v3, "Util.CommonF"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertModelName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v0

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "pid"

    .prologue
    .line 73
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, format:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 75
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, FixDate:Ljava/lang/String;
    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, makeTID:Ljava/lang/String;
    return-object v3
.end method

.method public static getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v7, 0x4

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, cal01:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 166
    .local v8, cal02:Ljava/util/Calendar;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 168
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 169
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 170
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 171
    const/16 v6, 0xe

    invoke-virtual {p0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 165
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 178
    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 179
    const/16 v1, 0xe

    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v1, v8

    .line 173
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 182
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/feelingk/iap/util/CommonF;->timeDiff:J

    .line 184
    const-string v1, "Util.CommonF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeDiff: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/feelingk/iap/util/CommonF;->timeDiff:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-wide v1, Lcom/feelingk/iap/util/CommonF;->timeDiff:J

    return-wide v1
.end method

.method public static getUAProfileData(I)Ljava/lang/String;
    .locals 14
    .parameter "carrier"

    .prologue
    const/4 v13, -0x1

    .line 189
    const-string v10, "Util.CommonF"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "carrier: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v9, ""

    .line 192
    .local v9, strUAProfile:Ljava/lang/String;
    const-string v0, "0000"

    .line 194
    .local v0, UACD:Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 195
    .local v7, strModelName:Ljava/lang/String;
    const-string v10, "Util.CommonF"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "strModelName: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v10, 0x1

    if-eq p0, v10, :cond_0

    .line 200
    const-string v0, "0000"

    .line 201
    const-string v10, "Util.CommonF"

    const-string v11, "UACD Check : \ud0c0\uc0ac"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const-string v10, "Nexus S"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_1

    .line 206
    const-string v0, "SSNL"

    goto :goto_0

    .line 208
    :cond_1
    const-string v10, "Nexus One"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_2

    .line 209
    const-string v0, "HT11"

    goto :goto_0

    .line 211
    :cond_2
    const-string v10, "Galaxy Nexus"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_3

    .line 212
    const-string v0, "SSO0"

    goto :goto_0

    .line 216
    :cond_3
    const-string v8, "/system/skt/ua/uafield.dat"

    .line 217
    .local v8, strPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 218
    .local v4, fileRead:Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 220
    .local v1, bufferRead:Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, in:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    .end local v4           #fileRead:Ljava/io/FileReader;
    .local v5, fileRead:Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 227
    .end local v1           #bufferRead:Ljava/io/BufferedReader;
    .local v2, bufferRead:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x19

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 228
    const-string v10, "Util.CommonF"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "strUAProfile: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 230
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 233
    const/4 v10, 0x5

    const/16 v11, 0x9

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v10, "Util.CommonF"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UACD: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 237
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferRead:Ljava/io/BufferedReader;
    .restart local v1       #bufferRead:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 238
    .end local v5           #fileRead:Ljava/io/FileReader;
    .local v3, e:Ljava/io/FileNotFoundException;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 240
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 241
    .local v3, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 243
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 243
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fileRead:Ljava/io/FileReader;
    .restart local v5       #fileRead:Ljava/io/FileReader;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #fileRead:Ljava/io/FileReader;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #bufferRead:Ljava/io/BufferedReader;
    .end local v4           #fileRead:Ljava/io/FileReader;
    .restart local v2       #bufferRead:Ljava/io/BufferedReader;
    .restart local v5       #fileRead:Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferRead:Ljava/io/BufferedReader;
    .restart local v1       #bufferRead:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fileRead:Ljava/io/FileReader;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    goto :goto_3

    .line 240
    .end local v4           #fileRead:Ljava/io/FileReader;
    .restart local v5       #fileRead:Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #fileRead:Ljava/io/FileReader;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #bufferRead:Ljava/io/BufferedReader;
    .end local v4           #fileRead:Ljava/io/FileReader;
    .restart local v2       #bufferRead:Ljava/io/BufferedReader;
    .restart local v5       #fileRead:Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferRead:Ljava/io/BufferedReader;
    .restart local v1       #bufferRead:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fileRead:Ljava/io/FileReader;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    goto :goto_2

    .line 237
    :catch_7
    move-exception v3

    goto :goto_1

    .end local v4           #fileRead:Ljava/io/FileReader;
    .restart local v5       #fileRead:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fileRead:Ljava/io/FileReader;
    .restart local v4       #fileRead:Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static setMDN(Ljava/lang/String;)V
    .locals 0
    .parameter "mdn"

    .prologue
    .line 30
    sput-object p0, Lcom/feelingk/iap/util/CommonF;->mMDN:Ljava/lang/String;

    .line 31
    return-void
.end method
