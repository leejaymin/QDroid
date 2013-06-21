.class public final Lcom/chillingo/crystal/CrystalSession;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appStartedWithIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->appStartedWithIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static close()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->close()V

    return-void
.end method

.method public static crystalAchievements()Lcom/chillingo/crystal/CrystalAchievements;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalAchievements()Lcom/chillingo/crystal/CrystalAchievements;

    move-result-object v0

    return-object v0
.end method

.method public static crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v0

    return-object v0
.end method

.method public static crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalPlayer()Lcom/chillingo/crystal/CrystalPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalVirtualGoods()Lcom/chillingo/crystal/CrystalVirtualGoods;

    move-result-object v0

    return-object v0
.end method

.method public static hideSip(Landroid/view/Window;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->hideSip(Landroid/view/Window;)V

    return-void
.end method

.method public static inAppPurchaseSupported()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->inAppPurchaseSupported()Z

    move-result v0

    return v0
.end method

.method public static init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/chillingo/crystal/CrystalSession;->init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;Z)V

    return-void
.end method

.method public static init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;Z)V
    .locals 12

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CrystalSession"

    const-string v1, "+CrystalSession.init()"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/chillingo/crystal/PrivateSession;->init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;Z)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "CrystalSession"

    const-string v1, "-CrystalSession.init()"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isCrystalUIActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->isCrystalUiActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public static onActivityPause()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->onActivityPause()V

    return-void
.end method

.method public static onActivityResume()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->onActivityResume()V

    return-void
.end method

.method public static postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chillingo/crystal/PrivateSession;->postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static postAchievementProgress(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chillingo/crystal/PrivateSession;->postAchievementProgress(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public static postLeaderboardResult(Ljava/lang/String;DZZ)V
    .locals 6

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalLeaderboards()Lcom/chillingo/crystal/CrystalLeaderboards;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/CrystalLeaderboards;->postLeaderboardResult(Ljava/lang/String;DZZ)V

    return-void
.end method

.method public static postOffer(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->postOffer(Ljava/lang/String;)V

    return-void
.end method

.method public static postResultForLastChallenge(DZ)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CrystalSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CrystalSession::postResultForLastChallenge - Posting challenge result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/chillingo/crystal/PrivateSession;->postResultForLastChallenge(DZ)V

    return-void
.end method

.method public static setActiveLayout(Landroid/widget/RelativeLayout;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setActiveLayout(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public static setAnalyticsOptOut(Z)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setAnalyticsOptOut(Z)V

    return-void
.end method

.method public static setSupportedOrientations(Ljava/util/List;)V
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

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/PrivateSession;->setSupportedOrientations(Ljava/util/List;)V

    return-void
.end method

.method public static setTosAccepted(Z)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/DataStore;->setTosAccepted(Z)V

    return-void
.end method

.method public static shouldLaunchChallenges()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->shouldLaunchChallenges()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public crystalDelegate()Lcom/chillingo/crystal/CrystalDelegate;
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->delegate()Lcom/chillingo/crystal/CrystalDelegate;

    move-result-object v0

    return-object v0
.end method

.method public setCrystalDelegate(Lcom/chillingo/crystal/CrystalDelegate;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/PrivateSession;->setCrystalDelegate(Lcom/chillingo/crystal/CrystalDelegate;)V

    return-void
.end method
