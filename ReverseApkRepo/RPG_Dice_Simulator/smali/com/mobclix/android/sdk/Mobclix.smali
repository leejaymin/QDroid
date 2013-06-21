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
        Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;,
        Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;,
        Lcom/mobclix/android/sdk/Mobclix$SyncThread;
    }
.end annotation


# static fields
.field private static final DB_CREATE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS @ (id INTEGER PRIMARY KEY, message TEXT, session_id INTEGER);"

.field private static final DB_CREATE_VERSION:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS mobclix (key TEXT, value TEXT);"

.field private static final DB_DATABASE_NAME:Ljava/lang/String; = "mobclix"

.field private static final DB_DELETE_QUERY:Ljava/lang/String; = "DELETE FROM @ WHERE id <= ? AND id != ?"

.field private static final DB_INSERT_QUERY:Ljava/lang/String; = "INSERT INTO @ (message, session_id) VALUES (?, ?)"

.field private static final DB_INSERT_VERSION:Ljava/lang/String; = "INSERT INTO mobclix (key, value) VALUES (\'db_version\', ?)"

.field private static final DB_MESSAGE_LIMIT:I = 0x32

.field private static final DB_PURGE_QUERY:Ljava/lang/String; = "DELETE FROM @"

.field private static final DB_TABLE_PREFIX:Ljava/lang/String; = "mc"

.field private static final DB_TAG:Ljava/lang/String; = "mobclix-database"

.field private static final DB_UPDATE_QUERY:Ljava/lang/String; = "UPDATE @ SET session_id = ? WHERE id = ?"

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x8

.field public static final LOG_LEVEL_FATAL:I = 0x10

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_WARN:I = 0x4

.field private static final MAX_GPS_WAIT_TIME:I = 0x2710

.field private static final MC_AD_SIZES:[Ljava/lang/String; = null

.field private static final MC_APPLICATION_EVENT:Ljava/lang/String; = "MOBCLIX_APPLICATION_EVENT"

.field private static final MC_APPLICATION_PROCESS:Ljava/lang/String; = "MOBCLIX_APPLICATION_PROCESS"

.field private static final MC_KEY_APPLICATION_ID:Ljava/lang/String; = "j"

.field private static final MC_KEY_APP_ENVIRONMENT:Ljava/lang/String; = "h"

.field private static final MC_KEY_APP_VERSION_NUMBER:Ljava/lang/String; = "7"

.field private static final MC_KEY_CONNECTION_TYPE:Ljava/lang/String; = "g"

.field private static final MC_KEY_DATE_TIME:Ljava/lang/String; = "c"

.field private static final MC_KEY_DEVICE_ID:Ljava/lang/String; = "p"

.field private static final MC_KEY_DEVICE_LANGUAGES:Ljava/lang/String; = "aa"

.field private static final MC_KEY_DEVICE_LOCALE:Ljava/lang/String; = "ab"

.field private static final MC_KEY_DEVICE_TYPE:Ljava/lang/String; = "o"

.field private static final MC_KEY_LATITUDE:Ljava/lang/String; = "d"

.field private static final MC_KEY_LONGITUDE:Ljava/lang/String; = "e"

.field private static final MC_KEY_MOBCLIX_LIBRARY_VERSION:Ljava/lang/String; = "i"

.field private static final MC_KEY_SESSION:Ljava/lang/String; = "a"

.field private static final MC_KEY_SESSION_ID:Ljava/lang/String; = "b"

.field private static final MC_LIBRARY_VERSION:Ljava/lang/String; = "2.0.4"

.field private static final MC_TAG:Ljava/lang/String; = "mobclix-controller"

.field private static final MSG_ANALYTICS_SERVER:Ljava/lang/String; = "http://data.mobclix.com/post/sendData"

.field private static final MSG_TAG:Ljava/lang/String; = "mobclix-messenger"

.field static final PREFS_CONFIG:Ljava/lang/String; = ".MCConfig"

.field private static final controller:Lcom/mobclix/android/sdk/Mobclix;

.field private static isInitialized:Z

.field private static msgIsThreadRunning:Z

.field private static msgThread:Ljava/lang/Thread;


# instance fields
.field private adServer:Ljava/lang/String;

.field private analyticsServer:Ljava/lang/String;

.field private androidVersion:Ljava/lang/String;

.field private applicationEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private applicationId:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private configServer:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentLocation:Landroid/location/Location;

.field private database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

.field private deviceId:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

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

.field private isMobclixEnabled:Z

.field private isMobclixEnabledKnown:Z

.field private latitude:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private locationCriteria:Landroid/location/Criteria;

.field private locationHandler:Landroid/os/Handler;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private logLevel:I

.field private longitude:Ljava/lang/String;

.field private messenger:Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;

.field private numStarts:I

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

.field private session:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private shouldNotifyUser:Z

.field private userAgent:Ljava/lang/String;

.field private vcServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "300x50"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "300x250"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    .line 565
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/Mobclix;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    .line 566
    sput-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    .line 1036
    sput-boolean v3, Lcom/mobclix/android/sdk/Mobclix;->msgIsThreadRunning:Z

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "null"

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    .line 126
    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    .line 132
    const-string v0, "http://ads.mobclix.com/"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    .line 133
    const-string v0, "http://data.mobclix.com/post/config"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    .line 134
    const-string v0, "http://data.mobclix.com/post/sendData"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    .line 135
    const-string v0, "http://vc.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    .line 136
    const-string v0, "http://data.mobclix.com/post/feedback"

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 148
    iput-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    .line 150
    const-string v0, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 151
    const-string v0, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 157
    const/16 v0, 0x10

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 158
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->shouldNotifyUser:Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    .line 162
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    .line 163
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 571
    return-void
.end method

.method static synthetic access$0()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Criteria;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-void
.end method

.method static synthetic access$13(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Criteria;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    return-void
.end method

.method static synthetic access$15(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    return-void
.end method

.method static synthetic access$16(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    return v0
.end method

.method static synthetic access$17(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$18(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/Mobclix;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    return v0
.end method

.method static synthetic access$20()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->MC_AD_SIZES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/mobclix/android/sdk/Mobclix;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$23(Lcom/mobclix/android/sdk/Mobclix;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v0
.end method

.method static synthetic access$24(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 1036
    sget-boolean v0, Lcom/mobclix/android/sdk/Mobclix;->msgIsThreadRunning:Z

    return v0
.end method

.method static synthetic access$30(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/mobclix/android/sdk/Mobclix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return-void
.end method

.method static synthetic access$35(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$37(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$38(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$39(Lcom/mobclix/android/sdk/Mobclix;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    sput-object p0, Lcom/mobclix/android/sdk/Mobclix;->msgThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$40(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$41(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/LocationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$42(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationListener;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$43(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    return-void
.end method

.method static synthetic access$44(Lcom/mobclix/android/sdk/Mobclix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    return-void
.end method

.method static synthetic access$45(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V

    return-void
.end method

.method static synthetic access$5()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 1037
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->msgThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$6(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1036
    sput-boolean p0, Lcom/mobclix/android/sdk/Mobclix;->msgIsThreadRunning:Z

    return-void
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/Mobclix;)Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "k"
    .parameter "v"

    .prologue
    .line 265
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 266
    .local v0, c:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 267
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 268
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    return-void
.end method

.method static clearPref(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 281
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    .local v0, c:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 283
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 284
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return-void
.end method

.method private createJSONFromHashMap(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 296
    .local v0, json:Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    return-object v0

    .line 296
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 299
    .local v2, object:Ljava/lang/Object;
    :try_start_0
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 300
    check-cast v2, Ljava/util/HashMap;

    .end local v2           #object:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/mobclix/android/sdk/Mobclix;->createJSONFromHashMap(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 304
    :catch_0
    move-exception v4

    goto :goto_0

    .line 302
    .restart local v2       #object:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static getAllPref(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    sget-object v2, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, c:Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public static getInstance()Lcom/mobclix/android/sdk/Mobclix;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    return-object v0
.end method

.method static getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "k"

    .prologue
    .line 253
    sget-object v2, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    .local v0, c:Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static hasPref(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "s"
    .parameter "k"

    .prologue
    .line 259
    sget-object v2, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    .local v0, c:Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 261
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 7
    .parameter "context"
    .parameter "applicationId"
    .parameter "logLevelSetting"
    .parameter "notifyUserSetting"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v6, "::"

    const-string v4, "null"

    .line 578
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    .line 579
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    .line 580
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Emulator"

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    .line 583
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "::"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceType:Ljava/lang/String;

    .line 584
    iput p3, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    .line 586
    const-string v1, "null"

    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    .line 587
    const-string v1, "null"

    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    .line 588
    const-string v1, "null"

    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    .line 589
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    .line 590
    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    .line 591
    iput-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    .line 592
    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    .line 594
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$5;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/Mobclix$5;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    .line 601
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;

    invoke-direct {v1, p0, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 602
    .local v0, remoteConfigThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 615
    return-void
.end method

.method private notifyUser()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v8, "AnalyticsEnabled"

    const-string v7, ".MCConfig"

    .line 464
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 465
    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "app_name"

    const-string v4, "string"

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 467
    .local v0, appName:Ljava/lang/CharSequence;
    const-string v3, ".MCConfig"

    const-string v3, "AnalyticsEnabled"

    invoke-static {v7, v8}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    .line 468
    iget-boolean v3, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    if-eqz v3, :cond_2

    .line 469
    const-string v3, ".MCConfig"

    const-string v3, "AnalyticsEnabled"

    invoke-static {v7, v8}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, notifyUserResponse:Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    .line 509
    .end local v1           #notifyUserResponse:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v1       #notifyUserResponse:Ljava/lang/String;
    :cond_1
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    goto :goto_0

    .line 482
    .end local v1           #notifyUserResponse:Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 484
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 485
    const-string v4, "This application would like to gather anonymous usage statistics."

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 486
    const-string v4, "Don\'t Allow"

    new-instance v5, Lcom/mobclix/android/sdk/Mobclix$3;

    invoke-direct {v5, p0}, Lcom/mobclix/android/sdk/Mobclix$3;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 497
    const-string v4, "OK"

    new-instance v5, Lcom/mobclix/android/sdk/Mobclix$4;

    invoke-direct {v5, p0}, Lcom/mobclix/android/sdk/Mobclix$4;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 507
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static removePref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "k"

    .prologue
    .line 273
    sget-object v3, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/Mobclix;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, c:Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 275
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 276
    .local v2, spe:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    return-void
.end method

.method static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    .line 312
    const/16 v5, 0x28

    new-array v4, v5, [B

    .line 316
    .local v4, shaHash:[B
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 320
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 321
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 322
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v1, hexString:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 317
    .end local v1           #hexString:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 318
    .local v0, ex:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 324
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

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private startSession()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const-string v0, "UTF-8"

    .line 514
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->shouldNotifyUser:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->notifyUser()V

    .line 528
    :goto_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 529
    .local v7, time:Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, sessionId:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    const-string v1, "b"

    const-string v2, "UTF-8"

    invoke-static {v6, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "a"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "i"

    const-string v2, "2.0.4"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "j"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "7"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "o"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceType:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "p"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "aa"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    const-string v1, "ab"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_1
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->writeApplicationEnvironmentData()V

    .line 552
    const/16 v1, 0x20

    .line 553
    const-string v2, "MOBCLIX_APPLICATION_PROCESS"

    .line 554
    const-string v3, "MOBCLIX_APPLICATION_EVENT"

    .line 555
    const-string v4, "MOBCLIX_APPLICATION_PROCESS STARTED"

    .line 556
    const/4 v5, 0x0

    move-object v0, p0

    .line 552
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/Mobclix;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 558
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->sync()V

    .line 559
    return-void

    .line 517
    .end local v6           #sessionId:Ljava/lang/String;
    .end local v7           #time:Ljava/util/Date;
    :cond_0
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    .line 518
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    goto/16 :goto_0

    .line 542
    .restart local v6       #sessionId:Ljava/lang/String;
    .restart local v7       #time:Ljava/util/Date;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateConnectivity()V
    .locals 7

    .prologue
    .line 430
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 431
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const-string v3, "u"

    .line 432
    .local v3, network_type:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mobclix/android/sdk/Mobclix;->haveNetworkStatePermission:Z

    if-eqz v5, :cond_0

    .line 433
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 434
    .local v2, network_info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 438
    .end local v2           #network_info:Landroid/net/NetworkInfo;
    :cond_0
    const-string v5, "WI_FI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "WIFI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    :cond_1
    const-string v5, "wifi"

    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    .line 456
    :goto_0
    return-void

    .line 440
    :cond_2
    const-string v5, "MOBILE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 443
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 448
    .local v0, NetworkType:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0

    .line 451
    .end local v0           #NetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v5, "null"

    iput-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateLocation()V
    .locals 6

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->locationCriteria:Landroid/location/Criteria;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, provider:Ljava/lang/String;
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix$1;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/Mobclix$1;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    .line 405
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 406
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/mobclix/android/sdk/Mobclix$2;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/Mobclix$2;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    .line 415
    const-wide/16 v3, 0x2710

    .line 406
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v1           #provider:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeApplicationEnvironmentData()V
    .locals 3

    .prologue
    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v0, applicationEnvironmentData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "h"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationEnvironment:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/Mobclix;->createJSONFromHashMap(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->insertSession(Ljava/lang/String;)Z

    .line 367
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->messenger:Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;->stop()V

    .line 356
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    #getter for: Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->dbDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->access$0(Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 357
    return-void
.end method

.method getAdServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->adServer:Ljava/lang/String;

    return-object v0
.end method

.method getAnalyticsServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;

    return-object v0
.end method

.method getAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->androidVersion:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method getConfigServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->configServer:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method getFeedbackServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->feedbackServer:Ljava/lang/String;

    return-object v0
.end method

.method getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locale:Ljava/lang/String;

    return-object v0
.end method

.method getLogLevel()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->logLevel:I

    return v0
.end method

.method getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method getMobclixVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "2.0.4"

    return-object v0
.end method

.method getRefreshTime(Ljava/lang/String;)J
    .locals 2
    .parameter "size"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->refreshTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "UserAgent"

    const-string v2, ".MCConfig"

    .line 216
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, ".MCConfig"

    const-string v0, "UserAgent"

    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, ".MCConfig"

    const-string v0, "UserAgent"

    invoke-static {v2, v3}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method getVcServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->isRemoteConfigSet()I

    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->vcServer:Ljava/lang/String;

    return-object v0
.end method

.method isEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->enabled:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isMobclixEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    return v0
.end method

.method isRemoteConfigSet()I
    .locals 7

    .prologue
    const-string v6, "LastConfigTime"

    const-string v5, ".MCConfig"

    .line 203
    const-string v3, ".MCConfig"

    const-string v3, "LastConfigTime"

    invoke-static {v5, v6}, Lcom/mobclix/android/sdk/Mobclix;->hasPref(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 204
    const-string v3, ".MCConfig"

    const-string v3, "LastConfigTime"

    invoke-static {v5, v6}, Lcom/mobclix/android/sdk/Mobclix;->getPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    .local v0, lastConfig:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 207
    const/4 v3, 0x0

    iput v3, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    .line 208
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;-><init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$FetchRemoteConfig;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v2, remoteConfigThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 212
    .end local v0           #lastConfig:J
    .end local v2           #remoteConfigThread:Ljava/lang/Thread;
    :cond_0
    iget v3, p0, Lcom/mobclix/android/sdk/Mobclix;->remoteConfigSet:I

    return v3
.end method

.method public final logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "eventLogLevel"
    .parameter "processName"
    .parameter "eventName"
    .parameter "description"
    .parameter "stopProcess"

    .prologue
    .line 662
    return-void
.end method

.method public final declared-synchronized onCreate(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v7, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    .line 665
    monitor-enter p0

    :try_start_0
    sget-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z

    if-nez v7, :cond_7

    .line 668
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 669
    .local v6, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 671
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 678
    :goto_0
    :try_start_2
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.APPLICATION_ID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 682
    .local v0, applicationId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 683
    :try_start_3
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 665
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 672
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 673
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v7, "mobclix-controller"

    const-string v8, "Application Key Started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 680
    .local v2, e:Ljava/lang/NullPointerException;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    const-string v8, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 688
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v0       #applicationId:Ljava/lang/String;
    :cond_0
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.LOG_LEVEL"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, logLevelString:Ljava/lang/String;
    const/16 v3, 0x10

    .line 690
    .local v3, logLevelSetting:I
    if-eqz v4, :cond_1

    .line 691
    const-string v7, "debug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 692
    const/4 v3, 0x1

    .line 705
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 707
    .local v5, notifyUserSetting:Z
    :try_start_5
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.mobclix.NOTIFY_USER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v5

    .line 710
    :goto_2
    :try_start_6
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {v7, p1, v0, v3, v5}, Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 711
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 714
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mobclix/android/sdk/Mobclix;->isInitialized:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 720
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #logLevelSetting:I
    .end local v4           #logLevelString:Ljava/lang/String;
    .end local v5           #notifyUserSetting:Z
    .end local v6           #packageName:Ljava/lang/String;
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    .line 693
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #logLevelSetting:I
    .restart local v4       #logLevelString:Ljava/lang/String;
    .restart local v6       #packageName:Ljava/lang/String;
    :cond_3
    :try_start_7
    const-string v7, "info"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 694
    const/4 v3, 0x2

    goto :goto_1

    .line 695
    :cond_4
    const-string v7, "warn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 696
    const/4 v3, 0x4

    goto :goto_1

    .line 697
    :cond_5
    const-string v7, "error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 698
    const/16 v3, 0x8

    goto :goto_1

    .line 699
    :cond_6
    const-string v7, "fatal"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 700
    const/16 v3, 0x10

    goto :goto_1

    .line 716
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #logLevelSetting:I
    .end local v4           #logLevelString:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_2

    .line 717
    sget-object v7, Lcom/mobclix/android/sdk/Mobclix;->controller:Lcom/mobclix/android/sdk/Mobclix;

    iput-object p1, v7, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 708
    .restart local v0       #applicationId:Ljava/lang/String;
    .restart local v1       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #logLevelSetting:I
    .restart local v4       #logLevelString:Ljava/lang/String;
    .restart local v5       #notifyUserSetting:Z
    .restart local v6       #packageName:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method public final onStart(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 743
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    if-nez v0, :cond_0

    .line 752
    :cond_0
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    .line 754
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    .line 755
    return-void
.end method

.method public final onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 758
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    .line 759
    iget v0, p0, Lcom/mobclix/android/sdk/Mobclix;->numStarts:I

    if-nez v0, :cond_0

    .line 760
    const/16 v1, 0x20

    .line 761
    const-string v2, "MOBCLIX_APPLICATION_PROCESS"

    .line 762
    const-string v3, "MOBCLIX_APPLICATION_EVENT"

    .line 763
    const-string v4, "MOBCLIX_APPLICATION_PROCESS STOPPED"

    move-object v0, p0

    .line 760
    invoke-virtual/range {v0 .. v5}, Lcom/mobclix/android/sdk/Mobclix;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 766
    :cond_0
    return-void
.end method

.method public final resetUserPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 730
    const-string v0, ".MCConfig"

    const-string v1, "AnalyticsEnabled"

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->removePref(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->shouldNotifyUser:Z

    if-eqz v0, :cond_0

    .line 732
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    .line 738
    :goto_0
    return-void

    .line 735
    :cond_0
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    .line 736
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z

    goto :goto_0
.end method

.method saveHashMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabled:Z

    if-nez v2, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->writeApplicationEnvironmentData()V

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V

    .line 339
    const-string v2, "a"

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    .local v0, infoDictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/Mobclix;->createJSONFromHashMap(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v1

    .line 343
    .local v1, json:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->database:Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixDatabase;->insertMessage(Ljava/lang/String;)Z

    .line 344
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;

    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "u"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix;->userAgent:Ljava/lang/String;

    .line 223
    const-string v0, ".MCConfig"

    const-string v1, "UserAgent"

    invoke-static {v0, v1, p1}, Lcom/mobclix/android/sdk/Mobclix;->addPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public final sync()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method updateSession()V
    .locals 4

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix;->updateConnectivity()V

    .line 373
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/Mobclix;->haveLocationPermission:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->locationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    const-string v1, "c"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    const-string v1, "d"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    const-string v1, "e"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix;->session:Ljava/util/HashMap;

    const-string v1, "g"

    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void
.end method
