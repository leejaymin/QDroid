.class public abstract Lcom/chillingo/crystal/serverdata/AbstractServerData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/serverdata/AbstractServerData$1;,
        Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
        ">;"
    }
.end annotation


# static fields
.field protected static final KDataTypeAchievement:Ljava/lang/String; = "achievement"

.field protected static final KDataTypeAffiliate:Ljava/lang/String; = "affiliate"

.field protected static final KDataTypeAnalytic:Ljava/lang/String; = "analytic"

.field protected static final KDataTypeDeviceToken:Ljava/lang/String; = "token"

.field protected static final KDataTypeImage:Ljava/lang/String; = "image"

.field protected static final KDataTypeLeaderboard:Ljava/lang/String; = "leaderboard"

.field protected static final KDataTypeNullPost:Ljava/lang/String; = "nullpost"

.field protected static final KDataTypePlayerData:Ljava/lang/String; = "playerdata"

.field protected static final KDataTypePurchaseNonce:Ljava/lang/String; = "nonce"

.field protected static final KDataTypeUIDescription:Ljava/lang/String; = "uidesc"

.field protected static final KDataTypeUnknown:Ljava/lang/String; = "unknown"

.field protected static final KInternalKeyDoNotCache:Ljava/lang/String; = "nocache"

.field protected static final KInternalKeyFetchPriority:Ljava/lang/String; = "pri"

.field protected static final KInternalKeyUrl:Ljava/lang/String; = "url"

.field protected static final KMetaDataKeyType:Ljava/lang/String; = "type"

.field protected static final KMetaDataTimeStamp:Ljava/lang/String; = "timestamp"

.field protected static final KNumInternalElements:I = 0x3

.field protected static final KNumMetaDataElements:I = 0x2

.field protected static final KNumTopLevelElements:I = 0x3

.field protected static final KTopLevelKeyData:Ljava/lang/String; = "data"

.field protected static final KTopLevelKeyInternal:Ljava/lang/String; = "internal"

.field protected static final KTopLevelKeyMetaData:Ljava/lang/String; = "meta"

.field private static final TAG:Ljava/lang/String; = "AbstractServerData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _currentPostType:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

.field protected _doNotCache:Z

.field protected _fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

.field protected _freshThisSession:Z

.field protected transient _image:Landroid/graphics/Bitmap;

.field protected _mainDataDictionary:Lorg/json/JSONObject;

.field protected _networkOpAttemptCount:I

.field protected _networkOpInProgress:Z

.field protected transient _observerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/http/ServerDataHttpObserver;",
            ">;"
        }
    .end annotation
.end field

.field private _originalUrl:Ljava/lang/String;

.field protected _placeInPermanentCache:Z

.field protected _postData:[B

.field protected _receivedData:[B

.field protected _redirectUrl:Ljava/lang/String;

.field protected _sourceUrl:Ljava/lang/String;

.field protected _subPriority:I

.field protected _timeStamp:Ljava/util/Date;

.field protected _type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

.field private _url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;->ApplicationJson:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_currentPostType:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_timeStamp:Ljava/util/Date;

    return-void
.end method

.method private static dataTypeFromString(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerDataType;
    .locals 1

    const-string v0, "analytic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "uidesc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_1
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_2
    const-string v0, "token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->DeviceToken:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_3
    const-string v0, "nullpost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_4
    const-string v0, "leaderboard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_5
    const-string v0, "playerdata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_6
    const-string v0, "achievement"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_7
    const-string v0, "affiliate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_8
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Unknown:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    goto :goto_0
.end method

.method public static serverDataFromJson(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->serverDataFromJson(Ljava/lang/String;[B)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    return-object v0
.end method

.method public static serverDataFromJson(Ljava/lang/String;[B)Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "AbstractServerData"

    const-string v2, "AbstractServerData - No data available - unable to proceed"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v4, "AbstractServerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbstractServerData::serverDataFromJson(), JSON data is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v1}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "AbstractServerData"

    const-string v2, "AbstractServerData - Could not get a valid JSONObject - unable to proceed"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "meta"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "AbstractServerData"

    const-string v2, "AbstractServerData - No meta data available - unable to proceed"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v1, "type"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->dataTypeFromString(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v1

    sget-object v6, Lcom/chillingo/crystal/serverdata/AbstractServerData$1;->$SwitchMap$com$chillingo$crystal$serverdata$AbstractServerDataType:[I

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :try_start_1
    const-string v1, "timestamp"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    iput-object v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_timeStamp:Ljava/util/Date;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    const-string v1, "internal"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v1, "url"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setUrl(Ljava/lang/String;)V

    :try_start_2
    const-string v1, "pri"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/chillingo/crystal/serverdata/FetchPriority;->fromValue(I)Lcom/chillingo/crystal/serverdata/FetchPriority;

    move-result-object v6

    iput-object v6, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iget-object v6, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iget v6, v6, Lcom/chillingo/crystal/serverdata/FetchPriority;->Value:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_subPriority:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    :try_start_3
    const-string v1, "nocache"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_doNotCache:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_5
    :try_start_4
    const-string v1, "data"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_mainDataDictionary:Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_8
    :goto_6
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v1, v2, :cond_0

    array-length v1, p1

    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_image:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v2, "AbstractServerData"

    const-string v3, "AbstractServerData - Type is missing - need to bail."

    invoke-static {v2, v3, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/chillingo/crystal/serverdata/AnalyticData;

    invoke-direct {v0}, Lcom/chillingo/crystal/serverdata/AnalyticData;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v6, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v1, v0, v6, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    move-object v0, v1

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/ImageData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/chillingo/crystal/serverdata/NullPost;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/NullPost;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/PlayerData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_5
    new-instance v1, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/PurchaseNonceData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_6
    new-instance v1, Lcom/chillingo/crystal/serverdata/AffiliateData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/AffiliateData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_7
    new-instance v1, Lcom/chillingo/crystal/serverdata/DeviceToken;

    invoke-direct {v1, v0, v0}, Lcom/chillingo/crystal/serverdata/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_8
    new-instance v1, Lcom/chillingo/crystal/serverdata/LeaderboardData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/LeaderboardData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :pswitch_9
    new-instance v1, Lcom/chillingo/crystal/serverdata/AchievementData;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/AchievementData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v5

    if-ne v5, v2, :cond_5

    const-string v5, "AbstractServerData"

    const-string v6, "AbstractServerData - Failed to read time stamp."

    invoke-static {v5, v6, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v6

    if-ne v6, v2, :cond_6

    const-string v6, "AbstractServerData"

    const-string v7, "AbstractServerData - Failed to read fetch priority"

    invoke-static {v6, v7, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_9
    move v1, v3

    goto/16 :goto_4

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v5

    if-ne v5, v2, :cond_7

    const-string v5, "AbstractServerData"

    const-string v6, "AbstractServerData - Failed to read DoNotCache setting"

    invoke-static {v5, v6, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_4
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v4

    if-ne v4, v2, :cond_8

    const-string v2, "AbstractServerData"

    const-string v4, "AbstractServerData - Main data is missing"

    invoke-static {v2, v4, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static stringFromDataType(Lcom/chillingo/crystal/serverdata/AbstractServerDataType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/chillingo/crystal/serverdata/AbstractServerData$1;->$SwitchMap$com$chillingo$crystal$serverdata$AbstractServerDataType:[I

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "analytic"

    goto :goto_0

    :pswitch_1
    const-string v0, "uidesc"

    goto :goto_0

    :pswitch_2
    const-string v0, "image"

    goto :goto_0

    :pswitch_3
    const-string v0, "token"

    goto :goto_0

    :pswitch_4
    const-string v0, "nullpost"

    goto :goto_0

    :pswitch_5
    const-string v0, "leaderboard"

    goto :goto_0

    :pswitch_6
    const-string v0, "playerdata"

    goto :goto_0

    :pswitch_7
    const-string v0, "achievement"

    goto :goto_0

    :pswitch_8
    const-string v0, "affiliate"

    goto :goto_0

    :pswitch_9
    const-string v0, "nonce"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public JsonRepresentation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->JsonRepresentation(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public JsonRepresentation(Z)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    invoke-static {v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->stringFromDataType(Lcom/chillingo/crystal/serverdata/AbstractServerDataType;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_timeStamp:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "timestamp"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "meta"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    const-string v0, "data"

    iget-object v3, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_mainDataDictionary:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "pri"

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fetchPriority()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "nocache"

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_doNotCache:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "internal"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "AbstractServerData"

    const-string v3, "AbstractServerData::JsonRepresentation - null data dictionary"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_4

    const-string v1, "AbstractServerData"

    const-string v2, "AbstractServerData - JsonRepresentation - Failed to insert items into the JSONObject"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public compareTo(Lcom/chillingo/crystal/serverdata/AbstractServerData;)I
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fetchPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fetchPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->compareTo(Lcom/chillingo/crystal/serverdata/AbstractServerData;)I

    move-result v0

    return v0
.end method

.method public currentPostType()Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_currentPostType:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    return-object v0
.end method

.method public dataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_mainDataDictionary:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doNotCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_doNotCache:Z

    return v0
.end method

.method public fetchCompleted(Lcom/chillingo/crystal/http/ServerDataHttpStatus;[BLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "AbstractServerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractServerData - fetchCompleted with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_receivedData:[B

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpCompletedObserver()Lcom/chillingo/crystal/http/ServerDataHttpObserver;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "AbstractServerData"

    const-string v1, "Has an observer"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpCompletedObserver()Lcom/chillingo/crystal/http/ServerDataHttpObserver;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/chillingo/crystal/http/ServerDataHttpObserver;->serverDataNetworkOpComplete(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_redirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->sessionInitialised()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "AbstractServerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractServerData - was redirected from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_redirectUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_redirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setOriginalUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->redirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setRedirectUrl(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "AbstractServerData"

    const-string v1, "No observer"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fetchPriority()I
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iget v0, v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->Value:I

    iget v1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_subPriority:I

    add-int/2addr v0, v1

    return v0
.end method

.method public fresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_freshThisSession:Z

    return v0
.end method

.method public getPostData()[B
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_postData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_postData:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->JsonRepresentation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "AbstractServerData"

    const-string v2, "AbstractServerData - getPostData - UTF-8 is missing!"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageData()[B
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_image:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public networkOpAttemptCount()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_networkOpAttemptCount:I

    return v0
.end method

.method public networkOpCompletedObserver()Lcom/chillingo/crystal/http/ServerDataHttpObserver;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    return-object v0
.end method

.method public networkOpInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_networkOpInProgress:Z

    return v0
.end method

.method public originalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_originalUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_originalUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_url:Ljava/lang/String;

    goto :goto_0
.end method

.method public placeInPermanentCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_placeInPermanentCache:Z

    return v0
.end method

.method public redirectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public serverDataFromUpdatedData()Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/ImageData;->convertToImageIfPossible()V

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_receivedData:[B

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->serverDataFromJson(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_receivedData:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const-string v2, "AbstractServerData"

    const-string v3, "AbstractServerData - serverDataFromUpdatedData - UTF-8 is missing!"

    invoke-static {v2, v3, v0}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected setDoNotCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_doNotCache:Z

    return-void
.end method

.method public setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_fetchPriority:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iput p2, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_subPriority:I

    return-void
.end method

.method public setFresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_freshThisSession:Z

    return-void
.end method

.method public setNetworkOpAttemptCount(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_networkOpAttemptCount:I

    return-void
.end method

.method public setNetworkOpInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_networkOpInProgress:Z

    return-void
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_originalUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlaceInPermanentCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_placeInPermanentCache:Z

    return-void
.end method

.method public setPostData([B)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_postData:[B

    return-void
.end method

.method public setPostType(Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_currentPostType:Lcom/chillingo/crystal/serverdata/AbstractServerData$RequestType;

    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_redirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_sourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_url:Ljava/lang/String;

    return-void
.end method

.method public shouldPost()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_postData:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sourceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_type:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    return-object v0
.end method

.method public updatedDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_receivedData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_receivedData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_networkOpInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/serverdata/AbstractServerData;->_url:Ljava/lang/String;

    return-object v0
.end method
