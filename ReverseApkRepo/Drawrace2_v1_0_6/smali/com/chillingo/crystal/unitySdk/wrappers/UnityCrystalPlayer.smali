.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;
.super Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;

# interfaces
.implements Lcom/chillingo/crystal/CrystalPlayerDelegate;


# static fields
.field private static mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;

    invoke-direct {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalPlayer;->setUnityDelegate(Lcom/chillingo/crystal/CrystalPlayerDelegate;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;-><init>()V

    return-void
.end method

.method public static alias()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->alias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static badgeNumber()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->badgeNumber()I

    move-result v0

    return v0
.end method

.method private createJSONPlayerUpdateInfo(ZLcom/chillingo/crystal/CrystalPlayer;)Ljava/lang/String;
    .locals 5
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

    const-string v1, "createJSONPlayerUpdateInfo - Generating CrystalPlayerJSON"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "crystalPlayerId"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->crystalPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "updateState"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->updateState()Lcom/chillingo/crystal/PlayerUpdateState;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "badgeNumber"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->badgeNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "crystalUser"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->isCrystalUser()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "facebookUser"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->isFacebookUser()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "twitterUser"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->isTwitterUser()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "signedIn"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->isSignedIn()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "noCrystalFriends"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriends()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "noCrystalFriendsWithGame"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriendsWithGame()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "upToDate"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->playerInfoIsUpToDate()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "alias"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->alias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->gifts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->gifts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "gifts"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->gifts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/utils/JSONUtils;->stringListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->giftsLeft()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->giftsLeft()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "giftsLeft"

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->giftsLeft()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "crystalPlayerInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_4

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createJSONPlayerUpdateInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static crystalPlayerId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->crystalPlayerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gifts()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->gifts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static giftsLeft()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->giftsLeft()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mapToStringArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCrystalUser()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->isCrystalUser()Z

    move-result v0

    return v0
.end method

.method public static isFacebookUser()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->isFacebookUser()Z

    move-result v0

    return v0
.end method

.method public static isSignedIn()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method public static isTwitterUser()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->isTwitterUser()Z

    move-result v0

    return v0
.end method

.method private native nativeCrystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V
.end method

.method public static numberOfCrystalFriends()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriends()I

    move-result v0

    return v0
.end method

.method public static numberOfCrystalFriendsWithGame()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriendsWithGame()I

    move-result v0

    return v0
.end method

.method public static playerInfoIsUpToDate()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->playerInfoIsUpToDate()Z

    move-result v0

    return v0
.end method

.method public static startUpdating()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->startUpdating()V

    return-void
.end method


# virtual methods
.method public crystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crystalPlayerInfoUpdated - alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chillingo/crystal/CrystalPlayer;->alias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->isRunningUnity()Z

    move-result v0

    if-ne v0, v3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "Crystal"

    const-string v1, "crystalPlayerInfoUpdated - Sending Unity Message"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoCrystalPlayerInfoUpdated"

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->createJSONPlayerUpdateInfo(ZLcom/chillingo/crystal/CrystalPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "Crystal"

    const-string v2, "crystalPlayerInfoUpdated - Unable to generate JSON Update Info"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crystalPlayerInfoUpdated: "

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

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "Crystal"

    const-string v1, "crystalPlayerInfoUpdated - Using Native c++:"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalPlayer;->nativeCrystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V

    goto :goto_0
.end method
