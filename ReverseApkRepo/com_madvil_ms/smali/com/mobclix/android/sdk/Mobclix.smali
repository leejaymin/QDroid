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
        Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;,
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

.field private static final MC_LIBRARY_VERSION:Ljava/lang/String; = "2.1.3b01"

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

.field private context:Landroid/content/Context;

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

.field location:Lcom/mobclix/android/sdk/MobclixLocation;

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

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "320x50"

    aput-object v1, v0, v2

    const-string v1, "300x250"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    .line 111
    const-string v0, "mobclix"

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    .line 112
    const-string v0, "analytics"

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    .line 113
    const/16 v0, 0x64

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_ANALYTICS_FILES:I

    .line 114
    const/4 v0, 0x5

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_EVENTS_PER_FILE:I

    .line 139
    sput-object v4, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    .line 140
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    .line 141
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    .line 142
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    .line 144
    sput-object v4, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    .line 145
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    .line 146
    sput v2, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    .line 147
    sput v3, Lcom/mobclix/android/sdk/Mobclix;->SYNC_RUNNING:I

    .line 148
    const/4 v0, -0x1

    sput v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_ERROR:I

    .line 414
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/Mobclix;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 415
    sput-boolean v2, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    .line 67
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    .line 129
    const-string v0, "http://ads.mobclix.com/"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 130
    const-string v0, "http://data.mobclix.com/post/config"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 131
    const-string v0, "http://data.mobclix.com/post/sendData"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 132
    const-string v0, "http://vc.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 133
    const-string v0, "http://data.mobclix.com/post/feedback"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 134
    const/16 v0, 0x7530

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 135
    const v0, 0x1d4c0

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    .line 136
    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 150
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    .line 151
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 152
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 153
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 154
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 155
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 157
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    .line 164
    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    .line 167
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/MobclixLocation;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    .line 170
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 171
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 172
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 173
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    .line 174
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    .line 175
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 179
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 180
    const/16 v0, 0x10

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 183
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 185
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    .line 186
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    .line 420
    return-void
.end method

.method private OpenAnalyticsFile()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 639
    sput v10, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    .line 640
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 643
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

    .line 644
    const-string v8, "g"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 645
    const-string v8, "id"

    aput-object v8, v6, v7

    .line 643
    invoke-direct {v3, v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 646
    .local v3, header:Lorg/json/JSONObject;
    const-string v5, "a"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    const-string v5, "p"

    const-string v6, "android"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v5, "m"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v5, "v"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    const-string v5, "d"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string v5, "dm"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string v5, "dv"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getAndroidVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string v5, "hwdm"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceHardwareModel()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v5, "m"

    const-string v6, "2.1.3b01"

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v5, "lg"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v5, "lo"

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLocale()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v5, v5, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    sget-object v6, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 659
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

    .line 660
    .local v0, anDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 663
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    sget v6, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_ANALYTICS_FILES:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v6, :cond_0

    move v5, v9

    .line 678
    .end local v0           #anDir:Ljava/io/File;
    .end local v3           #header:Lorg/json/JSONObject;
    .end local v4           #mcDir:Ljava/io/File;
    :goto_0
    return v5

    .line 665
    .restart local v0       #anDir:Ljava/io/File;
    .restart local v3       #header:Lorg/json/JSONObject;
    .restart local v4       #mcDir:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 666
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

    .line 667
    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 669
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 671
    .local v2, fos:Ljava/io/FileOutputStream;
    const-string v5, "[{\"hb\":"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 672
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 673
    const-string v5, ",\"ev\":["

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 674
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 677
    sput-boolean v10, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    move v5, v10

    .line 678
    goto :goto_0

    .line 675
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
    .line 141
    sget-boolean v0, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    return v0
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->MC_MAX_EVENTS_PER_FILE:I

    return v0
.end method

.method static synthetic access$11(Z)V
    .locals 0
    .parameter

    .prologue
    .line 140
    sput-boolean p0, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    return-void
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_RUNNING:I

    return v0
.end method

.method static synthetic access$13(I)V
    .locals 0
    .parameter

    .prologue
    .line 145
    sput p0, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    return-void
.end method

.method static synthetic access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    sput-object p0, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    return v0
.end method

.method static synthetic access$20()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->syncContents:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->SYNC_ERROR:I

    return v0
.end method

.method static synthetic access$22(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-void
.end method

.method static synthetic access$25(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic access$26(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    return-void
.end method

.method static synthetic access$27(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0
    .parameter

    .prologue
    .line 141
    sput-boolean p0, Lcom/mobclix/android/sdk/Mobclix;->loggingEvent:Z

    return-void
.end method

.method static synthetic access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    return-void
.end method

.method static synthetic access$36(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    return-void
.end method

.method static synthetic access$37(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    return-void
.end method

.method static synthetic access$38()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/mobclix/android/sdk/Mobclix;->fileCreated:Z

    return v0
.end method

.method static synthetic access$40(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$41(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->autoplay:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$42(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$43(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->customAdUrl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$44(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v0
.end method

.method static synthetic access$45(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return-void
.end method

.method static synthetic access$46(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$47(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$49(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->OpenAnalyticsFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$50(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$51(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    return v0
.end method

.method static synthetic access$52(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    return v0
.end method

.method static synthetic access$53(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$54(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$55(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$56(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->previousDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$58(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    return-void
.end method

.method static synthetic access$59(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static synthetic access$60(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$61(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$63(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isNewUser:Z

    return v0
.end method

.method static synthetic access$64(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$65(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$66(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V

    return-void
.end method

.method static synthetic access$7()Ljava/io/File;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->currentFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    return v0
.end method

.method static synthetic access$9(I)V
    .locals 0
    .parameter

    .prologue
    .line 142
    sput p0, Lcom/mobclix/android/sdk/Mobclix;->numLinesWritten:I

    return-void
.end method

.method static addPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "k"
    .parameter "v"

    .prologue
    .line 290
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 293
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
    .line 299
    .local p0, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v3, v3, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 300
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    .end local p0           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 302
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v2       #spe:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 303
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

    .line 306
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
    .line 319
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createNewSession()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 798
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 799
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

    .line 801
    .local v1, sessionId:Ljava/lang/String;
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 802
    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 803
    iput-wide v7, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 804
    iput-wide v7, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 805
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 808
    :try_start_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v5, "id"

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 812
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 813
    .local v0, remoteConfigThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 814
    return-void

    .line 809
    .end local v0           #remoteConfigThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private endSession()V
    .locals 8

    .prologue
    .line 865
    :try_start_0
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-nez v4, :cond_0

    .line 903
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    iget-wide v6, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    sub-long v2, v4, v6

    .line 869
    .local v2, sessionTime:J
    const-string v4, "totalSessionTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 871
    :try_start_1
    const-string v4, "totalSessionTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v4

    add-long/2addr v2, v4

    .line 875
    :cond_1
    :goto_1
    :try_start_2
    const-string v4, "totalIdleTime"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 877
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

    .line 881
    :cond_2
    :goto_2
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 882
    .local v1, sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "totalSessionTime"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v4, "totalIdleTime"

    iget-wide v5, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isOfflineSession:Z

    if-eqz v4, :cond_4

    .line 886
    const/4 v0, 0x1

    .line 887
    .local v0, offlineSessions:I
    const-string v4, "offlineSessions"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 889
    :try_start_5
    const-string v4, "offlineSessions"

    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    add-int/2addr v0, v4

    .line 892
    :cond_3
    :goto_3
    :try_start_6
    const-string v4, "offlineSessions"

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v0           #offlineSessions:I
    :cond_4
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/util/Map;)V

    .line 897
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    .line 898
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 899
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionStartTime:J

    .line 900
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 901
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 902
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #sessionTime:J
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 890
    .restart local v0       #offlineSessions:I
    .restart local v1       #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #sessionTime:J
    :catch_1
    move-exception v4

    goto :goto_3

    .line 878
    .end local v0           #offlineSessions:I
    .end local v1           #sessionStats:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v4

    goto :goto_2

    .line 872
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
    .line 272
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 273
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
    .line 1253
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1254
    .local v0, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1255
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
    .line 484
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static getPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "k"

    .prologue
    .line 278
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized handleSessionStatus(Z)V
    .locals 6
    .parameter "topTask"

    .prologue
    .line 836
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 837
    .local v0, ts:J
    if-eqz p1, :cond_3

    .line 839
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 861
    .end local v0           #ts:J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 842
    .restart local v0       #ts:J
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-nez v2, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->createNewSession()V

    goto :goto_0

    .line 860
    .end local v0           #ts:J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 845
    .restart local v0       #ts:J
    :cond_2
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    iget-wide v4, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->totalIdleTime:J

    .line 846
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 836
    .end local v0           #ts:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 850
    .restart local v0       #ts:J
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    if-nez v2, :cond_4

    .line 851
    iget-wide v2, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isInSession:Z

    if-eqz v2, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    goto :goto_0

    .line 855
    :cond_4
    iput-wide v0, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionEndTime:J

    .line 856
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    .line 857
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixLocation;->stopLocation()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method static hasPref(Ljava/lang/String;)Z
    .locals 2
    .parameter "k"

    .prologue
    .line 284
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 285
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
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 427
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    .line 428
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    :cond_0
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 431
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    :cond_2
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 435
    :cond_3
    const/4 v7, 0x0

    .line 437
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 442
    :cond_4
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    .line 444
    :cond_5
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 446
    :cond_6
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidId:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 448
    :cond_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 450
    :cond_8
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceModel:Ljava/lang/String;

    .line 452
    :cond_9
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 454
    :cond_a
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceHardwareModel:Ljava/lang/String;

    .line 457
    :cond_b
    iput p3, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 459
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    .line 460
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 461
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 462
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 463
    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    .line 464
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    .line 465
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 467
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 469
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$2;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/Mobclix$2;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    .line 476
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

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 478
    iget v1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    iget v2, p0, Lcom/mobclix/android/sdk/Mobclix;->idleTimeout:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    .line 479
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->sessionPollingTimer:Ljava/util/Timer;

    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;

    invoke-direct {v2, p0, v4}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$SessionPolling;)V

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/mobclix/android/sdk/Mobclix;->pollTime:I

    int-to-long v5, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 480
    return-void

    .line 438
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
    .line 558
    sget-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v3, :cond_1

    .line 559
    const-string v3, "mobclix-controller"

    const-string v4, "logEvent failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget v3, v3, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    if-lt p0, v3, :cond_0

    .line 568
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

    .line 570
    .local v2, logString:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 580
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

    .line 581
    const-string v6, "ll"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 582
    const-string v6, "g"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 583
    const-string v6, "id"

    aput-object v6, v4, v5

    .line 580
    invoke-direct {v0, v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 584
    .local v0, event:Lorg/json/JSONObject;
    const-string v3, "el"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v3, "ep"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v3, "en"

    const-string v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string v3, "ed"

    const-string v4, "UTF-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    const-string v3, "et"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    const-string v3, "es"

    if-eqz p4, :cond_2

    const-string v4, "1"

    :goto_2
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$LogEvent;

    sget-object v4, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0}, Lcom/mobclix/android/sdk/Mobclix$LogEvent;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lorg/json/JSONObject;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 592
    .local v1, logEventThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 593
    .end local v0           #event:Lorg/json/JSONObject;
    .end local v1           #logEventThread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 571
    :sswitch_0
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 572
    :sswitch_1
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 573
    :sswitch_2
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 574
    :sswitch_3
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 575
    :sswitch_4
    const-string v3, "Mobclix"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 589
    .restart local v0       #event:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 570
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
    .line 492
    const-class v6, Lcom/mobclix/android/sdk/Mobclix;

    monitor-enter v6

    if-eqz p0, :cond_0

    .line 493
    :try_start_0
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 495
    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v7, :cond_3

    .line 497
    const-string v5, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    .local v5, packageName:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 502
    :goto_1
    const/4 v1, 0x0

    .line 504
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

    .line 511
    :goto_2
    :try_start_4
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.APPLICATION_ID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 515
    .local v0, applicationId:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 516
    :try_start_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 492
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 505
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 506
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v7, "mobclix-controller"

    const-string v8, "Application Key Started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 512
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 513
    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 520
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v0       #applicationId:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 522
    .local v4, logLevelString:Ljava/lang/String;
    :try_start_7
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.LOG_LEVEL"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v4

    .line 524
    :goto_3
    const/16 v3, 0x10

    .line 525
    .local v3, logLevelSetting:I
    if-eqz v4, :cond_2

    .line 526
    :try_start_8
    const-string v7, "debug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    const/4 v3, 0x1

    .line 540
    :cond_2
    :goto_4
    :try_start_9
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v7, p0, v0, v3}, Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 541
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 543
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 548
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

    .line 550
    monitor-exit v6

    return-void

    .line 528
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

    .line 529
    const/4 v3, 0x2

    goto :goto_4

    .line 530
    :cond_5
    const-string v7, "warn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 531
    const/4 v3, 0x4

    goto :goto_4

    .line 532
    :cond_6
    const-string v7, "error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 533
    const/16 v3, 0x8

    goto :goto_4

    .line 534
    :cond_7
    const-string v7, "fatal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 535
    const/16 v3, 0x10

    goto :goto_4

    .line 501
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #logLevelSetting:I
    .end local v4           #logLevelString:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto/16 :goto_1

    .line 544
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #logLevelSetting:I
    .restart local v4       #logLevelString:Ljava/lang/String;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 523
    .end local v3           #logLevelSetting:I
    :catch_4
    move-exception v7

    goto :goto_3

    .line 494
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
    .line 553
    const-class v0, Lcom/mobclix/android/sdk/Mobclix;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit v0

    return-void

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static removePref(Ljava/lang/String;)V
    .locals 2
    .parameter "k"

    .prologue
    .line 311
    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iget-object v1, v1, Lcom/mobclix/android/sdk/Mobclix;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 312
    .local v0, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0           #spe:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    .line 329
    const/16 v5, 0x28

    new-array v4, v5, [B

    .line 333
    .local v4, shaHash:[B
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 337
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 338
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 339
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .local v1, hexString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 334
    .end local v1           #hexString:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 335
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 341
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

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final sync()V
    .locals 4

    .prologue
    .line 683
    sget-boolean v1, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v1, :cond_1

    .line 684
    const-string v1, "mobclix-controller"

    const-string v2, "sync failed - You must initialize Mobclix by calling Mobclix.onCreate(this)."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    sget v1, Lcom/mobclix/android/sdk/Mobclix;->syncStatus:I

    sget v2, Lcom/mobclix/android/sdk/Mobclix;->SYNC_READY:I

    if-ne v1, v2, :cond_0

    .line 689
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$Sync;

    sget-object v2, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$Sync;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$Sync;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 690
    .local v0, syncThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    .locals 9
    .parameter "cs"
    .parameter "url"

    .prologue
    .line 1260
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1261
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    invoke-interface {p0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v4

    .line 1262
    .local v4, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1263
    .local v3, cookieStringBuffer:Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1264
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 1281
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1282
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1285
    .end local v1           #cookieManager:Landroid/webkit/CookieManager;
    .end local v3           #cookieStringBuffer:Ljava/lang/StringBuffer;
    .end local v4           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v6           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1265
    .restart local v1       #cookieManager:Landroid/webkit/CookieManager;
    .restart local v3       #cookieStringBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v6       #i:I
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 1266
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

    .line 1268
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1269
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "E, dd-MMM-yyyy HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1270
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

    .line 1272
    .end local v5           #f:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1273
    const-string v7, "; path="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1274
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1275
    const-string v7, "; domain="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1279
    .local v2, cookieString:Ljava/lang/String;
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1284
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
    .line 381
    :try_start_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 382
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const-string v4, "u"

    .line 384
    .local v4, network_type:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    if-eqz v6, :cond_0

    .line 385
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 386
    .local v3, network_info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 390
    .end local v3           #network_info:Landroid/net/NetworkInfo;
    :cond_0
    const-string v6, "WI_FI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "WIFI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 391
    :cond_1
    const-string v6, "wifi"

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 402
    :goto_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 403
    const-string v6, "null"

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 408
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #network_type:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 392
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v4       #network_type:Ljava/lang/String;
    :cond_3
    const-string v6, "MOBILE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 394
    iget-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 395
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 396
    .local v0, NetworkType:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    .end local v0           #NetworkType:I
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v4           #network_type:Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 406
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "null"

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_1

    .line 400
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v4       #network_type:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "null"

    iput-object v6, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateLocation()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->location:Lcom/mobclix/android/sdk/MobclixLocation;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$1;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/Mobclix$1;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixLocation;->getLocation(Landroid/content/Context;Lcom/mobclix/android/sdk/MobclixLocation$LocationResult;)Z

    .line 377
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->endSession()V

    .line 908
    return-void
.end method

.method getAdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method getAnalyticsServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
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
    .line 202
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
    .line 201
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
    .line 203
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
    .line 231
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-object v0
.end method

.method getCustomAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 229
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
    .line 207
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
    .line 204
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
    .line 206
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
    .line 234
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method getGPS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLatitude()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getLongitude()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    const-string v0, "null"

    .line 214
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
    .line 216
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
    .line 209
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
    .line 217
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
    .line 219
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    return v0
.end method

.method getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
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
    .line 218
    const-string v0, "2.1.3b01"

    return-object v0
.end method

.method getRefreshTime(Ljava/lang/String;)J
    .locals 3
    .parameter "size"

    .prologue
    .line 225
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
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "UserAgent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "UserAgent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method getVcServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method isEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 223
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
    .line 236
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v0
.end method

.method isTopTask()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isTopTask:Z

    return v0
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "u"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 246
    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method shouldAutoplay(Ljava/lang/String;)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 227
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
    .line 351
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateConnectivity()V

    .line 353
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 358
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->getGPS()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, loc:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ll"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "g"

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    .end local v0           #loc:Ljava/lang/String;
    :goto_1
    return-void

    .line 362
    .restart local v0       #loc:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Lorg/json/JSONObject;

    const-string v2, "ll"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v0           #loc:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
