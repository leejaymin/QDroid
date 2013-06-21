.class public Lcom/chillingo/crystal/serverdata/AnalyticData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# static fields
.field public static final CurrentAnalyticsVersion:I = 0x2

.field public static final KAnalyticsVersion:Ljava/lang/String; = "analyticsversion"

.field public static final KAppId:Ljava/lang/String; = "appid"

.field public static final KAppVersion:Ljava/lang/String; = "appversion"

.field public static final KClientSessionId:Ljava/lang/String; = "clientsessionid"

.field public static final KConnectionType:Ljava/lang/String; = "connection"

.field public static final KCurrentSessionMins:Ljava/lang/String; = "currentsessionmins"

.field public static final KDeviceModel:Ljava/lang/String; = "devicemodel"

.field public static final KDeviceUname:Ljava/lang/String; = "deviceuname"

.field public static final KExtraSessionCurrentSessLength:Ljava/lang/String; = "currentSessionDuration"

.field public static final KExtraSessionData:Ljava/lang/String; = "extrasessiondata"

.field public static final KExtraSessionIsFinalPost:Ljava/lang/String; = "clientSessionFinalPost"

.field public static final KExtraSessionMinsSincePosted:Ljava/lang/String; = "minsSinceLastSessionDataPosted"

.field public static final KExtraSessionMinsSinceStart:Ljava/lang/String; = "minsSinceClientSessionStart"

.field public static final KExtraSessionPostIndex:Ljava/lang/String; = "clientSessionPostIndex"

.field public static final KExtraSessionStartTimestamp:Ljava/lang/String; = "clientSessionStartTimestamp"

.field public static final KExtraSessionTimestamp:Ljava/lang/String; = "clientSessionTimestamp"

.field public static final KGameSession:Ljava/lang/String; = "gamesession"

.field public static final KGameUsageData:Ljava/lang/String; = "gameusage"

.field public static final KImpressionData:Ljava/lang/String; = "impression"

.field public static final KLastSessionLength:Ljava/lang/String; = "lastsessionlength"

.field public static final KMinsSinceLastSession:Ljava/lang/String; = "minssincelast"

.field public static final KOSVersion:Ljava/lang/String; = "osversion"

.field public static final KPreferredLanguage:Ljava/lang/String; = "preferredlang"

.field public static final KUsageData:Ljava/lang/String; = "usage"


# instance fields
.field protected _extraSessionDataDictionary:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AchievementData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    return-void
.end method

.method private populateExtraSessionData(Lcom/chillingo/crystal/PrivateSession;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "clientSessionPostIndex"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->currentSessionPostIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "clientSessionTimestamp"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->currentSessionTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "currentSessionDuration"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->currentSessionDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "minsSinceLastSessionDataPosted"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->minutesSinceLastSessionData()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "clientSessionStartTimestamp"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->currentSessionStartTimestamp()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "minsSinceClientSessionStart"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->sessionMinsSinceStart()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    const-string v1, "clientSessionFinalPost"

    invoke-virtual {p1}, Lcom/chillingo/crystal/PrivateSession;->isFinalSessionPost()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Crystal"

    const-string v2, "AnalyticData - Failed to add item to ExtraSessionData"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public populateWithCurrentData()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->readyToGoUsageData()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v6, :cond_0

    const-string v1, "Crystal"

    const-string v2, "AnalyticData - Failed to add item to a JSONObject"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v4, "clientsessionid"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->sessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v4, "usage"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "osversion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "devicemodel"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "deviceuname"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "connection"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->reachability()Lcom/chillingo/crystal/http/Reachability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chillingo/crystal/http/ReachabilityStatus;->connectionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "appid"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "appversion"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->appVersion()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "minssincelast"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->minutesSinceLastSession()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "lastsessionlength"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->lastSessionMinutes()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "preferredlang"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/serverdata/AnalyticData;->populateExtraSessionData(Lcom/chillingo/crystal/PrivateSession;)V

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "extrasessiondata"

    iget-object v3, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_extraSessionDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "clientsessionid"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->sessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "analyticsversion"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/chillingo/crystal/GameSession;->sharedInstance()Lcom/chillingo/crystal/GameSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/GameSession;->gameSessionAnalytics()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "gamesession"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/GameSession;->sharedInstance()Lcom/chillingo/crystal/GameSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/GameSession;->readyToGoGameUsageData()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "gameusage"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "impression"

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->getImpressionData()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticData - created data with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AnalyticData;->_mainDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public shouldPost()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
