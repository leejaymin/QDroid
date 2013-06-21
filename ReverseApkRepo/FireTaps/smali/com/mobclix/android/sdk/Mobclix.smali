.class public final Lcom/mobclix/android/sdk/Mobclix;
.super Ljava/lang/Object;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;,
        Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;,
        Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;,
        Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;,
        Lcom/mobclix/android/sdk/Mobclix$LogEvent;,
        Lcom/mobclix/android/sdk/Mobclix$SessionPolling;,
        Lcom/mobclix/android/sdk/Mobclix$Sync;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x8

.field public static final LOG_LEVEL_FATAL:I = 0x10

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_WARN:I = 0x4

.field private static final MC_AD_SIZES:[Ljava/lang/String; = null

.field private static MC_ANALYTICS_DIRECTORY:Ljava/lang/String; = null

.field static final MC_CUSTOM_AD_FILENAME:Ljava/lang/String; = "_mc_cached_custom_ad.png"

.field static final MC_CUSTOM_AD_PREF:Ljava/lang/String; = "CustomAdUrl"

.field private static MC_DIRECTORY:Ljava/lang/String; = null

.field private static final MC_KEY_APPLICATION_ID:Ljava/lang/String; = "a"

.field private static final MC_KEY_APPLICATION_VERSION:Ljava/lang/String; = "v"

.field private static final MC_KEY_CONNECTION_TYPE:Ljava/lang/String; = "g"

.field private static final MC_KEY_DEVICE_HARDWARE_MODEL:Ljava/lang/String; = "hwdm"

.field private static final MC_KEY_DEVICE_ID:Ljava/lang/String; = "d"

.field private static final MC_KEY_DEVICE_MODEL:Ljava/lang/String; = "dm"

.field private static final MC_KEY_DEVICE_SYSTEM_VERSION:Ljava/lang/String; = "dv"

.field private static final MC_KEY_EVENT_DESCRIPTION:Ljava/lang/String; = "ed"

.field private static final MC_KEY_EVENT_LOG_LEVEL:Ljava/lang/String; = "el"

.field private static final MC_KEY_EVENT_NAME:Ljava/lang/String; = "en"

.field private static final MC_KEY_EVENT_PROCESS_NAME:Ljava/lang/String; = "ep"

.field private static final MC_KEY_EVENT_STOP:Ljava/lang/String; = "es"

.field private static final MC_KEY_EVENT_THREAD_ID:Ljava/lang/String; = "et"

.field private static final MC_KEY_LATITUDE_LONGITUDE:Ljava/lang/String; = "ll"

.field private static final MC_KEY_MOBCLIX_LIBRARY_VERSION:Ljava/lang/String; = "m"

.field private static final MC_KEY_PLATFORM_ID:Ljava/lang/String; = "p"

.field private static final MC_KEY_SESSION_ID:Ljava/lang/String; = "id"

.field private static final MC_KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static final MC_KEY_USER_LANGUAGE_PREFERENCE:Ljava/lang/String; = "lg"

.field private static final MC_KEY_USER_LOCALE_PREFERENCE:Ljava/lang/String; = "lo"

.field private static final MC_LIBRARY_VERSION:Ljava/lang/String; = "2.1.0"

.field private static MC_MAX_ANALYTICS_FILES:I = 0x0

.field private static MC_MAX_EVENTS_PER_FILE:I = 0x0

.field private static final MC_TAG:Ljava/lang/String; = "mobclix-controller"

.field static final PREFS_CONFIG:Ljava/lang/String; = ".MCConfig"

.field private static SYNC_ERROR:I

.field private static SYNC_READY:I

.field private static SYNC_RUNNING:I

.field private static final controller:Lcom/mobclix/android/sdk/Mobclix;

.field private static currentFile:Ljava/io/File;

.field private static fileCreated:Z

.field private static isInitialized:Z

.field private static loggingEvent:Z

.field private static numLinesWritten:I

.field private static syncContents:Ljava/lang/String;

.field private static syncStatus:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private adServer:Ljava/lang/String;

.field private analyticsServer:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private androidVersion:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private autoplay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private configServer:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private customAdSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private customAdUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceHardwareModel:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private enabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private feedbackServer:Ljava/lang/String;

.field private haveLocationPermission:Z

.field private haveNetworkStatePermission:Z

.field private idleTimeout:I

.field private isInSession:Z

.field private isNewUser:Z

.field private isOfflineSession:Z

.field private isTopTask:Z

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private location:Lcom/mobclix/android/sdk/MobclixLocation;

.field private locationCriteria:Landroid/location/Criteria;

.field private locationHandler:Landroid/os/Handler;

.field private logLevel:I

.field private longitude:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private pollTime:I

.field private previousDeviceId:Ljava/lang/String;

.field private refreshTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private remoteConfigSet:I

.field private session:Lorg/json/JSONObject;

.field private sessionEndTime:J

.field private sessionPollingTimer:Ljava/util/Timer;

.field private sessionStartTime:J

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private totalIdleTime:J

.field private userAgent:Ljava/lang/String;

.field private vcServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "320x50"

    aput-object v1, v0, v2

    const-string v1, "300x250"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    .line 109
    const-string v0, "mobclix"

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    .line 110
    const-string v0, "analytics"

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    .line 111
    const/16 v0, 0x64

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_ANALYTICS_FILES:I

    .line 112
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_EVENTS_PER_FILE:I

    .line 137
    sput-object v4, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    .line 138
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    .line 139
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    .line 140
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    .line 142
    sput-object v4, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    .line 143
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    .line 144
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    .line 145
    sput v3, Lcom/mobclix/android/sdk/Mobclix;->SYNC_RUNNING:I

    .line 146
    const/4 v0, -0x1

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_ERROR:I

    .line 406
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/Mobclix;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 407
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "null"

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    .line 127
    const-string v0, "http://ads.mobclix.com/"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 128
    const-string v0, "http://data.mobclix.com/post/config"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 129
    const-string v0, "http://data.mobclix.com/post/sendData"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 130
    const-string v0, "http://vc.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 131
    const-string v0, "http://data.mobclix.com/post/feedback"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 132
    const/16 v0, 0x7530

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 133
    const v0, 0x1d4c0

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    .line 134
    iput v2, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 148
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    .line 149
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 150
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 151
    iput-wide v3, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 152
    iput-wide v3, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 153
    iput-wide v3, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 155
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    .line 162
    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    .line 165
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/MobclixLocation;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 168
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 169
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 170
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 171
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    .line 172
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    .line 173
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 177
    const-string v0, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 178
    const/16 v0, 0x10

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 181
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 183
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    .line 184
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    .line 412
    return-void
.end method

.method private OpenAnalyticsFile()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "m"

    const-string v5, "/"

    const-string v5, "UTF-8"

    .line 623
    sput v10, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    .line 624
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 627
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ll"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 628
    const-string v8, "g"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 629
    const-string v8, "id"

    aput-object v8, v6, v7

    .line 627
    invoke-direct {v3, v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 630
    .local v3, header:Lorg/json/JSONObject;
    const-string v5, "a"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v5, "p"

    const-string v6, "android"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v5, "m"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v5, "v"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    const-string v5, "d"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    const-string v5, "dm"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    const-string v5, "dv"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    const-string v5, "hwdm"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v5, "m"

    const-string v6, "2.1.0"

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v5, "lg"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    const-string v5, "lo"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 642
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    sget-object v6, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 643
    .local v4, mcDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mobclix/android/sdk/Mobclix;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, anDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    sget v6, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_ANALYTICS_FILES:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v6, :cond_0

    move v5, v9

    .line 662
    .end local v0           #anDir:Ljava/io/File;
    .end local v3           #header:Lorg/json/JSONObject;
    .end local v4           #mcDir:Ljava/io/File;
    :goto_0
    return v5

    .line 649
    .restart local v0       #anDir:Ljava/io/File;
    .restart local v3       #header:Lorg/json/JSONObject;
    .restart local v4       #mcDir:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 650
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    .line 651
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 653
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 655
    .local v2, fos:Ljava/io/FileOutputStream;
    const-string v5, "[{\"hb\":"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 656
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 657
    const-string v5, ",\"ev\":["

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 658
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 661
    sput-boolean v10, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    move v5, v10

    .line 662
    goto :goto_0

    .line 659
    .end local v0           #anDir:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #header:Lorg/json/JSONObject;
    .end local v4           #mcDir:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    move v5, v9

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    return v0
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_EVENTS_PER_FILE:I

    return v0
.end method

.method static synthetic access$11(Z)V
    .locals 0
    .parameter

    .prologue
    .line 138
    sput-boolean p0, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    return-void
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_RUNNING:I

    return v0
.end method

.method static synthetic access$13(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    sput p0, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    return-void
.end method

.method static synthetic access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    sput-object p0, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    return v0
.end method

.method static synthetic access$20()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_ERROR:I

    return v0
.end method

.method static synthetic access$22(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-void
.end method

.method static synthetic access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    return-void
.end method

.method static synthetic access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0
    .parameter

    .prologue
    .line 139
    sput-boolean p0, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    return-void
.end method

.method static synthetic access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    return-void
.end method

.method static synthetic access$36(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    return-void
.end method

.method static synthetic access$37(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    return-void
.end method

.method static synthetic access$38()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    return v0
.end method

.method static synthetic access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$44(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v0
.end method

.method static synthetic access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return-void
.end method

.method static synthetic access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->OpenAnalyticsFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$51(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    return v0
.end method

.method static synthetic access$52(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    return v0
.end method

.method static synthetic access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$54(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$55(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$56(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    return-void
.end method

.method static synthetic access$59(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static synthetic access$60(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$61(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$63(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    return v0
.end method

.method static synthetic access$64(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$65(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$66(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V

    return-void
.end method

.method static synthetic access$7()Ljava/io/File;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    return v0
.end method

.method static synthetic access$9(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    sput p0, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    return-void
.end method

.method static addPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "k"
    .parameter "v"

    .prologue
    .line 287
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static addPref(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 296
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .end local p0           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 298
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #spe:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 299
    .local v1, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v1           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #spe:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static clearPref()V
    .locals 2

    .prologue
    .line 315
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createNewSession()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 783
    .local v2, ts:J
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, sessionId:Ljava/lang/String;
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 786
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 787
    iput-wide v7, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 788
    iput-wide v7, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 789
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 792
    :try_start_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v5, "id"

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 796
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 797
    .local v0, remoteConfigThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 798
    return-void

    .line 793
    .end local v0           #remoteConfigThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private endSession()V
    .locals 8

    .prologue
    const-string v4, "totalSessionTime"

    const-string v4, "totalIdleTime"

    const-string v4, "offlineSessions"

    .line 847
    :try_start_0
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-nez v4, :cond_0

    .line 885
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    iget-wide v6, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    sub-long v2, v4, v6

    .line 851
    .local v2, sessionTime:J
    const-string v4, "totalSessionTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 853
    :try_start_1
    const-string v4, "totalSessionTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v4

    add-long/2addr v2, v4

    .line 857
    :cond_1
    :goto_1
    :try_start_2
    const-string v4, "totalIdleTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 859
    :try_start_3
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    const-string v6, "totalIdleTime"

    invoke-static {v6}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 863
    :cond_2
    :goto_2
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 864
    .local v1, sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "totalSessionTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v4, "totalIdleTime"

    iget-wide v5, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    if-eqz v4, :cond_4

    .line 868
    const/4 v0, 0x1

    .line 869
    .local v0, offlineSessions:I
    const-string v4, "offlineSessions"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 871
    :try_start_5
    const-string v4, "offlineSessions"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    add-int/2addr v0, v4

    .line 874
    :cond_3
    :goto_3
    :try_start_6
    const-string v4, "offlineSessions"

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .end local v0           #offlineSessions:I
    :cond_4
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 879
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 880
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 881
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 882
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 883
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 884
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #sessionTime:J
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 872
    .restart local v0       #offlineSessions:I
    .restart local v1       #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #sessionTime:J
    :catch_1
    move-exception v4

    goto :goto_3

    .line 860
    .end local v0           #offlineSessions:I
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v4

    goto :goto_2

    .line 854
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method static getAllPref()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 270
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1227
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1228
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1229
    .end local v0           #cookieManager:Landroid/webkit/CookieManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getInstance()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static getPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "k"

    .prologue
    const-string v3, ""

    .line 275
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    move-object v1, v3

    goto :goto_0
.end method

.method private declared-synchronized handleSessionStatus(Z)V
    .locals 6
    .parameter "topTask"

    .prologue
    .line 820
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 821
    .local v0, ts:J
    if-eqz p1, :cond_3

    .line 822
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 843
    .end local v0           #ts:J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 825
    .restart local v0       #ts:J
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-nez v2, :cond_2

    .line 826
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->createNewSession()V

    goto :goto_0

    .line 842
    .end local v0           #ts:J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 828
    .restart local v0       #ts:J
    :cond_2
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 829
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 820
    .end local v0           #ts:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 832
    .restart local v0       #ts:J
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    if-nez v2, :cond_4

    .line 833
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-eqz v2, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    goto :goto_0

    .line 837
    :cond_4
    iput-wide v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 838
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static hasPref(Ljava/lang/String;)Z
    .locals 2
    .parameter "k"

    .prologue
    .line 281
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialize(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 9
    .parameter "a"
    .parameter "applicationId"
    .parameter "logLevelSetting"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, ""

    const-string v3, "null"

    .line 419
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    .line 420
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 421
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 423
    const/4 v7, 0x0

    .line 425
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 431
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    :cond_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 436
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 437
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 439
    :cond_5
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 441
    :cond_7
    iput p3, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 443
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    .line 444
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 445
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 446
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 447
    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    .line 448
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    .line 449
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 453
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/Mobclix$2;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".MCConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 462
    iget v1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    iget v2, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 463
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;

    invoke-direct {v2, p0, v6}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$SessionPolling;)V

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    int-to-long v5, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 464
    return-void

    .line 426
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static final logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "eventLogLevel"
    .parameter "processName"
    .parameter "eventName"
    .parameter "description"
    .parameter "stopProcess"

    .prologue
    const-string v3, "UTF-8"

    const-string v5, "Mobclix"

    .line 542
    sget-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v3, :cond_1

    .line 543
    const-string v3, "mobclix-controller"

    const-string v4, "logEvent failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget v3, v3, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    if-lt p0, v3, :cond_0

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, logString:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 564
    :goto_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ts"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 565
    const-string v6, "ll"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 566
    const-string v6, "g"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 567
    const-string v6, "id"

    aput-object v6, v4, v5

    .line 564
    invoke-direct {v0, v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 568
    .local v0, event:Lorg/json/JSONObject;
    const-string v3, "el"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v3, "ep"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v3, "en"

    const-string v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v3, "ed"

    const-string v4, "UTF-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v3, "et"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v3, "es"

    if-eqz p4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$LogEvent;

    sget-object v4, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0}, Lcom/mobclix/android/sdk/Mobclix$LogEvent;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lorg/json/JSONObject;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 576
    .local v1, logEventThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 577
    .end local v0           #event:Lorg/json/JSONObject;
    .end local v1           #logEventThread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 555
    :sswitch_0
    const-string v3, "Mobclix"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 556
    :sswitch_1
    const-string v3, "Mobclix"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    :sswitch_2
    const-string v3, "Mobclix"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 558
    :sswitch_3
    const-string v3, "Mobclix"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 559
    :sswitch_4
    const-string v3, "Mobclix"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 573
    .restart local v0       #event:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static final declared-synchronized onCreate(Landroid/app/Activity;)V
    .locals 9
    .parameter "a"

    .prologue
    const-string v6, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    .line 476
    const-class v6, Lcom/mobclix/android/sdk/Mobclix;

    monitor-enter v6

    if-eqz p0, :cond_0

    .line 477
    :try_start_0
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iput-object p0, v7, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 479
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v7, :cond_3

    .line 481
    const-string v5, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    .local v5, packageName:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 486
    :goto_1
    const/4 v1, 0x0

    .line 488
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 495
    :goto_2
    :try_start_4
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.APPLICATION_ID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 499
    .local v0, applicationId:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 500
    :try_start_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 476
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 489
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 490
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v7, "mobclix-controller"

    const-string v8, "Application Key Started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 496
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 497
    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 504
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v0       #applicationId:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 506
    .local v4, logLevelString:Ljava/lang/String;
    :try_start_7
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.LOG_LEVEL"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v4

    .line 508
    :goto_3
    const/16 v3, 0x10

    .line 509
    .local v3, logLevelSetting:I
    if-eqz v4, :cond_2

    .line 510
    :try_start_8
    const-string v7, "debug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 511
    const/4 v3, 0x1

    .line 524
    :cond_2
    :goto_4
    :try_start_9
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v7, p0, v0, v3}, Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 525
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 527
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 532
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #logLevelSetting:I
    .end local v4           #logLevelString:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_3
    :goto_5
    :try_start_a
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 534
    monitor-exit v6

    return-void

    .line 512
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #logLevelSetting:I
    .restart local v4       #logLevelString:Ljava/lang/String;
    .restart local v5       #packageName:Ljava/lang/String;
    :cond_4
    :try_start_b
    const-string v7, "info"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 513
    const/4 v3, 0x2

    goto :goto_4

    .line 514
    :cond_5
    const-string v7, "warn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 515
    const/4 v3, 0x4

    goto :goto_4

    .line 516
    :cond_6
    const-string v7, "error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 517
    const/16 v3, 0x8

    goto :goto_4

    .line 518
    :cond_7
    const-string v7, "fatal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 519
    const/16 v3, 0x10

    goto :goto_4

    .line 485
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #logLevelSetting:I
    .end local v4           #logLevelString:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_1

    .line 528
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #logLevelSetting:I
    .restart local v4       #logLevelString:Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 507
    .end local v3           #logLevelSetting:I
    :catch_4
    move-exception v7

    goto :goto_3

    .line 478
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #logLevelString:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    :catch_5
    move-exception v7

    goto/16 :goto_0
.end method

.method public static final declared-synchronized onStop(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 537
    const-class v0, Lcom/mobclix/android/sdk/Mobclix;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit v0

    return-void

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static removePref(Ljava/lang/String;)V
    .locals 2
    .parameter "k"

    .prologue
    .line 307
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    .line 325
    const/16 v5, 0x28

    new-array v4, v5, [B

    .line 329
    .local v4, shaHash:[B
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 333
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 334
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 335
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v1, hexString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 330
    .end local v1           #hexString:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 331
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 337
    .end local v0           #ex:Ljava/security/NoSuchAlgorithmException;
    .restart local v1       #hexString:Ljava/lang/StringBuffer;
    .restart local v2       #i:I
    .restart local v3       #md:Ljava/security/MessageDigest;
    :cond_0
    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final sync()V
    .locals 4

    .prologue
    .line 667
    sget-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v1, :cond_1

    .line 668
    const-string v1, "mobclix-controller"

    const-string v2, "sync failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    sget v1, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    sget v2, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    if-ne v1, v2, :cond_0

    .line 673
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$Sync;

    sget-object v2, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$Sync;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$Sync;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 674
    .local v0, syncThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    .locals 9
    .parameter "cs"
    .parameter "url"

    .prologue
    .line 1234
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1235
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    invoke-interface {p0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 1236
    .local v4, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1237
    .local v3, cookieStringBuffer:Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1238
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 1255
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1258
    .end local v1           #cookieManager:Landroid/webkit/CookieManager;
    .end local v3           #cookieStringBuffer:Ljava/lang/StringBuffer;
    .end local v4           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v6           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1239
    .restart local v1       #cookieManager:Landroid/webkit/CookieManager;
    .restart local v3       #cookieStringBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v6       #i:I
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 1240
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1242
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1243
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "E, dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v5, f:Ljava/text/SimpleDateFormat;
    const-string v7, "; expires="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " GMT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1246
    .end local v5           #f:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1247
    const-string v7, "; path="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1248
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1249
    const-string v7, "; domain="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1251
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, cookieString:Ljava/lang/String;
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1257
    .end local v0           #c:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookieManager:Landroid/webkit/CookieManager;
    .end local v2           #cookieString:Ljava/lang/String;
    .end local v3           #cookieStringBuffer:Ljava/lang/StringBuffer;
    .end local v4           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v6           #i:I
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private updateConnectivity()V
    .locals 8

    .prologue
    const-string v7, "null"

    .line 376
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 377
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const-string v3, "u"

    .line 379
    .local v3, network_type:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    if-eqz v5, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 381
    .local v2, network_info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 385
    .end local v2           #network_info:Landroid/net/NetworkInfo;
    :cond_0
    const-string v5, "WI_FI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "WIFI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 386
    :cond_1
    const-string v5, "wifi"

    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 397
    :goto_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 398
    const-string v5, "null"

    iput-object v7, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 400
    :cond_2
    return-void

    .line 387
    :cond_3
    const-string v5, "MOBILE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 389
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 390
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 391
    .local v0, NetworkType:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0

    .line 395
    .end local v0           #NetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v5, "null"

    iput-object v7, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateLocation()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$1;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/Mobclix$1;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixLocation;->getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z

    .line 373
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    .line 890
    return-void
.end method

.method getAdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method getAnalyticsServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    goto :goto_0
.end method

.method getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    goto :goto_0
.end method

.method getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method getConfigServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0
.end method

.method getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method getCustomAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method getDeviceHardwareModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    goto :goto_0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    goto :goto_0
.end method

.method getFeedbackServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method getGPS()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "null"

    .line 209
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const-string v0, "null"

    move-object v0, v2

    .line 211
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    goto :goto_0
.end method

.method getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    goto :goto_0
.end method

.method getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    goto :goto_0
.end method

.method getLogLevel()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    return v0
.end method

.method getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    goto :goto_0
.end method

.method getMobclixVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "2.1.0"

    return-object v0
.end method

.method getRefreshTime(Ljava/lang/String;)J
    .locals 3
    .parameter "size"

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "UserAgent"

    .line 236
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "UserAgent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "UserAgent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method getVcServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method isEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isRemoteConfigSet()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v0
.end method

.method isTopTask()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    return v0
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->activity:Landroid/app/Activity;

    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 243
    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method shouldAutoplay(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateSession()V
    .locals 5

    .prologue
    const-string v1, "ll"

    .line 347
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateConnectivity()V

    .line 349
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, loc:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ll"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "g"

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    .end local v0           #loc:Ljava/lang/String;
    :goto_1
    return-void

    .line 358
    .restart local v0       #loc:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v0           #loc:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
