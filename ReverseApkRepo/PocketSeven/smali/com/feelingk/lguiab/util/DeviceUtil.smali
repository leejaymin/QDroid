.class public Lcom/feelingk/lguiab/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I

.field public static mAnydensity:Z

.field public static mHd:Z

.field public static mHvga:Z

.field private static mInitPhoneState:Z

.field private static mMDN:Ljava/lang/String;

.field public static mOpView:Z

.field private static mPhoneState:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/feelingk/lguiab/util/DeviceUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->values()[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/feelingk/lguiab/util/DeviceUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/16 v0, 0xa

    sput v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mPhoneState:I

    .line 41
    sput-boolean v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mInitPhoneState:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mAnydensity:Z

    .line 51
    sput-boolean v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    .line 52
    sput-boolean v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    .line 53
    sput-boolean v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 266
    .local v4, networkType:Ljava/lang/String;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 267
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 268
    .local v3, mobile:Landroid/net/NetworkInfo;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 270
    .local v5, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    const-string v4, "D"

    .line 303
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "networkType check: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 304
    return-object v4

    .line 274
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    :try_start_0
    const-string v6, "android.telephony.TelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 279
    const-string v7, "NETWORK_TYPE_LTE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 282
    .local v2, field:Ljava/lang/reflect/Field;
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 283
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    const-string v6, "NETWORK_TYPE_LTE"

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 282
    if-ne v7, v6, :cond_2

    .line 285
    const-string v4, "L"

    goto :goto_0

    .line 290
    :cond_2
    const-string v4, "G"
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 293
    .end local v2           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/lang/NoSuchFieldException;
    const-string v6, "The Device is not supported. (API level 11 - LTE type)"

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 297
    const-string v4, "G"

    goto :goto_0

    .line 299
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAnyDensityState(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 131
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    .line 132
    const-string v2, "supports-screens anyDensity is false"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x0

    sput-boolean v2, Lcom/feelingk/lguiab/util/DeviceUtil;->mAnydensity:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    sget-boolean v2, Lcom/feelingk/lguiab/util/DeviceUtil;->mAnydensity:Z

    return v2

    .line 138
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    const-string v2, "supports-screens anyDensity is true"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 143
    const-string v2, "getAnyDensityState : NameNotFoundException"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCarrier(Landroid/content/Context;)Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, debuggableTestFlag:Z
    if-eqz v0, :cond_0

    .line 190
    sget-object v3, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    .line 217
    :goto_0
    return-object v3

    .line 194
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 196
    .local v2, systemService:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, strNetworkOperator:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 202
    const-string v3, "05"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 203
    sget-object v3, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    goto :goto_0

    .line 205
    :cond_1
    const-string v3, "02"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 206
    const-string v3, "04"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 207
    const-string v3, "08"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 209
    :cond_2
    sget-object v3, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    goto :goto_0

    .line 212
    :cond_3
    const-string v3, "06"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 213
    sget-object v3, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    goto :goto_0

    .line 217
    .end local v1           #strNetworkOperator:Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    goto :goto_0
.end method

.method public static getComtype(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->getCarrier(Landroid/content/Context;)Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    move-result-object v0

    .line 230
    .local v0, currentTelecom:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 238
    const-string v1, "N"

    :goto_0
    return-object v1

    .line 232
    :pswitch_0
    const-string v1, "S"

    goto :goto_0

    .line 234
    :pswitch_1
    const-string v1, "K"

    goto :goto_0

    .line 236
    :pswitch_2
    const-string v1, "L"

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 340
    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->checkNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, networkType:Ljava/lang/String;
    const-string v7, "D"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 346
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 347
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 349
    .local v1, ipAddress:I
    const-string v7, "%d.%d.%d.%d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v10, v1, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 350
    shr-int/lit8 v10, v1, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 351
    shr-int/lit8 v10, v1, 0x10

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 352
    shr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 349
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .end local v1           #ipAddress:I
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v3

    .line 382
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    const-string v7, "www.google.com"

    const/16 v8, 0x50

    invoke-direct {v4, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 383
    .local v4, socket:Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 385
    .end local v4           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "socket create Error! Check Network Status"

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 106
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    .line 112
    sget-object v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    const-string v2, "\\+[8][2]"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    .line 118
    :cond_0
    sget-object v1, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    return-object v1
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 313
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 314
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 315
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 317
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 315
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getModelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 328
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 330
    .local v0, modelName:Ljava/lang/String;
    return-object v0
.end method

.method public static getPixels(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, 0x249

    const/16 v7, 0x1e0

    const/16 v6, 0x1b7

    const/16 v5, 0x140

    const/4 v4, 0x1

    .line 156
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 157
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 159
    .local v1, deviceWidth:I
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 161
    .local v0, deviceHeight:I
    if-gt v1, v5, :cond_0

    if-le v0, v7, :cond_1

    :cond_0
    if-gt v1, v7, :cond_6

    if-gt v0, v5, :cond_6

    .line 162
    :cond_1
    sput-boolean v4, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    .line 163
    const-string v3, "mHvga is true"

    invoke-static {v3}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 170
    :cond_2
    :goto_0
    if-ne v1, v6, :cond_3

    if-eq v0, v8, :cond_4

    :cond_3
    if-ne v1, v8, :cond_5

    if-ne v0, v6, :cond_5

    .line 171
    :cond_4
    sput-boolean v4, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    .line 172
    const-string v3, "mOpView is true"

    invoke-static {v3}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 175
    :cond_5
    return-void

    .line 165
    :cond_6
    const/16 v3, 0x2d0

    if-lt v1, v3, :cond_7

    const/16 v3, 0x400

    if-ge v0, v3, :cond_8

    :cond_7
    const/16 v3, 0x400

    if-lt v1, v3, :cond_2

    const/16 v3, 0x2d0

    if-lt v0, v3, :cond_2

    .line 166
    :cond_8
    sput-boolean v4, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    .line 167
    const-string v3, "mHd is true"

    invoke-static {v3}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSdkVersion(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .local v0, sdkVersion:I
    return v0
.end method

.method public static getmAnyDensityState()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mAnydensity:Z

    return v0
.end method

.method public static getmMDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    return-object v0
.end method

.method public static getmPhoneUSIMState()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mPhoneState:I

    return v0
.end method

.method public static isAvailableService(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 446
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmPhoneUSIMState()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mInitPhoneState:Z

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getmPhoneUSIMState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmPhoneUSIMState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 448
    const-string v0, "\uc11c\ube44\uc2a4 \uac00\ub2a5"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExistUSIM(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 422
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 425
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USIM \uc0c1\ud0dc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 427
    const-string v1, "USIM \uc874\uc7ac"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 428
    const/4 v1, 0x1

    .line 433
    :goto_0
    return v1

    .line 431
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USIM \uc0c1\ud0dc : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 432
    const-string v1, "USIM \ubbf8\uc874\uc7ac"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLguServiceState()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 498
    :try_start_0
    const-string v6, "android.lgt.handset.HandsetProperty"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 499
    const-string v7, "LGUP_getSystemProperty"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-string v10, "java.lang.String"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 501
    .local v3, mGetSysemProperty:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "REG"

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    .local v1, REG:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "AUTH"

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    .local v0, AUTH:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "REG: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AUTH: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 504
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 509
    .end local v0           #AUTH:Ljava/lang/String;
    .end local v1           #REG:Ljava/lang/String;
    :goto_0
    return v4

    .restart local v0       #AUTH:Ljava/lang/String;
    .restart local v1       #REG:Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 505
    goto :goto_0

    .line 507
    .end local v0           #AUTH:Ljava/lang/String;
    .end local v1           #REG:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 508
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "isLguServiceState() Exception :"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v4, v5

    .line 509
    goto :goto_0
.end method

.method public static isRoaming()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 465
    :try_start_0
    const-string v5, "android.lgt.handset.HandsetProperty"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 466
    const-string v6, "LGUP_getSystemProperty"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-string v9, "java.lang.String"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 476
    .local v1, mGetSysemProperty:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ROAMING_AREA"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    .local v2, roamingArea:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 482
    .end local v2           #roamingArea:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isRoaming() Exception :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    move v3, v4

    .line 482
    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 250
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 251
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 252
    .local v1, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static ismInitUSIMState()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mInitPhoneState:Z

    return v0
.end method

.method public static setmInitPhoneState(Z)V
    .locals 0
    .parameter "mInitPhoneState"

    .prologue
    .line 77
    sput-boolean p0, Lcom/feelingk/lguiab/util/DeviceUtil;->mInitPhoneState:Z

    .line 78
    return-void
.end method

.method public static setmMDN(Ljava/lang/String;)V
    .locals 0
    .parameter "mMDN"

    .prologue
    .line 61
    sput-object p0, Lcom/feelingk/lguiab/util/DeviceUtil;->mMDN:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static setmPhoneState(I)V
    .locals 0
    .parameter "mPhoneState"

    .prologue
    .line 69
    sput p0, Lcom/feelingk/lguiab/util/DeviceUtil;->mPhoneState:I

    .line 70
    return-void
.end method
