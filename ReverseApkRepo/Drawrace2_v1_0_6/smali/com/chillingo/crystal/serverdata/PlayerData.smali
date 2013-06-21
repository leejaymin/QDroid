.class public Lcom/chillingo/crystal/serverdata/PlayerData;
.super Lcom/chillingo/crystal/serverdata/AbstractServerData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/serverdata/PlayerData$CrystalUser;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/PlayerData;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private itemCounts(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private prepareForPost()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private setPostData()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_postData:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public badge()I
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "badge"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting Badge count"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public balances()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "balances"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->itemCounts(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public crystalAlias()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "crystaluser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public crystalFriends()I
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "crystalfriends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting Crystal friends count"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public crystalPlayerId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "crystalplayerid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting Crystal Player ID"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public facebookUser()Z
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "facebookuser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting Facebook User"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gameFriends()I
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "gamefriends"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting game friends count"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public gifts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Crystal"

    const-string v1, "PlayerData - gifts called"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "gifts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "Crystal"

    const-string v2, "PlayerData - returning gift data"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "Crystal"

    const-string v1, "PlayerData - no gift data, returning null"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public giftsLeft()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "giftsLeft"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->itemCounts(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goods()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "goods"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->itemCounts(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCrystalUser()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v2, "PlayerData"

    const-string v3, "+PlayerData::isCrystalUser"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v2, "PlayerData"

    const-string v3, "Has data dictionary"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v3, "guestuser"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_3

    const-string v2, "PlayerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has guestuser field, and the user is a crystal user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_4

    const-string v1, "PlayerData"

    const-string v2, "-PlayerData::isCrystalUser"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public setBalances(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/PlayerData;->prepareForPost()V

    :try_start_0
    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "balances"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/PlayerData;->setPostData()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGoods(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/PlayerData;->prepareForPost()V

    :try_start_0
    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->getJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "goods"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/chillingo/crystal/serverdata/PlayerData;->setPostData()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public termsAccepted()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v2, "termsAccepted"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public twitterUser()Z
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/PlayerData;->_mainDataDictionary:Lorg/json/JSONObject;

    const-string v1, "twitteruser"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    const-string v2, "PlayerData - error getting Twitter User"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
