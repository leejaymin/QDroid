.class public Lcom/fleapapa/util/My;
.super Landroid/app/Application;
.source "My.java"


# static fields
.field public static WHO:Ljava/lang/String;

.field public static avatar:I

.field public static buddies:Lcom/fleapapa/helper/Group;

.field public static city:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field public static email:Ljava/lang/String;

.field public static flags:I

.field public static gps:Lcom/fleapapa/util/MyGPS;

.field public static ip:Ljava/net/InetAddress;

.field public static isGuest:Z

.field public static isMove:Z

.field public static locale:Ljava/util/Locale;

.field public static locales:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static name:Ljava/lang/String;

.field public static papa:Lcom/fleapapa/helper/CallPapa;

.field public static performa:I

.field public static phone:Ljava/lang/String;

.field public static pkgName:Ljava/lang/String;

.field public static pswd:Ljava/lang/String;

.field public static sclass:I

.field public static tBootstrp:J

.field public static tLastClick:J

.field public static tag:Ljava/lang/String;

.field public static tzOffset:I

.field public static ue:Lcom/fleapapa/helper/CallPapa$UE;

.field public static uid:I

.field public static user:Ljava/lang/String;

.field public static versionCode:I

.field public static versionName:Ljava/lang/String;

.field public static whigh:I

.field public static wwide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "My"

    sput-object v0, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    .line 33
    const-string v0, "u"

    sput-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    .line 40
    const-string v0, "v?.?.?"

    sput-object v0, Lcom/fleapapa/util/My;->versionName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    const/4 v0, 0x5

    sput v0, Lcom/fleapapa/util/My;->performa:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static bootstrapHours()J
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/fleapapa/util/My;->tBootstrp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getIP()V
    .locals 9

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 197
    .local v5, xip:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, nic:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    if-eqz v5, :cond_1

    sput-object v5, Lcom/fleapapa/util/My;->ip:Ljava/net/InetAddress;

    .line 214
    .end local v4           #nic:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :goto_0
    return-void

    .line 198
    .restart local v4       #nic:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 199
    .local v3, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 200
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 201
    .local v2, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_3

    .line 202
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".getIP: interface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".getIP: ip="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    if-nez v5, :cond_3

    move-object v5, v2

    goto :goto_1

    .line 211
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #intf:Ljava/net/NetworkInterface;
    .end local v4           #nic:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 212
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".getIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getScreenDimension(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 217
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/fleapapa/util/My;->wwide:I

    .line 218
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/fleapapa/util/My;->whigh:I

    .line 219
    return-void
.end method

.method public static isEmulator()Z
    .locals 2

    .prologue
    .line 173
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadMyPreferences()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 158
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v3

    .line 159
    .local v3, syslocales:[Ljava/util/Locale;
    const-string v4, "locales"

    new-array v5, v6, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v6, v5, :cond_0

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 165
    .local v0, dlc:Ljava/util/Locale;
    sget-object v4, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/fleapapa/helper/Locales;->codeISO(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v4, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    invoke-static {v4}, Lcom/fleapapa/util/My;->loadUserAvatar(Ljava/lang/String;)V

    .line 168
    return-void

    .line 159
    .end local v0           #dlc:Ljava/util/Locale;
    :cond_0
    aget-object v2, v4, v6

    .line 160
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v3

    if-lt v1, v7, :cond_1

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    :cond_1
    aget-object v7, v3, v1

    invoke-static {v7}, Lcom/fleapapa/helper/Locales;->codeISO(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    sget-object v7, Lcom/fleapapa/util/My;->locales:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v8, v3, v1

    invoke-virtual {v7, v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static loadUserAvatar(Ljava/lang/String;)V
    .locals 5
    .parameter "user"

    .prologue
    const/4 v4, 0x1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "avatar-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fleapapa/util/My;->avatar:I

    .line 154
    sget v0, Lcom/fleapapa/util/My;->avatar:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sget-object v1, Lcom/fleapapa/helper/Avatar;->avatars:[I

    array-length v1, v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/fleapapa/util/My;->avatar:I

    .line 155
    :cond_0
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 170
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "phone"

    .line 61
    sput-object p0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/fleapapa/util/My;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->pkgName:Ljava/lang/String;

    .line 63
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fleapapa/util/My;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: os model="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", product="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: Config.DEBUG="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",FLAG_DEBUGGABLE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    .line 68
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: language="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",country="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",timezone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v5, Lcom/fleapapa/util/MyGPS;

    invoke-direct {v5}, Lcom/fleapapa/util/MyGPS;-><init>()V

    sput-object v5, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    .line 87
    const-string v5, "phone"

    invoke-virtual {p0, v12}, Lcom/fleapapa/util/My;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 88
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "phone"

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    .line 94
    sget-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5f5e100

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    .line 96
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "phone"

    aput-object v12, v5, v9

    sget-object v6, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/util/My;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 104
    invoke-virtual {p0}, Lcom/fleapapa/util/My;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 105
    .local v2, pm:Landroid/content/pm/PackageManager;
    sget-object v5, Lcom/fleapapa/util/My;->pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/fleapapa/util/My;->versionName:Ljava/lang/String;

    .line 106
    sget-object v5, Lcom/fleapapa/util/My;->pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/fleapapa/util/My;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    const-string v5, "user"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    .line 113
    const-string v5, "pswd"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->pswd:Ljava/lang/String;

    .line 114
    const-string v5, "name"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    .line 115
    const-string v5, "city"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->city:Ljava/lang/String;

    .line 116
    const-string v5, "email"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/util/My;->email:Ljava/lang/String;

    .line 117
    const-string v5, "uid"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, suid:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    sput v5, Lcom/fleapapa/util/My;->uid:I

    .line 120
    const-string v5, "tLastClick"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "0"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sput-wide v5, Lcom/fleapapa/util/My;->tLastClick:J

    .line 121
    const-string v5, "tBootstrp"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, "0"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sput-wide v5, Lcom/fleapapa/util/My;->tBootstrp:J

    .line 122
    sget-wide v5, Lcom/fleapapa/util/My;->tBootstrp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/fleapapa/util/My;->tBootstrp:J

    .line 124
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "tBootstrp"

    aput-object v6, v5, v9

    sget-wide v6, Lcom/fleapapa/util/My;->tBootstrp:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 129
    :goto_2
    sget v5, Lcom/fleapapa/util/My;->uid:I

    if-lez v5, :cond_1

    .line 130
    invoke-static {}, Lcom/fleapapa/util/My;->loadMyPreferences()V

    .line 133
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 134
    .local v0, calendar:Ljava/util/GregorianCalendar;
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    const v6, 0xea60

    div-int/2addr v5, v6

    sput v5, Lcom/fleapapa/util/My;->tzOffset:I

    .line 135
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: tz Offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/fleapapa/util/My;->tzOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/fleapapa/util/My;->getIP()V

    .line 139
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 141
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/fleapapa/util/My;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 142
    const-string v7, ",phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/fleapapa/util/My;->phone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/fleapapa/helper/Flea;->initialize()V

    .line 146
    return-void

    .line 108
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local v3           #suid:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 109
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #suid:Ljava/lang/String;
    :cond_2
    move v5, v9

    .line 118
    goto/16 :goto_1

    .line 127
    :cond_3
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: bootstrapped "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/fleapapa/util/My;->tBootstrp:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    div-long/2addr v7, v13

    div-long/2addr v7, v13

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hrs ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onTerminate()V
    .locals 3

    .prologue
    .line 148
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/fleapapa/util/My;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onTerminate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 150
    return-void
.end method
