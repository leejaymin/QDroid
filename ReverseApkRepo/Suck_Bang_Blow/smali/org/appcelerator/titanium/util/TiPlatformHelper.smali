.class public Lorg/appcelerator/titanium/util/TiPlatformHelper;
.super Ljava/lang/Object;
.source "TiPlatformHelper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DBG:Z = false

.field public static final LCAT:Ljava/lang/String; = "TiPlatformHelper"

.field private static applicationDisplayInfoInitialized:Z

.field public static applicationLogicalDensity:I

.field public static applicationScaleFactor:F

.field private static final currencyCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbolsByCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final locales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static platformId:Ljava/lang/String;

.field public static sb:Ljava/lang/StringBuilder;

.field public static sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    .line 50
    const/high16 v0, 0x3f80

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    .line 51
    const/16 v0, 0xa0

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, s:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    monitor-exit v1

    .line 272
    return-object v0

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getArchitecture()Ljava/lang/String;
    .locals 7

    .prologue
    .line 276
    const-string v0, "Unknown"

    .line 278
    .local v0, arch:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1fa0

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 281
    .local v2, l:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 282
    const-string v5, "Processor"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, values:[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 289
    .end local v4           #values:[Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 296
    .end local v2           #l:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v0

    .line 289
    .restart local v2       #l:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    .end local v2           #l:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 293
    .local v1, e:Ljava/io/IOException;
    const-string v5, "TiPlatformHelper"

    const-string v6, "Error while trying to access processor info in /proc/cpuinfo"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAvailableMemory()D
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public static getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 232
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    .local v0, code:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 235
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0       #code:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "currencyCode"

    .prologue
    .line 256
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, symbol:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 259
    .end local v0           #symbol:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0       #symbol:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .parameter "locale"

    .prologue
    .line 244
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, symbol:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 247
    .end local v0           #symbol:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0       #symbol:Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, "TiPlatformHelper"

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, ipAddress:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 357
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 358
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 359
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 361
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 364
    const-string v4, "TiPlatformHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found IP address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 367
    .restart local v2       #wifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v4, "Unable to access WifiInfo, failed to get IP address"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v2           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v4, "Unable to access the WifiManager, failed to get IP address"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v4, "TiPlatformHelper"

    const-string v4, "Must have android.permission.ACCESS_WIFI_STATE, failed to get IP address"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 10
    .parameter "localeCode"

    .prologue
    const-string v9, "_"

    const-string v8, "__"

    .line 180
    if-nez p0, :cond_0

    const/4 v6, 0x0

    .line 226
    .end local p0
    :goto_0
    return-object v6

    .line 181
    .restart local p0
    :cond_0
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, code:Ljava/lang/String;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Locale;

    move-object v6, p0

    goto :goto_0

    .line 186
    .restart local p0
    :cond_1
    const-string v3, ""

    .local v3, language:Ljava/lang/String;
    const-string v1, ""

    .local v1, country:Ljava/lang/String;
    const-string v5, ""

    .line 187
    .local v5, variant:Ljava/lang/String;
    const-string v6, "__"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v4, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 224
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v2, l:Ljava/util/Locale;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 226
    goto :goto_0

    .line 193
    .end local v2           #l:Ljava/util/Locale;
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_3
    const-string v6, "_"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 195
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "_"

    invoke-direct {v4, v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 202
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_5
    const-string v6, "__"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 212
    .end local v4           #tokens:Ljava/util/StringTokenizer;
    :cond_7
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v4       #tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 214
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_8
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 217
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 219
    :cond_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getMacaddress()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, "TiPlatformHelper"

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, macaddr:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 304
    .local v1, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 305
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 306
    .local v3, wm:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 308
    .local v2, wi:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_2

    .line 309
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 311
    const-string v4, "TiPlatformHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found mac address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v2           #wi:Landroid/net/wifi/WifiInfo;
    .end local v3           #wm:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 347
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_1
    return-object v0

    .line 314
    .restart local v2       #wi:Landroid/net/wifi/WifiInfo;
    .restart local v3       #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_3

    .line 315
    const-string v4, "TiPlatformHelper"

    const-string v4, "no WifiInfo, enabling Wifi to get macaddr"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 318
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 319
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 320
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_4
    :goto_1
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_5

    .line 327
    const-string v4, "TiPlatformHelper"

    const-string v4, "disabling wifi because we enabled it."

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 322
    :cond_6
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_4

    .line 323
    const-string v4, "TiPlatformHelper"

    const-string v4, "still no WifiInfo, assuming no macaddr"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    :cond_7
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 332
    const-string v4, "TiPlatformHelper"

    const-string v4, "enabling wifi failed, assuming no macaddr"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_8
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "TiPlatformHelper"

    const-string v4, "wifi already enabled, assuming no macaddr"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v2           #wi:Landroid/net/wifi/WifiInfo;
    .end local v3           #wm:Landroid/net/wifi/WifiManager;
    :cond_9
    const-string v4, "TiPlatformHelper"

    const-string v4, "Must have android.permission.ACCESS_WIFI_STATE"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMobileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "android"

    return-object v0
.end method

.method public static getNetmask()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, "TiPlatformHelper"

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, netmask:Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 383
    .local v2, tiApp:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 384
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 385
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_2

    .line 386
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 387
    .local v0, dhcpInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_1

    .line 388
    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->DBG:Z

    if-eqz v4, :cond_0

    .line 390
    const-string v4, "TiPlatformHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found netmask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v1

    .line 393
    .restart local v0       #dhcpInfo:Landroid/net/DhcpInfo;
    .restart local v3       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v4, "Unable to access DhcpInfo, failed to get netmask"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .end local v0           #dhcpInfo:Landroid/net/DhcpInfo;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v4, "Unable to access the WifiManager, failed to get netmask"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v4, "TiPlatformHelper"

    const-string v4, "Must have android.permission.ACCESS_WIFI_STATE, failed to get netmask"

    invoke-static {v6, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNetworkType()I
    .locals 7

    .prologue
    .line 410
    const/4 v3, -0x1

    .line 412
    .local v3, type:I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 414
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 416
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 417
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 427
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 420
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 422
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 423
    .local v1, e:Ljava/lang/SecurityException;
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "32bit"

    return-object v0
.end method

.method public static getProcessorCount()I
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 13

    .prologue
    const-string v12, "unique_machine_id"

    const-string v11, "hardware_machine_id"

    const-string v10, "TiPlatformHelper"

    const-string v9, ""

    .line 55
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 57
    .local v0, app:Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 61
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 62
    const-string v7, "TiPlatformHelper"

    const-string v7, "platformId is null, setting to empty string"

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v7, ""

    sput-object v9, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 66
    :cond_0
    new-instance v3, Lorg/appcelerator/titanium/util/TiDatabaseHelper;

    invoke-direct {v3, v0}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 67
    .local v3, db:Lorg/appcelerator/titanium/util/TiDatabaseHelper;
    const-string v7, "unique_machine_id"

    const-string v7, ""

    invoke-virtual {v3, v12, v9}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, storedMachineId:Ljava/lang/String;
    const-string v7, "hardware_machine_id"

    const-string v7, ""

    invoke-virtual {v3, v11, v9}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->getPlatformParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, hardwareMachineId:Ljava/lang/String;
    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    if-eq v7, v4, :cond_3

    .line 73
    sget-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 79
    .local v2, currentMachineId:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "9774d56d682e549c"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "1234567890ABCDEF"

    aput-object v8, v1, v7

    .line 83
    .local v1, badIds:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 84
    aget-object v7, v1, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const-string v7, "TiPlatformHelper"

    const-string v7, "renaming ID"

    invoke-static {v10, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_1
    if-eq v2, v6, :cond_2

    .line 93
    const-string v7, "unique_machine_id"

    invoke-virtual {v3, v12, v2}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v7, "hardware_machine_id"

    sget-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    invoke-virtual {v3, v11, v7}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v7, "previous_machine_id"

    invoke-virtual {v3, v7, v6}, Lorg/appcelerator/titanium/util/TiDatabaseHelper;->updatePlatformParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sput-object v2, Lorg/appcelerator/titanium/util/TiPlatformHelper;->platformId:Ljava/lang/String;

    .line 99
    :cond_2
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lorg/appcelerator/titanium/util/TiPlatformHelper;->sessionId:Ljava/lang/String;

    .line 100
    return-void

    .line 75
    .end local v1           #badIds:[Ljava/lang/String;
    .end local v2           #currentMachineId:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3
    move-object v2, v6

    .restart local v2       #currentMachineId:Ljava/lang/String;
    goto :goto_0

    .line 83
    .restart local v1       #badIds:[Ljava/lang/String;
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized intializeDisplayMetrics(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/high16 v8, 0x3f80

    .line 104
    const-class v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;

    monitor-enter v4

    :try_start_0
    sget-boolean v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    if-nez v5, :cond_0

    .line 105
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    const-class v5, Landroid/content/res/Resources;

    const-string v6, "getCompatibilityInfo"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 111
    .local v3, gciMethod:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, compatInfo:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "applicationScale"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sput v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .end local v0           #compatInfo:Ljava/lang/Object;
    .end local v3           #gciMethod:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    sget v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    .line 118
    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 125
    :goto_1
    const/4 v5, 0x1

    sput-boolean v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    :cond_0
    monitor-exit v4

    return-void

    .line 113
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 114
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "TiPlatformHelper"

    const-string v6, "Unable to get application scale factor, using reported density and it\'s factor"

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 104
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 119
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_4
    sget v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    .line 120
    const/16 v5, 0xa0

    sput v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    goto :goto_1

    .line 122
    :cond_2
    const/16 v5, 0x78

    sput v5, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 432
    packed-switch p0, :pswitch_data_0

    .line 438
    :pswitch_0
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 434
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 435
    :pswitch_2
    const-string v0, "WIFI"

    goto :goto_0

    .line 436
    :pswitch_3
    const-string v0, "MOBILE"

    goto :goto_0

    .line 437
    :pswitch_4
    const-string v0, "LAN"

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
