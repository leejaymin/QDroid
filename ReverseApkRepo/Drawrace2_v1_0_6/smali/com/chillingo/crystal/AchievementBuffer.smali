.class public Lcom/chillingo/crystal/AchievementBuffer;
.super Ljava/lang/Object;


# static fields
.field private static final KSecretKey2:Ljava/lang/String; = "Magg1@"


# instance fields
.field private _havePostedThisSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private _lastPostDate:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/AchievementBuffer;->_havePostedThisSession:Ljava/util/Map;

    return-void
.end method

.method private clearPostQueueForAchievement(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "achievementID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearPostWithPartialUrl(Ljava/lang/String;)V

    return-void
.end method

.method private clearPostQueueForLeaderboard(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaderboardID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/http/FetchManager;->clearPostWithPartialUrl(Ljava/lang/String;)V

    return-void
.end method

.method private doPostAchievement(Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/AchievementBuffer;->clearPostQueueForAchievement(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->secretKey()Ljava/lang/String;

    move-result-object v3

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

    const-string v4, "https://chillingo-crystal.appspot.com/crystal/achievement_obtained?achievementID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&sig="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/serverdata/NullPost;

    invoke-direct {v2, v0}, Lcom/chillingo/crystal/serverdata/NullPost;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AchievementData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/chillingo/crystal/serverdata/NullPost;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private doPostScore(Ljava/lang/String;D)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/AchievementBuffer;->clearPostQueueForLeaderboard(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {v1, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->secretKey()Ljava/lang/String;

    move-result-object v3

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

    const-string v4, "https://chillingo-crystal.appspot.com/crystal/leaderboard_score_obtained?leaderboardID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sig="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/chillingo/crystal/serverdata/NullPost;

    invoke-direct {v2, v1}, Lcom/chillingo/crystal/serverdata/NullPost;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/chillingo/crystal/serverdata/FetchPriority;->LeaderboardData:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/chillingo/crystal/serverdata/NullPost;->setFetchPriority(Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->scheduleDataForPost(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void
.end method

.method private logTimeAndPassedMidnight()Z
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "America/Los_Angeles"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/chillingo/crystal/AchievementBuffer;->_lastPostDate:Ljava/util/Calendar;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/chillingo/crystal/AchievementBuffer;->_lastPostDate:Ljava/util/Calendar;

    return v0

    :cond_1
    iget-object v2, p0, Lcom/chillingo/crystal/AchievementBuffer;->_lastPostDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loggedInRecently(Ljava/util/Date;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    const-wide/16 v3, 0x18

    div-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->clearAchievements()V

    invoke-virtual {v0}, Lcom/chillingo/crystal/DataStore;->clearScores()V

    return-void
.end method

.method public postAchievement(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/chillingo/crystal/DataStore;->achievementObtained(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, p3, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcom/chillingo/crystal/DataStore;->signInTime()Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/chillingo/crystal/AchievementBuffer;->loggedInRecently(Ljava/util/Date;)Z

    move-result v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/chillingo/crystal/AchievementBuffer;->doPostAchievement(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v3, p2, p3}, Lcom/chillingo/crystal/DataStore;->setAchievementObtained(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v3, p2}, Lcom/chillingo/crystal/DataStore;->achievementPopUpShown(Ljava/lang/String;)Z

    move-result v4

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_7

    if-nez p5, :cond_2

    if-nez v4, :cond_6

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2, p1, p4}, Lcom/chillingo/crystal/PrivateSession;->presentPopupNotification(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v1}, Lcom/chillingo/crystal/DataStore;->setAchievementPopUpShown(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_3

    const-string v2, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AchievementBuffer - Displayed popup for achievement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and saved"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v1

    :cond_4
    :goto_1
    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    const-class v1, Lcom/chillingo/crystal/serverdata/AchievementData;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->deleteItemsOfTypeFromTemporaryCache(Ljava/lang/Class;)V

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v3

    if-ne v3, v1, :cond_4

    const-string v3, "Crystal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AchievementBuffer - Already displayed popup for achievement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    if-nez v4, :cond_4

    invoke-virtual {v3, p2, v1}, Lcom/chillingo/crystal/DataStore;->setAchievementPopUpShown(Ljava/lang/String;Z)V

    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "Achievement"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/AchievementBuffer;->postAchievement(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public postLeaderboardResult(Ljava/lang/String;DZZ)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v2

    invoke-direct {p0}, Lcom/chillingo/crystal/AchievementBuffer;->logTimeAndPassedMidnight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/AchievementBuffer;->_havePostedThisSession:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz p5, :cond_1

    iget-object v1, p0, Lcom/chillingo/crystal/AchievementBuffer;->_havePostedThisSession:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2, p1}, Lcom/chillingo/crystal/DataStore;->deleteScore(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chillingo/crystal/AchievementBuffer;->_havePostedThisSession:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p1}, Lcom/chillingo/crystal/DataStore;->scoreForLeaderboard(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, p2, v4

    if-gez v4, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_2

    const-string v1, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AchievementBuffer - Lower first and lower result, posting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/chillingo/crystal/DataStore;->signInTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/chillingo/crystal/AchievementBuffer;->loggedInRecently(Ljava/util/Date;)Z

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/chillingo/crystal/AchievementBuffer;->doPostScore(Ljava/lang/String;D)V

    :cond_3
    invoke-virtual {v2, p1, p2, p3}, Lcom/chillingo/crystal/DataStore;->setScoreForLeaderboard(Ljava/lang/String;D)V

    :cond_4
    return-void

    :cond_5
    if-nez p4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, p2, v3

    if-lez v3, :cond_7

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_2

    const-string v1, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AchievementBuffer - Higher first and higher result, posting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_2

    const-string v1, "Crystal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AchievementBuffer - No previous record so posting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
