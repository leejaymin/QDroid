.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;
.super Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;

# interfaces
.implements Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "\\["

.field private static final MAP_DELIMITER:Ljava/lang/String; = "->"

.field private static mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;

    invoke-direct {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->setUnityDelegate(Lcom/chillingo/crystal/CrystalVirtualGoodsDelegate;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;-><init>()V

    return-void
.end method

.method public static balances()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->balances()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mapToStringArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createJSONVirtualGoodsUpdateInfo(ZLjava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "goods"

    invoke-static {p2}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "balances"

    invoke-static {p3}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createJSONVirtualGoodsUpdateInfo - json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goods()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->goods()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->mapToStringArray(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static infoIsUptoDate()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->infoIsUptoDate()Z

    move-result v0

    return v0
.end method

.method private static isUnityEmptyStringArray([Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lt v2, v1, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected static mapToStringArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "->"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    aput-object v1, v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1
.end method

.method private native nativeCrystalVirtualGoodsInfoUpdated(Z)V
.end method

.method public static postBalances(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->postBalances(Ljava/util/Map;)V

    return-void
.end method

.method public static postGoods(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->postGoods(Ljava/util/Map;)V

    return-void
.end method

.method public static postGoodsAndBalances(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/chillingo/crystal/CrystalVirtualGoods;->postGoodsAndBalances(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static setLockedGoods(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\["

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->setLockedGoods(Ljava/util/Set;)V

    return-void
.end method

.method public static startUpdating()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->startUpdating()V

    return-void
.end method

.method protected static stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->isUnityEmptyStringArray([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static stringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\\["

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->stringArrayToMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static updateNow()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->updateNow()V

    return-void
.end method


# virtual methods
.method public crystalVirtualGoodsInfoUpdated(ZLjava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->isRunningUnity()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoCrystalVirtualGoodsInfoUpdated"

    invoke-direct {p0, p1, p2, p3}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->createJSONVirtualGoodsUpdateInfo(ZLjava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "crystalVirtualGoodsInfoUpdated - Unable to generate JSON Update Info"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crystalVirtualGoodsInfoUpdated: "

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

    :cond_1
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityVirtualGoods;->nativeCrystalVirtualGoodsInfoUpdated(Z)V

    goto :goto_0
.end method
