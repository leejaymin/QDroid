.class public Lcom/chillingo/crystal/LoginHandler;
.super Ljava/lang/Object;


# static fields
.field private static final TimeInterval12Hours:J = 0x2932e00L


# instance fields
.field private _activatedUiCache:Ljava/lang/Boolean;

.field private _tosAcceptedCache:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    return-void
.end method

.method private activatedUiProxy()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->uiActivated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private kickOffRetryOnCommsManagers()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->retryAllPosts()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startPosting()V

    return-void
.end method

.method private setAcivatedUiProxy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_activatedUiCache:Ljava/lang/Boolean;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->setUiActivated(Z)V

    :cond_1
    return-void
.end method

.method private setTosAcceptedProxy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->setTosAccepted(Z)V

    :cond_1
    return-void
.end method

.method private tosAcceptedProxy()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->tosAccepted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/chillingo/crystal/LoginHandler;->_tosAcceptedCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isFirstUiActivationToday()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->uiActivatedTimer()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v2, v4

    const-wide/32 v3, 0x2932e00

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/LoginHandler;->activatedUiProxy()Z

    move-result v0

    return v0
.end method

.method public isUserTOSAccepted()Z
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/LoginHandler;->tosAcceptedProxy()Z

    move-result v0

    return v0
.end method

.method public setIsFirstUiActivationToday(Z)V
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/LoginHandler;->isFirstUiActivationToday()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/DataStore;->setUiActivatedTimer(Ljava/lang/Long;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/LoginHandler;->isFirstUiActivationToday()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setUiActivatedTimer(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public tosWereAccepted()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/LoginHandler;->setTosAcceptedProxy(Z)V

    invoke-direct {p0}, Lcom/chillingo/crystal/LoginHandler;->kickOffRetryOnCommsManagers()V

    return-void
.end method

.method public tosWereDeclined()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/LoginHandler;->setTosAcceptedProxy(Z)V

    return-void
.end method

.method public uiHasBeenActivated()V
    .locals 1

    invoke-direct {p0}, Lcom/chillingo/crystal/LoginHandler;->activatedUiProxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chillingo/crystal/LoginHandler;->kickOffRetryOnCommsManagers()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/LoginHandler;->setAcivatedUiProxy(Z)V

    :cond_0
    return-void
.end method

.method public userWasSignedOut()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->achievementBuffer()Lcom/chillingo/crystal/AchievementBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/AchievementBuffer;->clearBuffer()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalLeaderboards;->clearBuffer()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/DataStore;->setChallengeID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/DataStore;->setChallengeConfig(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/LoginHandler;->setTosAcceptedProxy(Z)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerInfo()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/form/FormModelHeap;->clear()V

    return-void
.end method

.method public userWasSwitched()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->achievementBuffer()Lcom/chillingo/crystal/AchievementBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/AchievementBuffer;->clearBuffer()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalLeaderboards;->clearBuffer()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/chillingo/crystal/DataStore;->setChallengeID(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/chillingo/crystal/DataStore;->setChallengeConfig(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/LoginHandler;->setTosAcceptedProxy(Z)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerInfo()V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/form/FormModelHeap;->clear()V

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/LoginHandler;->setIsFirstUiActivationToday(Z)V

    return-void
.end method
