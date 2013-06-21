.class public Lcom/tapfortap/TapForTap;
.super Ljava/lang/Object;
.source "TapForTap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapfortap/TapForTap$CheckInTask;
    }
.end annotation


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "api.tapfortap.com"

.field private static final PORT:Ljava/lang/String; = "443"

.field private static final TAG:Ljava/lang/String; = "com.tapfortap.TapForTap"

.field private static activity:Landroid/app/Activity;

.field private static androidId:Ljava/lang/String;

.field private static defaultAppId:Ljava/lang/String;

.field private static deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapfortap/TapForTap;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static checkIn(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 51
    sget-object v0, Lcom/tapfortap/TapForTap;->defaultAppId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tapfortap/TapForTap;->checkIn(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static checkIn(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .parameter "activity"
    .parameter "appId"

    .prologue
    const/4 v3, 0x0

    .line 55
    sput-object p0, Lcom/tapfortap/TapForTap;->activity:Landroid/app/Activity;

    .line 57
    if-nez p1, :cond_1

    .line 58
    const-string v2, "com.tapfortap.TapForTap"

    const-string v3, "Cannot check in without a Tap for Tap app ID."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v2, "tapfortap"

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "has-checked-in"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, hasCheckedIn:Z
    const-string v2, "com.tapfortap.TapForTap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has checked in? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez v0, :cond_0

    .line 69
    new-instance v2, Lcom/tapfortap/TapForTap$1;

    invoke-direct {v2, p1}, Lcom/tapfortap/TapForTap$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static getAndroidId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 107
    sget-object v2, Lcom/tapfortap/TapForTap;->androidId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 109
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 110
    .local v1, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapfortap/TapForTap;->androidId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #manager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    sget-object v2, Lcom/tapfortap/TapForTap;->androidId:Ljava/lang/String;

    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    sput-object v2, Lcom/tapfortap/TapForTap;->androidId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDefaultAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/tapfortap/TapForTap;->defaultAppId:Ljava/lang/String;

    return-object v0
.end method

.method private static getDeviceClass(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter "activity"

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "phone"

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "tablet"

    goto :goto_0
.end method

.method private static getDeviceId(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .parameter "activity"

    .prologue
    .line 100
    sget-object v0, Lcom/tapfortap/TapForTap;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapfortap/TapForTap;->deviceId:Ljava/lang/String;

    .line 103
    :cond_0
    sget-object v0, Lcom/tapfortap/TapForTap;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/tapfortap/TapForTap;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tapfortap/TapForTap;->getDeviceInfo(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfo(Landroid/app/Activity;)Ljava/util/List;
    .locals 5
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 84
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, deviceInfo:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[id]"

    invoke-static {p0}, Lcom/tapfortap/TapForTap;->getDeviceId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[androidId]"

    invoke-static {p0}, Lcom/tapfortap/TapForTap;->getAndroidId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[model]"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[system]"

    const-string v4, "Android"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[version]"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[class]"

    invoke-static {p0}, Lcom/tapfortap/TapForTap;->getDeviceClass(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[resolution]"

    invoke-static {p0}, Lcom/tapfortap/TapForTap;->getDeviceResolution(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[screenScale]"

    invoke-static {p0}, Lcom/tapfortap/TapForTap;->getDeviceScreenScale(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[country]"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[language]"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device[timezone]"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method private static getDeviceResolution(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 132
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDeviceScreenScale(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .parameter "activity"

    .prologue
    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    const-string v1, "%1.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 155
    sput-object p0, Lcom/tapfortap/TapForTap;->activity:Landroid/app/Activity;

    .line 156
    return-void
.end method

.method public static setDefaultAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultAppId"

    .prologue
    .line 151
    sput-object p0, Lcom/tapfortap/TapForTap;->defaultAppId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static urlFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.tapfortap.com:443/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
