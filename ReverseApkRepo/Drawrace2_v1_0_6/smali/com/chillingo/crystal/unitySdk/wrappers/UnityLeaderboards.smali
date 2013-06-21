.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;
.super Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;

# interfaces
.implements Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;


# static fields
.field private static mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;

    invoke-direct {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->setUnityDelegate(Lcom/chillingo/crystal/CrystalLeaderboardsDelegate;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;-><init>()V

    return-void
.end method

.method public static categoriesToGet()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalLeaderboards;->categoriesToGet()I

    move-result v0

    return v0
.end method

.method public static currentUser(Ljava/lang/String;IZ)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/CrystalLeaderboardType;->values()[Lcom/chillingo/crystal/CrystalLeaderboardType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->currentUser(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static downloadLeaderboardData(Ljava/lang/String;IZ)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/CrystalLeaderboardType;->values()[Lcom/chillingo/crystal/CrystalLeaderboardType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->downloadLeaderboardData(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)V

    return-void
.end method

.method private getJSONLeaderboardUpdateInfo(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Crystal"

    const-string v1, "crystalLeaderboardUpdated - Generating Leaderboard Update message"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "success"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "leaderboardId"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "leaderboardType"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v0, "category"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crystalLeaderboardUpdated - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCrystalLeaderboardUpdated(Ljava/lang/String;I[Lcom/chillingo/crystal/CrystalLeaderboards$Entry;I)V
.end method

.method public static random20(Ljava/lang/String;IZ)[Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/CrystalLeaderboardType;->values()[Lcom/chillingo/crystal/CrystalLeaderboardType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->random20(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    goto :goto_0
.end method

.method public static setCategoriesToGet(I)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/CrystalLeaderboards;->setCategoriesToGet(I)V

    return-void
.end method

.method public static top20Entries(Ljava/lang/String;IZ)[Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/CrystalLeaderboardType;->values()[Lcom/chillingo/crystal/CrystalLeaderboardType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Entries(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    goto :goto_0
.end method

.method public static top20Friends(Ljava/lang/String;IZ)[Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/CrystalLeaderboardType;->values()[Lcom/chillingo/crystal/CrystalLeaderboardType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/chillingo/crystal/CrystalLeaderboards;->top20Friends(Ljava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    goto :goto_0
.end method


# virtual methods
.method public crystalLeaderboardUpdated(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/chillingo/crystal/CrystalLeaderboardType;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/CrystalLeaderboards$Entry;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->isRunningUnity()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    const-string v1, "crystalLeaderboardUpdated - Sending Unity Message"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoCrystalLeaderboardUpdated"

    invoke-direct/range {p0 .. p5}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->getJSONLeaderboardUpdateInfo(ZLjava/lang/String;Lcom/chillingo/crystal/CrystalLeaderboardType;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "Crystal"

    const-string v2, "crystalLeaderboardUpdated - Unable to generate JSON Update Info"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crystalLeaderboardUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "Crystal"

    const-string v1, "crystalLeaderboardUpdated - Going Native"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-virtual {p3}, Lcom/chillingo/crystal/CrystalLeaderboardType;->ordinal()I

    move-result v1

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/CrystalLeaderboards$Entry;

    invoke-direct {p0, p2, v1, v0, p5}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityLeaderboards;->nativeCrystalLeaderboardUpdated(Ljava/lang/String;I[Lcom/chillingo/crystal/CrystalLeaderboards$Entry;I)V

    goto :goto_0
.end method
