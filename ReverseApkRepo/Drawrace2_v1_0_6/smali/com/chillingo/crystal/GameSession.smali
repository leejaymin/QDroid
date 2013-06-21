.class public Lcom/chillingo/crystal/GameSession;
.super Ljava/lang/Object;


# static fields
.field private static final KGameUseageData:Ljava/lang/String; = "gameusagedata"

.field private static final MAX_USEAGE_ID_LENGTH:I = 0xff

.field private static final TAG:Ljava/lang/String; = "GameSession"

.field private static final _sharedInstance:Lcom/chillingo/crystal/GameSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chillingo/crystal/GameSession;

    invoke-direct {v0}, Lcom/chillingo/crystal/GameSession;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/GameSession;->_sharedInstance:Lcom/chillingo/crystal/GameSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createNewGameUsageRow(JLjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method public static sharedInstance()Lcom/chillingo/crystal/GameSession;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/GameSession;->_sharedInstance:Lcom/chillingo/crystal/GameSession;

    return-object v0
.end method


# virtual methods
.method public gameSessionAnalytics()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "configuration"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "GameSession"

    const-string v2, "GameSession gameSessionAnalytics: unable to process game config data"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logUsageForId(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4

    const/16 v2, 0xff

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "GameSession"

    const-string v1, "GameSession logUsageForId: Going to log some Game Session Useage data"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "GameSession"

    const-string v1, "GameSession logUsageForId: usageId is null or empty, nothing to log."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "GameSession"

    const-string v1, "GameSession logUsageForId: usageId to long, trimming usageId."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gameusagedata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameusagedata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_6
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/chillingo/crystal/GameSession;->createNewGameUsageRow(JLjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gameusagedata"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "GameSession"

    const-string v2, "GameSession logUsageForId: Unable to log JSON usage data"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public readyToGoGameUsageData()Lorg/json/JSONArray;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gameusagedata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameusagedata"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :cond_0
    return-object v0
.end method
