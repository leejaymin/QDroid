.class public Lcom/chillingo/crystal/PrivateSession;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/ui/viewgroups/interfaces/IAchievementPopupDelegate;
.implements Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;
.implements Lcom/chillingo/crystal/NotificationReceiver;
.implements Lcom/chillingo/crystal/ThemingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/PrivateSession$1;,
        Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;,
        Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ID_FILE:Ljava/lang/String; = "id.id"

.field private static final KClientSessionId:Ljava/lang/String; = "clientsessionid"

.field private static final KCurrentAnalyticsImpressions:Ljava/lang/String; = "impressions"

.field private static final KCurrentAnalyticsPostIdx:Ljava/lang/String; = "analyticssessionidx"

.field private static final KCurrentSessionInterval:Ljava/lang/String; = "lastsessioninterval"

.field private static final KCurrentSessionMinutes:Ljava/lang/String; = "currentsessionmins"

.field private static final KFacebookAppId:Ljava/lang/String; = "133831811331"

.field private static final KFormFieldLatitude:Ljava/lang/String; = "crystal-latitude"

.field private static final KFormFieldLongitude:Ljava/lang/String; = "crystal-longitude"

.field private static final KFormFieldRememberMe:Ljava/lang/String; = "_spring_security_remember_me"

.field private static final KLastSessionDataInterval:Ljava/lang/String; = "lastsessiondatainterval"

.field private static final KPostedFinalSessionDataOnExit:Ljava/lang/String; = "postedfinalsessiondataonexit"

.field private static final KPreviousAnalyticsSessionId:Ljava/lang/String; = "lastanalyticssessionid"

.field private static final KPreviousSessionInterval:Ljava/lang/String; = "analyticsprevsessioninterval"

.field private static final KPreviousSessionMinutes:Ljava/lang/String; = "analyticsprevioussessionmins"

.field private static final KPreviousSessionStartTime:Ljava/lang/String; = "lastsessionstarttime"

.field private static final KSecretKey2:Ljava/lang/String; = "Magg1@"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_ACHIEVEMENTS:Ljava/lang/String; = "achievementstab"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_CHALLENGES:Ljava/lang/String; = "challengestab"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_GIFTING:Ljava/lang/String; = "giftingtab"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_LEADER_BOARD:Ljava/lang/String; = "leaderboardtab"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_OFFER_WALL:Ljava/lang/String; = "offerwalltab"

.field public static final PRIVATE_SESSION_NAV_CONTROLLER_TAB_ID_PROFILE:Ljava/lang/String; = "profiletab"

.field private static final _sharedInstance:Lcom/chillingo/crystal/PrivateSession;


# instance fields
.field private _achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

.field private _achievements:Lcom/chillingo/crystal/CrystalAchievements;

.field private _activeLayout:Landroid/widget/RelativeLayout;

.field private _activeUserInterfaceType:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

.field private _analyticsCurrentSessionId:Ljava/lang/String;

.field private _analyticsPreviousSessionId:Ljava/lang/String;

.field private _appId:Ljava/lang/String;

.field private _appWnd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private _asyncHttp:Lcom/chillingo/crystal/http/AsyncHttpManager;

.field private _attachableUserInterfaceDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _awaitingPopups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;",
            ">;"
        }
    .end annotation
.end field

.field private _context:Landroid/content/Context;

.field private _currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private _currentLocation:Landroid/location/Location;

.field private _currentSessionLastSessionMinutes:I

.field private _currentSessionMinsSinceLastSession:J

.field private _currentSessionMinutes:I

.field private _currentSessionPostIndex:I

.field private _currentSessionStartTimestamp:D

.field private _currentTheme:I

.field private _dataStore:Lcom/chillingo/crystal/DataStore;

.field private _delegate:Lcom/chillingo/crystal/CrystalDelegate;

.field private _deviceId:Ljava/lang/String;

.field private _dialogState:Lcom/chillingo/crystal/ModalDialogState;

.field private _displayingPopup:Z

.field private _facebook:Lcom/facebook/android/Facebook;

.field private _facebookDoLogoutRefresh:Z

.field private _fetchManager:Lcom/chillingo/crystal/http/FetchManager;

.field private _gamePackageName:Ljava/lang/String;

.field private _handler:Landroid/os/Handler;

.field private _inAppPurchaseSupported:Z

.field private _initialiseAnalytics:Z

.field private _lastAnalyticsPostTime:J

.field private _lastSessionMinutes:I

.field private _leaderboards:Lcom/chillingo/crystal/CrystalLeaderboards;

.field private _locWatcher:Lcom/chillingo/crystal/LocationWatcher;

.field private _loginHandler:Lcom/chillingo/crystal/LoginHandler;

.field private _marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

.field private _marketType:Lcom/chillingo/crystal/MarketType;

.field private _minutesSinceLastSession:I

.field private _minutesSinceLastSessionData:J

.field private _optOutOfAnalytics:Z

.field private _orientationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _pendingIncomingUrl:Ljava/lang/String;

.field private _pendingResult:D

.field private _player:Lcom/chillingo/crystal/CrystalPlayer;

.field private _postCurrentSessionAnalytics:Z

.field private _previousSessionStartTimestamp:D

.field private _reachability:Lcom/chillingo/crystal/http/Reachability;

.field private _rootNavActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/NavigationController;",
            ">;"
        }
    .end annotation
.end field

.field private _secret:Ljava/lang/String;

.field private _secretKey:Ljava/lang/String;

.field private _sessionInitialised:Z

.field private _shouldClearFetchManagerOnStartup:Z

.field private _timer:Ljava/util/Timer;

.field private _twitter:Lcom/sugree/twitter/Twitter;

.field private _twitterDoLogoutRefresh:Z

.field private _userWasAskedForFacebookInput:Z

.field private _uuid:Ljava/util/UUID;

.field private _version:D

.field private _virtualGoods:Lcom/chillingo/crystal/CrystalVirtualGoods;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/chillingo/crystal/PrivateSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/chillingo/crystal/PrivateSession;->$assertionsDisabled:Z

    const-string v0, "*"

    invoke-static {v0}, Lcom/chillingo/crystal/utils/DLog;->allowTag(Ljava/lang/String;)V

    new-instance v0, Lcom/chillingo/crystal/PrivateSession;

    invoke-direct {v0}, Lcom/chillingo/crystal/PrivateSession;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/PrivateSession;->_sharedInstance:Lcom/chillingo/crystal/PrivateSession;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_activeUserInterfaceType:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    iput-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_displayingPopup:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_awaitingPopups:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_sessionInitialised:Z

    iput-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_optOutOfAnalytics:Z

    iput-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    iput-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_inAppPurchaseSupported:Z

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_initialiseAnalytics:Z

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_attachableUserInterfaceDelegate:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/PrivateSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->everyMinute()V

    return-void
.end method

.method private activateMainUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_shouldClearFetchManagerOnStartup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->reachability()Lcom/chillingo/crystal/http/Reachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->clearData(Z)V

    iput-boolean v2, p0, Lcom/chillingo/crystal/PrivateSession;->_shouldClearFetchManagerOnStartup:Z

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->uiHasBeenActivated(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    invoke-static {p1}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->setPreloadTab(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->setPreloadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_appWnd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->hideSip(Landroid/view/Window;)V

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startPosting()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    invoke-virtual {v0}, Lcom/chillingo/crystal/LocationWatcher;->startUpdating()V

    return-void
.end method

.method private analyticsDidBecomeActive()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->minutesSinceLastSessionData()J

    move-result-wide v2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "Crystal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Private Session - Analytic Data - Analytic Session became active, been inactive for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "postedfinalsessiondataonexit"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "postedfinalsessiondataonexit"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    if-ne v0, v6, :cond_4

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_2

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - Starting a new Analytic Session due to analytics becoming active"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/chillingo/crystal/PrivateSession;->initialiseAnalyticsSession(Z)V

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->prepareAnalyticsDataForPosting()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/chillingo/crystal/PrivateSession;->setupAnalyticsTimer(I)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - Scheduling a new Analytics post due to analytics becoming active"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-boolean v6, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    goto :goto_1
.end method

.method private clockSessionMinutes(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->isCrystalUiActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-eq v0, v1, :cond_1

    if-lez p1, :cond_1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->minutesSinceLastSessionData()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x1e

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clockSessionMinutes - Scheduling analytics post - mins since last post exceeded threshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v5, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->postCurrentSessionAnalyticsData()V

    iput-boolean v6, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    :cond_2
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/DataStore;->setCurrentSessionLength(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setSessionTimeStamp(Ljava/util/Date;)V

    invoke-direct {p0, v6}, Lcom/chillingo/crystal/PrivateSession;->updateDataStoreAnalytics(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->writeAnalyticsToFile()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->readyToGoUsageData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_5

    const-string v0, "Crystal"

    const-string v1, "clockSessionMinutes - Scheduling analytics post - usage data waiting"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-boolean v5, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_7

    const-string v2, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clockSessionMinutes - Scheduling analytics post - clock change? Mins since last post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-boolean v5, p0, Lcom/chillingo/crystal/PrivateSession;->_postCurrentSessionAnalytics:Z

    goto :goto_0
.end method

.method private doPostAnalyticData()V
    .locals 2

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_optOutOfAnalytics:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startPosting()V

    new-instance v0, Lcom/chillingo/crystal/serverdata/AnalyticData;

    invoke-direct {v0}, Lcom/chillingo/crystal/serverdata/AnalyticData;-><init>()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AnalyticData;->populateWithCurrentData()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/analytics"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/AnalyticData;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_lastAnalyticsPostTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - User opted out of analytics."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private everyMinute()V
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->clockSessionMinutes(I)V

    return-void
.end method

.method private initialiseIds(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    :try_start_0
    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->uniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/FileUtils;->overWriteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "PrivateSession"

    const-string v2, "Error creating unique device id, falling back to uuid"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "PrivateSession"

    const-string v1, "Unable to save device id\'s - the next session the user will not be logged in."

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private navController()Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_rootNavActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    return-object v0
.end method

.method private postChallengeResult(DZ)V
    .locals 5

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->challengeID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingResult:D

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SuperCarsII"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Magg1@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->hexHashForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://chillingo-crystal.appspot.com/crystal/challenge_result?challengeID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&result="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "challengestab"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/chillingo/crystal/PrivateSession;->activateCrystalUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/chillingo/crystal/ui/restorable/IRestorableUi;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/chillingo/crystal/serverdata/NullPost;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/NullPost;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/serverdata/NullPost;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    goto :goto_0
.end method

.method private postCurrentSessionAnalyticsData()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - Posting the current analytics session data"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->moveUsageDataToReadyToGo()V

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->doPostAnalyticData()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->impressionsDictionary()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->impressionsDictionary()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method private postPreviousSessionAnalyticsData()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - Posting the previous analytics session data"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->doPostAnalyticData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    invoke-direct {p0, v2}, Lcom/chillingo/crystal/PrivateSession;->updateDataStoreAnalytics(Z)Z

    return-void
.end method

.method private prepareAnalyticsDataForPosting()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "Crystal"

    const-string v1, "Private Session - Analytic Data - Preparing analytics data for posting"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->initialiseAnalyticsSessionId()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->moveUsageDataToReadyToGo()V

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->postPreviousSessionAnalyticsData()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->updateDataStoreAnalytics(Z)Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->writeAnalyticsToFile()V

    :cond_3
    return-void
.end method

.method private sdk()Ljava/lang/String;
    .locals 1

    const-string v0, "crystal"

    return-object v0
.end method

.method private setupAnalyticsTimer(I)V
    .locals 6

    const-wide/32 v2, 0xea60

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/PrivateSession;->clockSessionMinutes(I)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    new-instance v1, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;-><init>(Lcom/chillingo/crystal/PrivateSession;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static sharedInstance()Lcom/chillingo/crystal/PrivateSession;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/PrivateSession;->_sharedInstance:Lcom/chillingo/crystal/PrivateSession;

    return-object v0
.end method

.method private startChallengeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/challenge_start?challengeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private uniqueDeviceId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    const-string v0, "wifi"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    const-string v2, "PrivateSession.uniqueDeviceId - MAC Address is null!!!!!!!"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "Crystal"

    const-string v1, "PrivateSession.uniqueDeviceId - IMEI is null!!"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No way to uniquely identify the device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private updateDataStoreAnalytics(Z)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/chillingo/crystal/PrivateSession;->_optOutOfAnalytics:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "clientsessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "clientsessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "clientsessionid"

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticssessionidx"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticssessionidx"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticssessionidx"

    iget v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "currentsessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "currentsessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "currentsessionmins"

    iget v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessioninterval"

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->currentSessionDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevsessioninterval"

    iget-wide v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinsSinceLastSession:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevioussessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevioussessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "analyticsprevioussessionmins"

    iget v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionLastSessionMinutes:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessionstarttime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessionstarttime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessionstarttime"

    iget-wide v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionStartTimestamp:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastanalyticssessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastanalyticssessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastanalyticssessionid"

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessiondatainterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessiondatainterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lastsessiondatainterval"

    iget-wide v3, p0, Lcom/chillingo/crystal/PrivateSession;->_lastAnalyticsPostTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "impressions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "impressions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_a
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "impressions"

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->getImpressionData()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v2

    if-ne v2, v0, :cond_c

    const-string v0, "Crystal"

    const-string v2, "postPreviousSessionAnalyticsData - unable to set datastore dictionary currentSessionPostIndex"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ThemeUnzipped(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/CrystalDelegate;->ThemeUnzipped(I)V

    return-void
.end method

.method public achievementBuffer()Lcom/chillingo/crystal/AchievementBuffer;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    return-object v0
.end method

.method public achievementFinishedDisplaying(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_displayingPopup:Z

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_awaitingPopups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_awaitingPopups:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/chillingo/crystal/PrivateSession;->presentPopupNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activateCrystalUi(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/chillingo/crystal/ui/restorable/IRestorableUi;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/chillingo/crystal/DataStore;->logUsageDataForUiActivated(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/PrivateSession;->activateCrystalUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "challengestab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_1
    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    move-object p2, v0

    :cond_1
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;

    invoke-direct {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;-><init>()V

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->navController()Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/chillingo/crystal/NavigationController;->setPreloadTab(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab;->attachToView()V

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PadTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/PrivateSession;->uiHasBeenActivated(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_loginHandler:Lcom/chillingo/crystal/LoginHandler;

    invoke-virtual {v1}, Lcom/chillingo/crystal/LoginHandler;->uiHasBeenActivated()V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    invoke-virtual {v1}, Lcom/chillingo/crystal/LocationWatcher;->startUpdating()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public activateCrystalUiOnTab(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chillingo/crystal/PrivateSession;->activateCrystalUiOnTab(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public activateCrystalUiOnTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/PrivateSession;->activateCrystalUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public activateCrystalUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "challengestab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "challengestab"

    invoke-direct {p0, v2, v0, p3}, Lcom/chillingo/crystal/PrivateSession;->activateMainUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/chillingo/crystal/PrivateSession;->activateMainUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v1, p3}, Lcom/chillingo/crystal/PrivateSession;->activateMainUiOnTab(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public activeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_activeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public addCommonFieldsToFormModel(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const-string v0, "crystal-latitude"

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_currentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crystal-longitude"

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_currentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "_spring_security_remember_me"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "crystal-latitude"

    const-string v1, "unknown"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crystal-longitude"

    const-string v1, "unknown"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addHeadersToUrlRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 14

    const-string v0, "x-crystal-appid"

    const-string v1, "x-crystal-udid"

    const-string v2, "x-crystal-secret"

    const-string v3, "x-crystal-appversion"

    const-string v4, "x-crystal-crystalversion"

    const-string v5, "x-crystal-uname"

    const-string v6, "x-crystal-themecaps"

    const-string v7, "x-crystal-connection"

    const-string v8, "x-crystal-market"

    const-string v9, "x-crystal-sdkname"

    const-string v10, "x-crystal-android-uuid"

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v0, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_marketType:Lcom/chillingo/crystal/MarketType;

    invoke-virtual {v0}, Lcom/chillingo/crystal/MarketType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_secret:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->secretKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperCarsII"

    const-string v8, "Magg1@"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->hexHashForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_secret:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_secret:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###0.0000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->appVersion()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2.3"

    invoke-virtual {p1, v4, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/ReachabilityStatus;->connectionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chillingo/crystal/PrivateSession;->sdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/ui/theming/Theming;->instance()Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->themeCapsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v6, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->uuid()Ljava/util/UUID;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v10, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public appId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    return-object v0
.end method

.method public appStartedWithIntent(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crystal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    :cond_0
    const-string v0, "PushNotification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method

.method public appVersion()D
    .locals 2

    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_version:D

    return-wide v0
.end method

.method public attachableUserInterfaceDelegate()Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_attachableUserInterfaceDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;

    return-object v0
.end method

.method public buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/chillingo/crystal/PrivateSession$1;->$SwitchMap$com$chillingo$crystal$ModalDialogState:[I

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dialogState:Lcom/chillingo/crystal/ModalDialogState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/ModalDialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/chillingo/crystal/ModalDialogState;->Idle:Lcom/chillingo/crystal/ModalDialogState;

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dialogState:Lcom/chillingo/crystal/ModalDialogState;

    const-string v0, "button1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingResult:D

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/crystal/PrivateSession;->postChallengeResult(DZ)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingResult:D

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/crystal/PrivateSession;->postChallengeResult(DZ)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/CrystalDelegate;->crystalUiDeactivated()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/chillingo/crystal/ModalDialogState;->Idle:Lcom/chillingo/crystal/ModalDialogState;

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dialogState:Lcom/chillingo/crystal/ModalDialogState;

    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingResult:D

    invoke-direct {p0, v0, v1, v2}, Lcom/chillingo/crystal/PrivateSession;->postChallengeResult(DZ)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/CrystalDelegate;->crystalUiDeactivated()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cancelMainThreadItem(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->stopFetching()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->stopPosting()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_sessionInitialised:Z

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_secret:Ljava/lang/String;

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->close()V

    :cond_1
    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttpManager;

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->close()V

    :cond_2
    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->close()V

    :cond_3
    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService;->unbind()V

    :cond_4
    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_loginHandler:Lcom/chillingo/crystal/LoginHandler;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_player:Lcom/chillingo/crystal/CrystalPlayer;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_virtualGoods:Lcom/chillingo/crystal/CrystalVirtualGoods;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_leaderboards:Lcom/chillingo/crystal/CrystalLeaderboards;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_achievements:Lcom/chillingo/crystal/CrystalAchievements;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_facebook:Lcom/facebook/android/Facebook;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_twitter:Lcom/sugree/twitter/Twitter;

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    return-void
.end method

.method public context()Landroid/content/Context;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_context:Landroid/content/Context;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public crystalAchievements()Lcom/chillingo/crystal/CrystalAchievements;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_achievements:Lcom/chillingo/crystal/CrystalAchievements;

    return-object v0
.end method

.method public crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_leaderboards:Lcom/chillingo/crystal/CrystalLeaderboards;

    return-object v0
.end method

.method public crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_player:Lcom/chillingo/crystal/CrystalPlayer;

    return-object v0
.end method

.method public crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_virtualGoods:Lcom/chillingo/crystal/CrystalVirtualGoods;

    return-object v0
.end method

.method public currentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public currentSessionDuration()J
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionLastSessionMinutes:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public currentSessionPostIndex()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    return v0
.end method

.method public currentSessionStartTimestamp()D
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionStartTimestamp:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_previousSessionStartTimestamp:D

    goto :goto_0
.end method

.method public currentSessionTimeStamp()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public dataStore()Lcom/chillingo/crystal/DataStore;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    return-object v0
.end method

.method public deactivateCrystalUi()V
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->uiHasBeenActivated(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    invoke-virtual {v0}, Lcom/chillingo/crystal/LocationWatcher;->stopUpdating()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/CrystalDelegate;->crystalUiDeactivated()V

    return-void
.end method

.method public delegate()Lcom/chillingo/crystal/CrystalDelegate;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_delegate:Lcom/chillingo/crystal/CrystalDelegate;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doUserSignIn()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->isUserSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "PrivateSession - User is already signed in"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setLoggedIn(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_player:Lcom/chillingo/crystal/CrystalPlayer;

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->signIn()V

    goto :goto_0
.end method

.method public doUserSignOut()V
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->isUserSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "PrivateSession - User is already signed out"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setLoggedIn(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    invoke-virtual {v0}, Lcom/chillingo/crystal/AchievementBuffer;->clearBuffer()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_player:Lcom/chillingo/crystal/CrystalPlayer;

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->signOut()V

    goto :goto_0
.end method

.method public facebook()Lcom/facebook/android/Facebook;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public facebookDoLogoutRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_facebookDoLogoutRefresh:Z

    return v0
.end method

.method public fetchManager()Lcom/chillingo/crystal/http/FetchManager;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    return-object v0
.end method

.method public gamePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_gamePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionData()Lorg/json/JSONArray;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->impressionsDictionary()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->impressionsDictionary()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public hideSip(Landroid/view/Window;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public inAppPurchaseSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_inAppPurchaseSupported:Z

    return v0
.end method

.method public init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;Z)V
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Crystal"

    const-string v1, "PrivateSession - Crystal Session started"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/chillingo/crystal/PersistableCookieStore;->initialise(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_appWnd:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/PrivateSession;->setCrystalDelegate(Lcom/chillingo/crystal/CrystalDelegate;)V

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/PrivateSession;->setContext(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/chillingo/crystal/PrivateSession;->_gamePackageName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/chillingo/crystal/PrivateSession;->_version:D

    iput-object p8, p0, Lcom/chillingo/crystal/PrivateSession;->_secretKey:Ljava/lang/String;

    iput-object p10, p0, Lcom/chillingo/crystal/PrivateSession;->_marketType:Lcom/chillingo/crystal/MarketType;

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/PrivateSession;->initialiseDeviceIdsFromFile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/chillingo/crystal/PrivateSession;->initialiseIds(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateSession - AppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_version:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ThemeResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentTheme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/DataStore;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->open()V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->moveUsageDataToReadyToGo()V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/DataStore;->setAppId(Ljava/lang/String;)V

    new-instance v1, Lcom/chillingo/crystal/CrystalPreferences;

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_gamePackageName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/chillingo/crystal/CrystalPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/CrystalPreferences;->setAppId(Ljava/lang/String;)V

    new-instance v2, Lcom/chillingo/crystal/http/Reachability;

    invoke-direct {v2, v0}, Lcom/chillingo/crystal/http/Reachability;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    new-instance v2, Lcom/chillingo/crystal/http/AsyncHttpManager;

    invoke-direct {v2}, Lcom/chillingo/crystal/http/AsyncHttpManager;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttpManager;

    new-instance v2, Lcom/chillingo/crystal/http/FetchManager;

    invoke-direct {v2}, Lcom/chillingo/crystal/http/FetchManager;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_asyncHttp:Lcom/chillingo/crystal/http/AsyncHttpManager;

    invoke-virtual {v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->setAsyncHttp(Lcom/chillingo/crystal/http/AsyncHttp;)V

    new-instance v2, Lcom/chillingo/crystal/AchievementBuffer;

    invoke-direct {v2}, Lcom/chillingo/crystal/AchievementBuffer;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    new-instance v2, Lcom/chillingo/crystal/LoginHandler;

    invoke-direct {v2}, Lcom/chillingo/crystal/LoginHandler;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_loginHandler:Lcom/chillingo/crystal/LoginHandler;

    new-instance v2, Lcom/chillingo/crystal/CrystalPlayer;

    invoke-direct {v2}, Lcom/chillingo/crystal/CrystalPlayer;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_player:Lcom/chillingo/crystal/CrystalPlayer;

    new-instance v2, Lcom/chillingo/crystal/CrystalVirtualGoods;

    invoke-direct {v2}, Lcom/chillingo/crystal/CrystalVirtualGoods;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_virtualGoods:Lcom/chillingo/crystal/CrystalVirtualGoods;

    new-instance v2, Lcom/chillingo/crystal/CrystalLeaderboards;

    invoke-direct {v2}, Lcom/chillingo/crystal/CrystalLeaderboards;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_leaderboards:Lcom/chillingo/crystal/CrystalLeaderboards;

    new-instance v2, Lcom/chillingo/crystal/CrystalAchievements;

    invoke-direct {v2}, Lcom/chillingo/crystal/CrystalAchievements;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_achievements:Lcom/chillingo/crystal/CrystalAchievements;

    new-instance v2, Lcom/chillingo/crystal/LocationWatcher;

    invoke-direct {v2, v0}, Lcom/chillingo/crystal/LocationWatcher;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    new-instance v2, Lcom/facebook/android/Facebook;

    const-string v3, "133831811331"

    invoke-direct {v2, v3}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_facebook:Lcom/facebook/android/Facebook;

    new-instance v2, Lcom/sugree/twitter/Twitter;

    invoke-direct {v2}, Lcom/sugree/twitter/Twitter;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_twitter:Lcom/sugree/twitter/Twitter;

    new-instance v2, Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-direct {v2}, Lcom/chillingo/crystal/market/MarketNotificationService;-><init>()V

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/market/MarketNotificationService;->setContext(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-virtual {v2}, Lcom/chillingo/crystal/market/MarketNotificationService;->checkBillingSupported()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/chillingo/crystal/PrivateSession;->_inAppPurchaseSupported:Z

    :cond_3
    if-nez p11, :cond_7

    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v2

    invoke-virtual {v2, p7, p4, p2}, Lcom/chillingo/crystal/ui/theming/Theming;->setCurrentThemeFromResource(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentTheme:I

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/chillingo/crystal/PrivateSession;->_shouldClearFetchManagerOnStartup:Z

    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPreferences;->getC2dmKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v0, "PrivateSession"

    const-string v2, "PrivateSession::init - Acquired c2dm key whilst sleeping, posting token."

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/chillingo/crystal/CrystalPreferences;->getC2dmKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/CrystalPreferences;->setC2dmKey(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->postDeviceToken(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_initialiseAnalytics:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->initialiseAnalyticsSession(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_initialiseAnalytics:Z

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startPosting()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startFetching()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_sessionInitialised:Z

    return-void

    :cond_7
    invoke-static {v0}, Lcom/chillingo/crystal/ui/theming/Theming;->instance(Landroid/content/Context;)Lcom/chillingo/crystal/ui/theming/Theming;

    move-result-object v2

    invoke-virtual {v2, p7, p4, v0, p0}, Lcom/chillingo/crystal/ui/theming/Theming;->setCurrentThemeFromResourceInBackground(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/chillingo/crystal/ThemingDelegate;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->pushRegistered()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const-string v1, "PrivateSession"

    const-string v2, "PrivateSession::init - No c2dm key, registering"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {v0}, Lcom/chillingo/crystal/PushReceiver;->register(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public initialiseAnalyticsSession(Z)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "PrivateSession - Analytics"

    const-string v1, "<< Initialising Analytics Session >>"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/chillingo/crystal/PrivateSession;->_lastAnalyticsPostTime:J

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v1}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->initialiseAnalyticsSessionId()V

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_1

    const-string v2, "PrivateSession - Analytics"

    const-string v3, "<< Analytics Previous Session Data >>"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "lastanalyticssessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "lastanalyticssessionid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_3

    const-string v2, "PrivateSession - Analytics"

    const-string v3, "Analytics session is an update. Setting previous session Id to -1"

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "-1"

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    :cond_4
    :goto_0
    const-string v2, "postedfinalsessiondataonexit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v2}, Lcom/chillingo/crystal/DataStore;->currentSessionLength()I

    move-result v2

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_lastSessionMinutes:I

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v2}, Lcom/chillingo/crystal/DataStore;->sessionTimeStamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v3, v5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSession:I

    :goto_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_6

    const-string v2, "PrivateSession - Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minutes since last session for previous session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSession:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_lastSessionMinutes:I

    const-string v2, "analyticsprevioussessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "analyticsprevioussessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_lastSessionMinutes:I

    :cond_7
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_8

    const-string v2, "PrivateSession - Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last session time for previous session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/crystal/PrivateSession;->_lastSessionMinutes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v2, -0x1

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionLastSessionMinutes:I

    const-string v2, "currentsessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "currentsessionmins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionLastSessionMinutes:I

    :cond_9
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_a

    const-string v2, "PrivateSession - Analytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last session time for current session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionLastSessionMinutes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinsSinceLastSession:J

    const-string v2, "lastsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "lastsessioninterval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinsSinceLastSession:J

    :cond_b
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_c

    const-string v0, "PrivateSession - Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minutes since previous session for current session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinsSinceLastSession:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    const-string v0, "analyticssessionidx"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "analyticssessionidx"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    :cond_d
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v7, :cond_e

    const-string v0, "PrivateSession - Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current session post index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionPostIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionStartTimestamp:D

    iget-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionStartTimestamp:D

    iput-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_previousSessionStartTimestamp:D

    const-string v0, "lastsessionstarttime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "lastsessionstarttime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_previousSessionStartTimestamp:D

    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    if-eqz p1, :cond_10

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->setupAnalyticsTimer(I)V

    :cond_10
    :goto_2
    return-void

    :cond_11
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v2

    if-ne v2, v7, :cond_4

    const-string v2, "PrivateSession - Analytics"

    const-string v3, "Previous analytics session data was posted on exit."

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v1

    if-ne v1, v7, :cond_12

    const-string v1, "PrivateSession - Analytics"

    const-string v2, "JSONException when retrieving previous analytics info"

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_13
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSession:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public initialiseAnalyticsSessionId()V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "PrivateSession - Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated new Analytics Session Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initialiseDeviceIdsFromFile(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :try_start_0
    invoke-static {v3}, Lcom/chillingo/crystal/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iput-object v4, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v4

    if-ne v4, v0, :cond_0

    const-string v0, "PrivateSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading uuid to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCrystalUiActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_activeUserInterfaceType:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    return-object v0
.end method

.method public isFinalSessionPost()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsPreviousSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserSignedIn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->loginHandler()Lcom/chillingo/crystal/LoginHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/LoginHandler;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public lastSessionMinutes()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_lastSessionMinutes:I

    return v0
.end method

.method public loginHandler()Lcom/chillingo/crystal/LoginHandler;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_loginHandler:Lcom/chillingo/crystal/LoginHandler;

    return-object v0
.end method

.method public marketService()Lcom/chillingo/crystal/market/MarketNotificationService;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_marketService:Lcom/chillingo/crystal/market/MarketNotificationService;

    return-object v0
.end method

.method public minutesSinceLastSession()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSession:I

    return v0
.end method

.method public minutesSinceLastSessionData()J
    .locals 4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSessionData:J

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "lastsessiondatainterval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->analyticsDictionary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "lastsessiondatainterval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSessionData:J

    :cond_0
    iget-wide v0, p0, Lcom/chillingo/crystal/PrivateSession;->_minutesSinceLastSessionData:J

    return-wide v0
.end method

.method public navigationController()Lcom/chillingo/crystal/NavigationController;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_rootNavActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    return-object v0
.end method

.method public notifyStartChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "challengeID"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameConfigID"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isErrorLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Crystal"

    const-string v1, "PrivateSession notifyStartChallenge - no challenge ID or game config"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v2, v1}, Lcom/chillingo/crystal/DataStore;->setChallengeID(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v2, v0}, Lcom/chillingo/crystal/DataStore;->setChallengeConfig(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/PrivateSession;->startChallengeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyStartChallengeConfirmed()V
    .locals 2

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->deactivateCrystalUi()V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->challengeConfig()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_rootNavActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_rootNavActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->challengeStartConfirmed()V

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/chillingo/crystal/CrystalDelegate;->challengeStarted(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/PrivateSession;->setupAnalyticsTimer(I)V

    return-void
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    instance-of v1, v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlUpdatePlayerData()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalPlayer;->updatePlayerInfo()V

    :cond_0
    return-void
.end method

.method public postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/chillingo/crystal/AchievementBuffer;->postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public postAchievementProgress(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    const-wide/high16 v0, 0x4059

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p4, v1}, Lcom/chillingo/crystal/PrivateSession;->postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0, p4, p1}, Lcom/chillingo/crystal/DataStore;->setTextForToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postDeviceToken(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startPosting()V

    if-eqz p1, :cond_0

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/c2dm_register.cuid"

    new-instance v1, Lcom/chillingo/crystal/serverdata/DeviceToken;

    invoke-direct {v1, v0, p1}, Lcom/chillingo/crystal/serverdata/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setPushRegistered(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "https://chillingo-crystal.appspot.com/crystal/apns_off.apns"

    new-instance v1, Lcom/chillingo/crystal/serverdata/DeviceToken;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/chillingo/crystal/serverdata/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    goto :goto_0
.end method

.method public postLeaderboardResult(Ljava/lang/String;DZZ)V
    .locals 6

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_achievementBuffer:Lcom/chillingo/crystal/AchievementBuffer;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/AchievementBuffer;->postLeaderboardResult(Ljava/lang/String;DZZ)V

    return-void
.end method

.method public postOffer(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_secretKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "https://chillingo-crystal.appspot.com/crystal/post_earned_vc?payPerActionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/serverdata/NullPost;

    invoke-direct {v1, v0}, Lcom/chillingo/crystal/serverdata/NullPost;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/serverdata/NullPost;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_fetchManager:Lcom/chillingo/crystal/http/FetchManager;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void
.end method

.method public postResultForLastChallenge(DZ)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "PrivateSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+PrivateSession::postResultForLastChallenge( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dataStore:Lcom/chillingo/crystal/DataStore;

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->challengeID()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/chillingo/crystal/PrivateSession;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "PrivateSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateSession::postResultForLastChallenge - Posting result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for challenge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-wide p1, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingResult:D

    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/Reachability;->status()Lcom/chillingo/crystal/http/ReachabilityStatus;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/http/ReachabilityStatus;->NoConnection:Lcom/chillingo/crystal/http/ReachabilityStatus;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResultsUnreachable:Lcom/chillingo/crystal/ModalDialogState;

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dialogState:Lcom/chillingo/crystal/ModalDialogState;

    const-string v0, "Challenge Results"

    const-string v1, "Thank you for completing the challenge. Please start this game again when you have an Internet connection in order to post your results."

    const-string v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v1, "PrivateSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateSession::postResultForLastChallenge - creating dialog, active layout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_activeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/PrivateSession;->_activeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "PrivateSession"

    const-string v2, "PrivateSession::postResultForLastChallenge - showing dialog"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V

    :goto_1
    return-void

    :cond_5
    sget-object v0, Lcom/chillingo/crystal/ModalDialogState;->PostChallengeResults:Lcom/chillingo/crystal/ModalDialogState;

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_dialogState:Lcom/chillingo/crystal/ModalDialogState;

    const-string v0, "Challenge Results"

    const-string v1, "You have completed a challenge. Would you like to view the results?"

    const-string v2, "Yes"

    const-string v3, "No"

    invoke-static {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "PrivateSession"

    const-string v1, "PrivateSession::postResultForLastChallenge - posting challenge"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chillingo/crystal/PrivateSession;->postChallengeResult(DZ)V

    goto :goto_1
.end method

.method public presentPopupNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/chillingo/crystal/PrivateSession;->presentPopupNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public presentPopupNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateSession.presentPopupNotification title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_displayingPopup:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "AchievementPopup"

    const-string v1, "_displayingPopup == false"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_displayingPopup:Z

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/PrivateSession;->_activeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->show()V

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "AchievementPopup"

    const-string v1, "queuing popup"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;

    invoke-direct {v0, p0, p1, p2}, Lcom/chillingo/crystal/PrivateSession$InternalPopupDetails;-><init>(Lcom/chillingo/crystal/PrivateSession;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chillingo/crystal/PrivateSession;->_awaitingPopups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reachability()Lcom/chillingo/crystal/http/Reachability;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_reachability:Lcom/chillingo/crystal/http/Reachability;

    return-object v0
.end method

.method public receivedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->isCrystalUiActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->GlobalNavigationActivity:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PadTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->navigationController()Lcom/chillingo/crystal/NavigationController;

    move-result-object v1

    const-string v2, "challengestab"

    invoke-virtual {v1, p2, v0, v2}, Lcom/chillingo/crystal/NavigationController;->displayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Incoming Challenge"

    const-string v1, "challenge_results"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Incoming Challenge Result"

    :cond_2
    const-string v1, "Please open Crystal for more information"

    invoke-virtual {p0, v0, v1}, Lcom/chillingo/crystal/PrivateSession;->presentPopupNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public secretKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_analyticsCurrentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public sessionInitialised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_sessionInitialised:Z

    return v0
.end method

.method public sessionMinsSinceStart()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentSessionMinutes:I

    return v0
.end method

.method public setActiveLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession;->_activeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setAnalyticsOptOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/PrivateSession;->_optOutOfAnalytics:Z

    return-void
.end method

.method public setAttachableUserInterfaceDelegate(Lcom/chillingo/crystal/IAttachableUserInterfaceDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_attachableUserInterfaceDelegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession;->_context:Landroid/content/Context;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCrystalDelegate(Lcom/chillingo/crystal/CrystalDelegate;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession;->_delegate:Lcom/chillingo/crystal/CrystalDelegate;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setFacebookDoLogoutRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/PrivateSession;->_facebookDoLogoutRefresh:Z

    return-void
.end method

.method public setInAppPurchaseSupported(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/chillingo/crystal/PrivateSession;->_inAppPurchaseSupported:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/CrystalDelegate;->inAppPurchaseSupported(Z)V

    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession;->_currentLocation:Landroid/location/Location;

    return-void
.end method

.method public setNavController(Lcom/chillingo/crystal/NavigationController;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_rootNavActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSupportedOrientations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_orientationList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTwitterDoLogoutRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/PrivateSession;->_twitterDoLogoutRefresh:Z

    return-void
.end method

.method public setUserWasAskedForFacebookInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chillingo/crystal/PrivateSession;->_userWasAskedForFacebookInput:Z

    return-void
.end method

.method public shouldLaunchChallenges()Z
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_pendingIncomingUrl:Ljava/lang/String;

    const-string v1, "crystal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startLocationWatcher()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_locWatcher:Lcom/chillingo/crystal/LocationWatcher;

    invoke-virtual {v0}, Lcom/chillingo/crystal/LocationWatcher;->startUpdating()V

    return-void
.end method

.method public supportedOrientations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_orientationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public twitter()Lcom/sugree/twitter/Twitter;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_twitter:Lcom/sugree/twitter/Twitter;

    return-object v0
.end method

.method public twitterDoLogoutRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_twitterDoLogoutRefresh:Z

    return v0
.end method

.method public uiHasBeenActivated(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V
    .locals 2

    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession;->_activeUserInterfaceType:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_activeUserInterfaceType:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_loginHandler:Lcom/chillingo/crystal/LoginHandler;

    invoke-virtual {v0}, Lcom/chillingo/crystal/LoginHandler;->uiHasBeenActivated()V

    :cond_0
    return-void
.end method

.method public userWasAskedForFacebookInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/PrivateSession;->_userWasAskedForFacebookInput:Z

    return v0
.end method

.method public uuid()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession;->_uuid:Ljava/util/UUID;

    return-object v0
.end method
