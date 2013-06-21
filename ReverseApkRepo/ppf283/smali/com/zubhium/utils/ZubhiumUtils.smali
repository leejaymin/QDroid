.class public Lcom/zubhium/utils/ZubhiumUtils;
.super Ljava/lang/Object;
.source "ZubhiumUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ZubhiumAndroidSDK"

.field static final ZUBHIUM_PREF:Ljava/lang/String; = "zubhium-sdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 127
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 128
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 130
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 131
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 135
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method

.method public static clearPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 31
    move-object v0, p0

    .line 32
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 35
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, app_icon:Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lt3SkSFUAg5/gVgwes9xi;->oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 187
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 188
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NameNotFoundException"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 168
    const-string v0, ""

    .line 169
    .local v0, app_name:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lt3SkSFUAg5/gVgwes9xi;->oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 172
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 173
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NameNotFoundException"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 141
    const-string v0, "unknown"

    .line 142
    .local v0, app_ver:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lt3SkSFUAg5/gVgwes9xi;->oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VersionNotFoundException"

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, versionCode:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lt3SkSFUAg5/gVgwes9xi;->oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 157
    .local v1, i:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 164
    .end local v1           #i:I
    :cond_0
    :goto_0
    return-object v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "VersionNotFoundException"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VersionNotFoundException"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getConnevtivityStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 275
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v2

    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    move v2, v3

    .line 271
    goto :goto_0

    .line 272
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Make sure you have <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceInfo(II)Lorg/json/JSONObject;
    .locals 5
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, object:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #object:Lorg/json/JSONObject;
    .local v2, object:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "manufacturer"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v3, "brand"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v3, "product"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v3, "sdk"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v3, "build"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v3, "width"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v3, "height"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 212
    .end local v2           #object:Lorg/json/JSONObject;
    .restart local v1       #object:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #object:Lorg/json/JSONObject;
    .restart local v2       #object:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #object:Lorg/json/JSONObject;
    .restart local v1       #object:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method static getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 111
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 112
    .local v1, digest:Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 114
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 117
    .local v2, md5:[B
    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 121
    .end local v0           #bytes:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v2           #md5:[B
    :goto_0
    return-object v3

    .line 119
    :catch_0
    move-exception v3

    .line 121
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 279
    packed-switch p0, :pswitch_data_0

    .line 295
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 281
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 284
    :pswitch_1
    const-string v0, "GSM"

    goto :goto_0

    .line 287
    :pswitch_2
    const-string v0, "CDMA"

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static haveInternet(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 10
    .parameter "context"

    .prologue
    .line 216
    const/4 v4, 0x0

    .line 218
    .local v4, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 219
    .local v3, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, serviceProvider:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumUtils;->getPhoneType(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, phoneType:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 223
    .end local v4           #object:Lorg/json/JSONObject;
    .local v5, object:Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "service_provider"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v8, "phone_type"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 230
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    const-string v8, "availability"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    const-string v8, "on_roaming"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 243
    :goto_1
    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 245
    const-string v8, "is_connected"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    const-string v8, "connection_type"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v4, v5

    .line 262
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #manager:Landroid/telephony/TelephonyManager;
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #phoneType:Ljava/lang/String;
    .end local v7           #serviceProvider:Ljava/lang/String;
    .restart local v4       #object:Lorg/json/JSONObject;
    :goto_2
    return-object v4

    .line 234
    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v3       #manager:Landroid/telephony/TelephonyManager;
    .restart local v5       #object:Lorg/json/JSONObject;
    .restart local v6       #phoneType:Ljava/lang/String;
    .restart local v7       #serviceProvider:Ljava/lang/String;
    :cond_0
    const-string v8, "availability"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 257
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v8

    move-object v4, v5

    .end local v5           #object:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    goto :goto_2

    .line 240
    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v5       #object:Lorg/json/JSONObject;
    :cond_1
    const-string v8, "on_roaming"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 259
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 260
    .end local v3           #manager:Landroid/telephony/TelephonyManager;
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v6           #phoneType:Ljava/lang/String;
    .end local v7           #serviceProvider:Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #object:Lorg/json/JSONObject;
    :goto_3
    const-string v8, "Add android.permission.ACCESS_NETWORK_STATE in manifest for detailed network information."

    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_2

    .line 248
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v3       #manager:Landroid/telephony/TelephonyManager;
    .restart local v5       #object:Lorg/json/JSONObject;
    .restart local v6       #phoneType:Ljava/lang/String;
    .restart local v7       #serviceProvider:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v8, "is_connected"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object v4, v5

    .end local v5           #object:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    goto :goto_2

    .line 252
    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v5       #object:Lorg/json/JSONObject;
    :cond_3
    const-string v8, "availability"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 253
    const-string v8, "is_connected"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    const-string v8, "on_roaming"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 255
    const-string v8, "unable to find network connection"

    invoke-static {v8}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .end local v5           #object:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    goto :goto_2

    .line 259
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #manager:Landroid/telephony/TelephonyManager;
    .end local v6           #phoneType:Ljava/lang/String;
    .end local v7           #serviceProvider:Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_3

    .line 257
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v3       #manager:Landroid/telephony/TelephonyManager;
    .restart local v5       #object:Lorg/json/JSONObject;
    .restart local v6       #phoneType:Ljava/lang/String;
    .restart local v7       #serviceProvider:Ljava/lang/String;
    :cond_4
    move-object v4, v5

    .end local v5           #object:Lorg/json/JSONObject;
    .restart local v4       #object:Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public static readPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 86
    move v1, p2

    .line 87
    .local v1, ret:I
    move-object v0, p0

    .line 88
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 89
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, settings:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .line 92
    .restart local v2       #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 53
    const-string v2, "zubhium-sdk"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    .local v1, settings:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v0

    .line 56
    .restart local v1       #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static readPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 73
    move v1, p2

    .line 74
    .local v1, ret:Z
    move-object v0, p0

    .line 75
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 76
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, settings:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .line 79
    .restart local v2       #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static writePreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 99
    move-object v0, p0

    .line 100
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 102
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 41
    move-object v0, p0

    .line 42
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 43
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 44
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static writePreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 63
    move-object v0, p0

    .line 64
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    const-string v3, "zubhium-sdk"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static writelog(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 27
    const-string v0, "ZubhiumAndroidSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
