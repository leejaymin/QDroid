.class public Lcom/chillingo/crystal/CrystalPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;


# static fields
.field private static final KSecretKey2:Ljava/lang/String; = "Magg1@"

.field private static final TAG:Ljava/lang/String; = "CrystalPlayer"

.field private static _delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;


# instance fields
.field private _playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

.field private _updateState:Lcom/chillingo/crystal/PlayerUpdateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    return-void
.end method

.method private dataFromFetchManager()Lcom/chillingo/crystal/serverdata/PlayerData;
    .locals 2

    invoke-direct {p0}, Lcom/chillingo/crystal/CrystalPlayer;->urlForPlayerData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/PlayerData;

    goto :goto_0
.end method

.method private downloadPlayerDataFromUrl(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    new-instance v1, Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-direct {v1, p1}, Lcom/chillingo/crystal/serverdata/PlayerData;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->PlayerData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method private logPlayerData(Z)V
    .locals 7

    const-string v0, "CrystalPlayer"

    const-string v1, "<<< Player Data Updated >>>"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "CrystalPlayer"

    const-string v1, "  No player data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Is signed in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->isSignedIn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Is crystal user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->isCrystalUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Is Facebook user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->isFacebookUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Is Twitter user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->isTwitterUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of friends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriends()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Friends with game: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->numberOfCrystalFriendsWithGame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->alias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Badge number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->badgeNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrystalPlayer"

    const-string v2, "  << Gifts >>"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->gifts()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "CrystalPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "CrystalPlayer"

    const-string v3, "    No gifts"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "CrystalPlayer"

    const-string v3, "  << Gifts Left >>"

    invoke-static {v0, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPlayer;->giftsLeft()Ljava/util/Map;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    const-string v4, "CrystalPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "CrystalPlayer"

    const-string v1, "    No gifts left"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static setUnityDelegate(Lcom/chillingo/crystal/CrystalPlayerDelegate;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    return-void
.end method

.method private updatePlayerData(Lcom/chillingo/crystal/serverdata/PlayerData;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Updating:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    invoke-virtual {p1, p2}, Lcom/chillingo/crystal/serverdata/PlayerData;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/chillingo/crystal/http/FetchManager;->queueServerDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    goto :goto_0
.end method

.method private urlForPlayerData()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->secretKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SuperCarsII"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Magg1@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->hexHashForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/user_info?sig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->crystalAlias()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public badgeNumber()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->badge()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public crystalPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->crystalPlayerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gifts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->gifts()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public giftsLeft()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->giftsLeft()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCrystalUser()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->isCrystalUser()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isFacebookUser()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->facebookUser()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->isUserSignedIn()Z

    move-result v0

    return v0
.end method

.method public isTwitterUser()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->twitterUser()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numberOfCrystalFriends()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->crystalFriends()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numberOfCrystalFriendsWithGame()I
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/PlayerData;->gameFriends()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "CrystalPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CrystalPlayer::onNotification with url "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/util/Map;

    const-string v0, "status"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    const-string v1, "url"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v4, :cond_9

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v4, v0, Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/chillingo/crystal/serverdata/PlayerData;

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/PlayerData;->dataAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_8

    iput-object v1, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    sget-object v3, Lcom/chillingo/crystal/PlayerUpdateState;->Updated:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v3, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/PlayerData;->termsAccepted()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->tosWereAccepted()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalPlayer;->logPlayerData(Z)V

    :cond_3
    sget-object v1, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    invoke-interface {v1, v0, p0}, Lcom/chillingo/crystal/CrystalPlayerDelegate;->crystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V

    :cond_4
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/CrystalVirtualGoods;->crystalPlayerUpdateFinished(Z)V

    :goto_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_5

    const-string v0, "CrystalPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-CrystalPlayer::onNotification with url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->tosWereDeclined()V

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Unavailable:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v1, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->OutOfDate:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    :goto_3
    sget-object v0, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    invoke-interface {v0, v3, p0}, Lcom/chillingo/crystal/CrystalPlayerDelegate;->crystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V

    :cond_a
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/CrystalVirtualGoods;->crystalPlayerUpdateFinished(Z)V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/chillingo/crystal/PlayerUpdateState;->Unavailable:Lcom/chillingo/crystal/PlayerUpdateState;

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    goto :goto_3
.end method

.method public playerData()Lcom/chillingo/crystal/serverdata/PlayerData;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    return-object v0
.end method

.method public playerInfoIsUpToDate()Z
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Updated:Lcom/chillingo/crystal/PlayerUpdateState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postPlayerData(Lcom/chillingo/crystal/serverdata/PlayerData;)V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/CrystalPlayer;->urlForPlayerData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerData(Lcom/chillingo/crystal/serverdata/PlayerData;Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lcom/chillingo/crystal/CrystalPlayerDelegate;)V
    .locals 0

    sput-object p1, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    return-void
.end method

.method public signIn()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "CrystalPlayer"

    const-string v1, "+CrystalPlayer::signIn"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chillingo/crystal/CrystalPlayer;->urlForPlayerData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalPlayer;->downloadPlayerDataFromUrl(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "CrystalPlayer"

    const-string v1, "-CrystalPlayer::signIn"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public signOut()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "CrystalPlayer"

    const-string v1, "+CrystalPlayer::signOut"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    sget-object v1, Lcom/chillingo/crystal/PlayerUpdateState;->Undefined:Lcom/chillingo/crystal/PlayerUpdateState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/chillingo/crystal/CrystalPlayer;->_delegate:Lcom/chillingo/crystal/CrystalPlayerDelegate;

    invoke-interface {v0, v2, p0}, Lcom/chillingo/crystal/CrystalPlayerDelegate;->crystalPlayerInfoUpdated(ZLcom/chillingo/crystal/CrystalPlayer;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/CrystalVirtualGoods;->crystalPlayerUpdateFinished(Z)V

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "CrystalPlayer"

    const-string v1, "-CrystalPlayer::signOut"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public startUpdating()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "CrystalPlayer - startUpdating"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_playerData:Lcom/chillingo/crystal/serverdata/PlayerData;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chillingo/crystal/CrystalPlayer;->urlForPlayerData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalPlayer;->downloadPlayerDataFromUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updatePlayerInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/CrystalPlayer;->urlForPlayerData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/CrystalPlayer;->downloadPlayerDataFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateState()Lcom/chillingo/crystal/PlayerUpdateState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalPlayer;->_updateState:Lcom/chillingo/crystal/PlayerUpdateState;

    return-object v0
.end method
