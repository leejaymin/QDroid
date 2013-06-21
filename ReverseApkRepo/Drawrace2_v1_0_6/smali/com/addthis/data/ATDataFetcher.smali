.class public Lcom/addthis/data/ATDataFetcher;
.super Ljava/lang/Object;
.source "ATDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Data fetcher"

.field private static mIsServiceListUpdating:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/addthis/webservices/ATWebserviceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/addthis/data/ATDataFetcher;->mIsServiceListUpdating:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/addthis/data/ATDataFetcher;-><init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/addthis/webservices/ATWebserviceListener;)V
    .locals 1
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    .line 56
    iput-object p2, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/addthis/data/ATDataFetcher;->shouldUpdateDB()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/addthis/data/ATDataFetcher;->startAsyncServiceFetch()V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 49
    sput-boolean p0, Lcom/addthis/data/ATDataFetcher;->mIsServiceListUpdating:Z

    return-void
.end method

.method static synthetic access$1(Lcom/addthis/data/ATDataFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/addthis/data/ATDataFetcher;->didFinishServiceFetch()V

    return-void
.end method

.method private didFinishServiceFetch()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    invoke-interface {v0}, Lcom/addthis/webservices/ATWebserviceListener;->didFinishWebserviceCall()V

    .line 410
    :cond_0
    return-void
.end method

.method private shouldUpdateDB()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    .line 79
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v5

    invoke-virtual {v5}, Lcom/addthis/core/Config;->shouldAutoUpdate()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 92
    :goto_0
    return-object v5

    .line 84
    :cond_0
    iget-object v5, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/addthis/utils/ATUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v5, "lastUpdate"

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 86
    .local v3, prefValue:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 87
    .local v0, currentTime:J
    cmp-long v5, v3, v6

    if-eqz v5, :cond_1

    .line 88
    sub-long v5, v0, v3

    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v7

    invoke-virtual {v7}, Lcom/addthis/core/Config;->getAutoUpdateInterval()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 89
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public varargs addFavoriteServices([Ljava/lang/String;)Z
    .locals 4
    .parameter "services"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 163
    :cond_0
    return v0

    .line 158
    :cond_1
    aget-object v1, p1, v2

    .line 159
    .local v1, serviceCode:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/addthis/data/ATDataFetcher;->insertToFavoriteService(Ljava/lang/String;)Z

    move-result v0

    .line 160
    if-eqz v0, :cond_0

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs blackListServices([Ljava/lang/String;)V
    .locals 5
    .parameter "services"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 225
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 226
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 231
    const/4 v0, 0x0

    .line 232
    return-void

    .line 226
    :cond_0
    aget-object v1, p1, v2

    .line 227
    .local v1, serviceCode:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/addthis/data/ATDatabaseAdapter;->blackListService(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {v0, v1}, Lcom/addthis/data/ATDatabaseAdapter;->deleteFavoriteService(Ljava/lang/String;)Z

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAllServices(Z)Lcom/addthis/models/ATServiceList;
    .locals 4
    .parameter "onlyImages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 249
    .local v1, serviceList:Lcom/addthis/models/ATServiceList;
    const-string v2, "Data fetcher"

    const-string v3, "Trying to fetching data from local database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/addthis/data/ATDatabaseAdapter;->getAllServices(ZZ)Lcom/addthis/models/ATServiceList;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 254
    const/4 v0, 0x0

    .line 255
    return-object v1
.end method

.method public getFavoriteServices(Z)Lcom/addthis/models/ATServiceList;
    .locals 3
    .parameter "onlyImages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, serviceList:Lcom/addthis/models/ATServiceList;
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/addthis/data/ATDatabaseAdapter;->getAllFavoriteServices(ZZ)Lcom/addthis/models/ATServiceList;

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 118
    const/4 v0, 0x0

    .line 119
    return-object v1
.end method

.method public getService(Ljava/lang/String;)Lcom/addthis/models/ATService;
    .locals 3
    .parameter "serviceCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, service:Lcom/addthis/models/ATService;
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 273
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->getService(Ljava/lang/String;)Lcom/addthis/models/ATService;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 275
    const/4 v0, 0x0

    .line 276
    return-object v1
.end method

.method public insertToFavoriteService(Ljava/lang/String;)Z
    .locals 3
    .parameter "serviceCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, result:Z
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 138
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->insertFavoriteService(Ljava/lang/String;)Z

    move-result v1

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/addthis/data/ATDatabaseAdapter;->blackListService(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 141
    const/4 v0, 0x0

    .line 142
    return v1
.end method

.method public removeFavoriteService(Ljava/lang/String;)Z
    .locals 3
    .parameter "serviceCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, result:Z
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v2, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 183
    invoke-virtual {v0, p1}, Lcom/addthis/data/ATDatabaseAdapter;->deleteFavoriteService(Ljava/lang/String;)Z

    move-result v1

    .line 184
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 185
    const/4 v0, 0x0

    .line 186
    return v1
.end method

.method public varargs removeFavoriteServices([Ljava/lang/String;)Z
    .locals 5
    .parameter "services"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, result:Z
    new-instance v0, Lcom/addthis/data/ATDatabaseAdapter;

    iget-object v3, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 205
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 209
    :cond_0
    invoke-virtual {v0}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 210
    const/4 v0, 0x0

    .line 211
    return v1

    .line 205
    :cond_1
    aget-object v2, p1, v3

    .line 206
    .local v2, serviceCode:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/addthis/data/ATDatabaseAdapter;->deleteFavoriteService(Ljava/lang/String;)Z

    move-result v1

    .line 207
    if-eqz v1, :cond_0

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public startAsyncServiceFetch()V
    .locals 4

    .prologue
    .line 350
    sget-boolean v0, Lcom/addthis/data/ATDataFetcher;->mIsServiceListUpdating:Z

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "Data fetcher"

    const-string v1, "Already updation in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "Data fetcher"

    const-string v1, "Fetching from the server."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/addthis/utils/ATUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mListener:Lcom/addthis/webservices/ATWebserviceListener;

    invoke-interface {v0}, Lcom/addthis/webservices/ATWebserviceListener;->didStartWebserviceCall()V

    .line 358
    :cond_1
    new-instance v0, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;

    invoke-direct {v0, p0}, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;-><init>(Lcom/addthis/data/ATDataFetcher;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/addthis/data/ATDataFetcher$ATServiceFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    .line 361
    iget-object v1, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "nonetwork_msg"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 360
    invoke-static {v0, v1}, Lcom/addthis/utils/ATUtil;->showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateDb(Lcom/addthis/models/ATServiceList;)V
    .locals 18
    .parameter "serviceList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATDatabaseException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 295
    .local v12, updateStartTime:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/addthis/utils/ATUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 296
    .local v10, pref:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 297
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v15, "lastUpdate"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v8, v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    new-instance v2, Lcom/addthis/data/ATDatabaseAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/addthis/data/ATDataFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v15}, Lcom/addthis/data/ATDatabaseAdapter;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, adp:Lcom/addthis/data/ATDatabaseAdapter;
    invoke-virtual {v2}, Lcom/addthis/data/ATDatabaseAdapter;->open()Lcom/addthis/data/ATDatabaseAdapter;

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/addthis/models/ATServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_0

    .line 330
    invoke-virtual {v2, v12, v13}, Lcom/addthis/data/ATDatabaseAdapter;->deleteOutdatedServices(J)V

    .line 331
    invoke-virtual {v2}, Lcom/addthis/data/ATDatabaseAdapter;->closeDb()V

    .line 332
    const-string v15, "lastUpdate"

    invoke-interface {v8, v15, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    const/4 v2, 0x0

    .line 335
    return-void

    .line 306
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/addthis/models/ATService;

    .line 309
    .local v11, service:Lcom/addthis/models/ATService;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-virtual {v11}, Lcom/addthis/models/ATService;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 310
    .local v14, url:Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 312
    .local v5, conn:Ljava/net/URLConnection;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 313
    .local v9, inputSt:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-direct {v4, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 314
    .local v4, bis:Ljava/io/BufferedInputStream;
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-direct {v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 315
    .local v3, baf:Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v6, 0x0

    .line 316
    .local v6, current:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 319
    invoke-virtual {v2, v11, v3}, Lcom/addthis/data/ATDatabaseAdapter;->insertService(Lcom/addthis/models/ATService;Lorg/apache/http/util/ByteArrayBuffer;)Z

    .line 320
    const/4 v3, 0x0

    goto :goto_0

    .line 317
    :cond_1
    int-to-byte v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 322
    .end local v3           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #conn:Ljava/net/URLConnection;
    .end local v6           #current:I
    .end local v9           #inputSt:Ljava/io/InputStream;
    .end local v14           #url:Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 323
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v7           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    .line 325
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 327
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
