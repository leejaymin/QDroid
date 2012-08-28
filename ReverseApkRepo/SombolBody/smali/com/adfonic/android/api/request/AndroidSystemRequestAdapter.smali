.class public Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;
.super Ljava/lang/Object;
.source "AndroidSystemRequestAdapter.java"


# static fields
.field private static NETWORK_NAME:Ljava/lang/String;

.field private static OPERATOR:Ljava/lang/String;

.field private static ROAMING:Ljava/lang/String;

.field private static SIM_NAME:Ljava/lang/String;

.field private static USER_AGENT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 8
    .parameter "context"

    .prologue
    .line 189
    const-string v7, "location"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 190
    .local v3, locManager:Landroid/location/LocationManager;
    const/4 v4, 0x0

    .line 191
    .local v4, locNetwork:Landroid/location/Location;
    const/4 v2, 0x0

    .line 192
    .local v2, locGPS:Landroid/location/Location;
    invoke-static {p1}, Lcom/adfonic/android/utils/Permission;->hasFineGrainLocationAccess(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 193
    const-string v7, "network"

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 195
    :cond_0
    invoke-static {p1}, Lcom/adfonic/android/utils/Permission;->hasFineGrainLocationAccess(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 196
    const-string v7, "gps"

    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 198
    :cond_1
    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    .line 212
    .end local v2           #locGPS:Landroid/location/Location;
    :cond_2
    :goto_0
    return-object v2

    .line 201
    .restart local v2       #locGPS:Landroid/location/Location;
    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    move-object v2, v4

    .line 202
    goto :goto_0

    .line 204
    :cond_4
    if-eqz v2, :cond_5

    .line 205
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 206
    .local v0, gpsTime:J
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 207
    .local v5, netTime:J
    cmp-long v7, v0, v5

    if-gtz v7, :cond_2

    move-object v2, v4

    .line 210
    goto :goto_0

    .line 212
    .end local v0           #gpsTime:J
    .end local v5           #netTime:J
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setLanguage(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setLocale(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setLocale(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setOperatorInfo(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 2
    .parameter "request"
    .parameter "context"

    .prologue
    .line 60
    :try_start_0
    sget-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->OPERATOR:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 61
    const-string v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 62
    .local v0, telMgr:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 79
    .end local v0           #telMgr:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 65
    .restart local v0       #telMgr:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->OPERATOR:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->NETWORK_NAME:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->SIM_NAME:Ljava/lang/String;

    .line 68
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "1"

    sput-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->ROAMING:Ljava/lang/String;

    .line 72
    .end local v0           #telMgr:Landroid/telephony/TelephonyManager;
    :cond_1
    sget-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->OPERATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setOperator(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->NETWORK_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setNetworkName(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->SIM_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setSimName(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->ROAMING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setRoaming(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setScreenSize(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 6
    .parameter "request"
    .parameter "context"

    .prologue
    .line 83
    :try_start_0
    const-string v4, "window"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 84
    .local v0, d:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 87
    .local v3, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 88
    .local v2, height:I
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/adfonic/android/api/request/AndroidRequest;->setScreenSize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setTimeZone(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public prepareRequest(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 0
    .parameter "request"
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setUserAgent(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setHardwareVersion(Lcom/adfonic/android/api/request/AndroidRequest;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setAdfonicVersion(Lcom/adfonic/android/api/request/AndroidRequest;)V

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setAndroidDeviceId(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setConnectionType(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setOperatorInfo(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setLocation(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setLocale(Lcom/adfonic/android/api/request/AndroidRequest;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setLanguage(Lcom/adfonic/android/api/request/AndroidRequest;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setTimeZone(Lcom/adfonic/android/api/request/AndroidRequest;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->setScreenSize(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method protected setAdfonicVersion(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 151
    const-string v0, "Adfonic/Android/1.1.5"

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAdfonicSdkVersion(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected setAndroidDeviceId(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 1
    .parameter "request"
    .parameter "context"

    .prologue
    .line 147
    invoke-static {p2}, Lcom/adfonic/android/api/request/utils/AndroidDeviceId;->getDpId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAndroidDeviceId(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected setConnectionType(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 3
    .parameter "request"
    .parameter "context"

    .prologue
    .line 126
    :try_start_0
    invoke-static {p2}, Lcom/adfonic/android/utils/Permission;->hasNetworkStateAccess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 132
    .local v1, mActive:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    const-string v2, "mobile"

    invoke-virtual {p1, v2}, Lcom/adfonic/android/api/request/AndroidRequest;->setNetworkType(Ljava/lang/String;)V

    .line 137
    :pswitch_1
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Lcom/adfonic/android/api/request/AndroidRequest;->setNetworkType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #mActive:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setHardwareVersion(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setHardwareVersion(Ljava/lang/String;)V

    .line 156
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setOsName(Ljava/lang/String;)V

    .line 157
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setOsVersion(Ljava/lang/String;)V

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAndroidSdkVersion(I)V

    .line 159
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setDeviceName(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected setLocation(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 4
    .parameter "request"
    .parameter "context"

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setLongitude(Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setLatitude(Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->isAllowLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-direct {p0, p2}, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 180
    .local v0, l:Landroid/location/Location;
    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setLocation(Landroid/location/Location;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setLongitude(Ljava/lang/String;)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/request/AndroidRequest;->setLatitude(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0           #l:Landroid/location/Location;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected setUserAgent(Lcom/adfonic/android/api/request/AndroidRequest;Landroid/content/Context;)V
    .locals 1
    .parameter "request"
    .parameter "context"

    .prologue
    .line 163
    sget-object v0, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->USER_AGENT:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    invoke-static {p2}, Lcom/adfonic/android/api/request/utils/UserAgentBuilder;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->USER_AGENT:Ljava/lang/String;

    .line 166
    :cond_0
    sget-object v0, Lcom/adfonic/android/api/request/AndroidSystemRequestAdapter;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setUserAgent(Ljava/lang/String;)V

    .line 167
    return-void
.end method
