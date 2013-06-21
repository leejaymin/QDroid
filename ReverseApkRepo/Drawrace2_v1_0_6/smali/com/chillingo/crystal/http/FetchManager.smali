.class public Lcom/chillingo/crystal/http/FetchManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/http/ServerDataHttpObserver;
.implements Lcom/chillingo/crystal/http/FetchInterface;
.implements Lcom/chillingo/crystal/NotificationReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/http/FetchManager$1;,
        Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;
    }
.end annotation


# static fields
.field private static final KBasicControllerUIDescFile:Ljava/lang/String; = "splash.cuid"

.field private static final KChallengeSubstring:Ljava/lang/String; = "/challenge_start?challengeID="

.field private static final KSeenGlobalNewsCuid:Ljava/lang/String; = "profile.cuid"

.field private static final KSplashBannerFile:Ljava/lang/String; = "advert_global.img"

.field private static final KTabUrlAchievements:Ljava/lang/String; = "achievements.cuid"

.field private static final KTabUrlChallenges:Ljava/lang/String; = "challenges.cuid"

.field private static final KTabUrlGifting:Ljava/lang/String; = "gifts_and_market.cuid"

.field private static final KTabUrlLeaderboard:Ljava/lang/String; = "leaderboard.cuid"

.field private static final KTabUrlProfile:Ljava/lang/String; = "profile.cuid"

.field private static final MAX_ALLOWED_POSTERS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FetchManager"


# instance fields
.field private _allowedPosters:I

.field private _asyncHttp:Lcom/chillingo/crystal/http/AsyncHttp;

.field private _backgroundThreadRunning:Z

.field private _cacheHighWaterMark:I

.field private _fetchQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;"
        }
    .end annotation
.end field

.field private _haveClearedOnInitialConnection:Z

.field private _haveSeenGlobalNews:Z

.field private _isFetching:Z

.field private _isPosting:Z

.field private _permanentDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;"
        }
    .end annotation
.end field

.field private _postQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;"
        }
    .end annotation
.end field

.field private _shouldClearOnInitialConnection:Z

.field private _temporaryDataCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;"
        }
    .end annotation
.end field

.field private _writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveClearedOnInitialConnection:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->haveSeenGlobalNews()Z

    move-result v1

    iput-boolean v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveSeenGlobalNews:Z

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->allServerDataInPostQueue()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->removeNoCacheItemsFromPostQueue()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->allServerDataFromCache()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveSeenGlobalNews:Z

    if-nez v0, :cond_0

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/profile.cuid"

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v1, "Reachability"

    invoke-virtual {v0, v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/http/FetchManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->doWriteToFile()V

    return-void
.end method

.method private cacheSize(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method private clearUnwantedItemsFromCache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v1

    sget-object v5, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v1, v5, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlInitial()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_1
    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    const-string v4, "advert_global.img"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    const-string v4, "splash.cuid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method private clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private deleteItemFromCache(Ljava/util/List;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing item with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private deleteItemsOfTypeInCache(Ljava/util/List;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/FetchManager;->cacheSize(Ljava/util/List;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private doWriteToFile()V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->removeAllServerDataFromCache()V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/DataStore;->addServerDataToCache(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_backgroundThreadRunning:Z

    return-void
.end method

.method private fetchOpCompleted(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - fetchOpCompleted for serverData with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_26

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveClearedOnInitialConnection:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_shouldClearOnInitialConnection:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - need to clear old data out"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    iput-boolean v4, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveClearedOnInitialConnection:Z

    iput-boolean v5, p0, Lcom/chillingo/crystal/http/FetchManager;->_shouldClearOnInitialConnection:Z

    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->updatedDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - serverData.updatedDataAvailable() return true"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->serverDataFromUpdatedData()Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setFresh(Z)V

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->sourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setSourceUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager.fetchOpCompleted() JSON Data returned for original url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with redirect url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->redirectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager.fetchOpCompleted() Data body is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->JsonRepresentation(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->UIDescription:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_11

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->doNotCache()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_6

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is UIDescription"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v1

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlInitial()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ui description with url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to permenant cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_0
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/FetchManager;->writeToFile()V

    :cond_9
    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_a

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager - removing server data with url \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from the fetch queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_b

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager - sending notification for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/chillingo/crystal/http/FetchManager;->statusForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->shouldPost()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "waspost"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->redirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "redirecturl"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingFetches()V

    :goto_3
    return-void

    :cond_f
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_10

    const-string v0, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ui description with url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to temporary cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->ImageData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_14

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_12

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is ImageData"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object v0, v1

    check-cast v0, Lcom/chillingo/crystal/serverdata/ImageData;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->imageDataShouldBeInPermanentCache(Lcom/chillingo/crystal/serverdata/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PlayerData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_16

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_15

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is PlayerData"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Leaderboard:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_18

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_17

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is LeaderboardData"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Achievement:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_1a

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_19

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is AchievementData"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->PurchaseNonce:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_1c

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1b

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is PurchaseNonce"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v0

    sget-object v2, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->Affiliate:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v0, v2, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1d

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - New server data is AffiliateData"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->dataAvailable()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_1f

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - serverData.dataAvailable() returned true"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {p1, v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setFresh(Z)V

    instance-of v0, p1, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_20

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - server data is UIDescription"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlInitial()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_4
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_22
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_23
    instance-of v0, p1, Lcom/chillingo/crystal/serverdata/ImageData;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_24

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - server data is ImageData"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_25
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isWarningLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_21

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - New data of wrong type"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_26
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_2d

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/challenge_start?challengeID="

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2b

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_27

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - got no longer available for challenge server data"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->updatedDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_28

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager - updated data for challenge start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->serverDataFromUpdatedData()Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2a

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager - sending notification for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    sget-object v3, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2b
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2c

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchManager - got no longer available for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" - removing it from all caches and queues"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    goto/16 :goto_2

    :cond_2d
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_2f

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_2e

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - got bad request for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    sget-object v2, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->BadRequest:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2f
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpAttemptCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_30

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - hit max attempts for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "status"

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/http/FetchManager;->statusForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/chillingo/crystal/NotificationCentre;->raiseNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private imageDataShouldBeInPermanentCache(Lcom/chillingo/crystal/serverdata/ImageData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/ImageData;->placeInPermanentCache()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/ImageData;->url()Ljava/lang/String;

    move-result-object v1

    const-string v2, "advert_global.img"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postOpCompleted(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - postOpCompleted for serverData with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - no error so removing \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" from the post queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->removeServerDataFromPostQueue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    if-le v0, v4, :cond_3

    iput v4, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    :cond_3
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    return-void

    :cond_4
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorResourceNotFound:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_6

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_5

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - not found so delaying until next time we post"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNullPostRedirect:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_7

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - not Logged in so delaying until next time"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v4}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_9

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - no longer available so removing \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" from the post queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->removePostDataWithUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processOutstandingData()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - processOutstandingData not bothering as nothing to process"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_3

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - processOutstandingData has items in the post queue - processing"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->reachability()Lcom/chillingo/crystal/http/Reachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "FetchManager"

    const-string v1, "Fetchmanger - processOutstandingData - server not reachable, waiting for updates"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    iput v7, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_6

    const-string v3, "FetchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchManager - processingOutstandingData _allowedPosters = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v3, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    if-gtz v3, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - processingOutstandingData - no more posters allowed"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpAttemptCount()I

    move-result v3

    if-lt v3, v7, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_5

    const-string v3, "FetchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchManager - processingOutstandingData - already at max attempts for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v3

    sget-object v4, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->NullPost:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->isUserLoggedIn()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "FetchManager"

    const-string v3, "FetchManager - User not Logged in - postponing post of achievement/leaderboard data"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->type()Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    move-result-object v3

    sget-object v4, Lcom/chillingo/crystal/serverdata/AbstractServerDataType;->AnalyticData:Lcom/chillingo/crystal/serverdata/AbstractServerDataType;

    if-ne v3, v4, :cond_a

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->isUserTOSAccepted()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "FetchManager"

    const-string v3, "FetchManager - Global News not seen - postponing post of analytic data"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpInProgress()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_b

    const-string v0, "FetchManager"

    const-string v3, "FetchManager - processingOutstandingData - item is currently posting"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    if-ne v3, v6, :cond_d

    const-string v3, "FetchManager"

    const-string v4, "FetchManager - processingOutstandingData - item will now be processed"

    invoke-static {v3, v4}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v3, p0, Lcom/chillingo/crystal/http/FetchManager;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttp;

    invoke-interface {v3, v0}, Lcom/chillingo/crystal/http/AsyncHttp;->processData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    iget v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_allowedPosters:I

    goto/16 :goto_1
.end method

.method private processOutstandingFetches()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/FetchManager;->writeToFile()V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - processOutstandingFetches not bothering as nothing to process"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - processOutstandingFetches has items in the fetch queue - processing"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    iget-object v2, p0, Lcom/chillingo/crystal/http/FetchManager;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttp;

    invoke-interface {v2, v0}, Lcom/chillingo/crystal/http/AsyncHttp;->processData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    goto :goto_0
.end method

.method private removeNoCacheItemsFromPostQueue()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->doNotCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private removePostDataWithUrl(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->removeServerDataFromPostQueue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method

.method private serverDataInCache(Ljava/util/List;I)Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;I)",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public attemptToPrefetchTabs()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v2, "FetchManager"

    const-string v3, "FetchManager - attemptToPrefetchTabs"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/ui/theming/Theming;->themeCapsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v2, "challengestab"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v3, :cond_4

    const-string v4, "giftingtab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    const-string v1, "https://chillingo-crystal.appspot.com/crystal/profile.cuid"

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/leaderboard.cuid"

    const-string v4, "https://chillingo-crystal.appspot.com/crystal/achievements.cuid"

    const-string v5, "https://chillingo-crystal.appspot.com/crystal/challenges.cuid"

    const-string v6, "https://chillingo-crystal.appspot.com/crystal/gifts_and_market.cuid"

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public cancelWriteToFileTimer()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - cancelling writeToFileTimer"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->cancelMainThreadItem(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_backgroundThreadRunning:Z

    :cond_1
    return-void
.end method

.method public clearData(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - Clearing all fetch data from the caches"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    return-void

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - Clearing unwanted fetch data from the caches"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUnwantedItemsFromCache(Ljava/util/List;)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUnwantedItemsFromCache(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearDataOnFirstConnection()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_shouldClearOnInitialConnection:Z

    return-void
.end method

.method public clearPostWithPartialUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchManager - clearPostWithPartialUrl "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->removeServerDataFromPostQueueByPartialUrl(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpInProgress()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_1

    const-string v4, "FetchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FetchManager - Removing pending post "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public clearUrlFromCache(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - Removing items with url:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" from the fetch caches"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    return-void
.end method

.method public close()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/FetchManager;->stopFetching()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/FetchManager;->stopPosting()V

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->doWriteToFile()V

    return-void
.end method

.method public cookiesDefinedForServer()Z
    .locals 3

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteItemFromTemporaryCache(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->deleteItemFromCache(Ljava/util/List;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void
.end method

.method public deleteItemsOfTypeFromTemporaryCache(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/chillingo/crystal/serverdata/AbstractServerData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->deleteItemsOfTypeInCache(Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - onNotification for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "https://chillingo-crystal.appspot.com/crystal/profile.cuid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Map;

    const-string v0, "status"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    sget-object v2, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "FetchManager"

    const-string v2, "FetchManager - Global news has been received"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v3, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveSeenGlobalNews:Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    iget-boolean v2, p0, Lcom/chillingo/crystal/http/FetchManager;->_haveSeenGlobalNews:Z

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/DataStore;->setHaveSeenGlobalNews(Z)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "Reachability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - Reachability changed"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingFetches()V

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    goto :goto_0
.end method

.method public prefetchUrl(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - prefetchUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fresh()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - have an existing item - requeue it"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {p0, v0, v1, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_5

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - adding a new item for fetch"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, p1, v1, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->PrefetchPageLinks:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {p0, v0, v1, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method public queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - queueServerData url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_2

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - New item so adding it to the queue"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {p1, v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    invoke-virtual {p1, v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpInProgress(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingFetches()V

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->statusForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v6, :cond_4

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - Found existing item in queue - reusing it"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, p2, p3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {v0, v5}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public queueServerDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - queueServerDataForPost url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-virtual {p1, v0, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {p1, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    invoke-virtual {p1, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpInProgress(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingFetches()V

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->statusForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    return-object v0
.end method

.method public retryAllPosts()V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    return-void
.end method

.method public scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - scheduleDataForPost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->addServerDataToPostQueue(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isPosting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    :cond_1
    return-void
.end method

.method public serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - serverDataForUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - cache hit! Permanent"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    :cond_3
    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_5

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - cache hit! Temporary"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v1, v0

    :cond_6
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_8

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - cache hit! Fetch Queue"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    if-nez v0, :cond_9

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_9

    const-string v1, "FetchManager"

    const-string v2, "FetchManager - cache miss!"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v0

    :cond_a
    move-object v0, v1

    goto :goto_0
.end method

.method public serverDataInTemporaryCache(I)Lcom/chillingo/crystal/serverdata/AbstractServerData;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataInCache(Ljava/util/List;I)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    return-object v0
.end method

.method public serverDataNetworkOpComplete(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager::serverDataNetworkOpComplete is fetching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/chillingo/crystal/http/FetchManager;->_isFetching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchManager - serverDataNetworkOpComplete for serverData with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_postQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->serverDataInPostQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isPosting:Z

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/http/FetchManager;->postOpCompleted(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isFetching:Z

    if-ne v0, v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/http/FetchManager;->fetchOpCompleted(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/http/ServerDataHttpStatus;)V

    goto :goto_0
.end method

.method public setAsyncHttp(Lcom/chillingo/crystal/http/AsyncHttp;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/http/FetchManager;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttp;

    return-void
.end method

.method public startFetching()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isFetching:Z

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingFetches()V

    return-void
.end method

.method public startPosting()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isPosting:Z

    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->processOutstandingData()V

    return-void
.end method

.method public statusForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "FetchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchManager - statusForUrl "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v2

    :cond_3
    if-nez v3, :cond_9

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    sget-object v3, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-nez v0, :cond_6

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUnavailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    :goto_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_5

    const-string v1, "FetchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning status for url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    sget-object v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceUpdating:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_2

    :cond_8
    move-object v0, v3

    goto :goto_2

    :cond_9
    move v0, v3

    goto :goto_1

    :cond_a
    move v1, v3

    goto :goto_0
.end method

.method public stopFetching()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isFetching:Z

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_fetchQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/http/FetchManager;->cancelWriteToFileTimer()V

    return-void
.end method

.method public stopPosting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isPosting:Z

    return-void
.end method

.method public temporaryCacheSize()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_temporaryDataCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/http/FetchManager;->cacheSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public writeToFile()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_permanentDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_cacheHighWaterMark:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_backgroundThreadRunning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_isFetching:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/chillingo/crystal/http/FetchManager;->_backgroundThreadRunning:Z

    new-instance v0, Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;-><init>(Lcom/chillingo/crystal/http/FetchManager;Lcom/chillingo/crystal/http/FetchManager$1;)V

    iput-object v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/http/FetchManager;->_writeToFileTimer:Lcom/chillingo/crystal/http/FetchManager$WriteToFileTimer;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/PrivateSession;->runOnMainThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/chillingo/crystal/http/FetchManager;->_backgroundThreadRunning:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "FetchManager"

    const-string v1, "FetchManager - writing while not fetching"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/chillingo/crystal/http/FetchManager;->doWriteToFile()V

    goto :goto_0
.end method
