.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;
.super Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;

# interfaces
.implements Lcom/chillingo/crystal/CrystalDelegate;


# static fields
.field private static mDebugLog:Z

.field private static mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

.field private static mIsRunningUnity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

    invoke-direct {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

    sput-boolean v1, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mDebugLog:Z

    sput-boolean v1, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

    return-object v0
.end method

.method public static appStartedWithIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/chillingo/crystal/CrystalSession;->appStartedWithIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static close()V
    .locals 0

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->close()V

    return-void
.end method

.method public static debugLog()Z
    .locals 1

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mDebugLog:Z

    return v0
.end method

.method public static displayHeight()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->height()I

    move-result v0

    return v0
.end method

.method public static displayWidth()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/utils/HardwareUtils;->screenResolution(Landroid/content/Context;)Lcom/chillingo/crystal/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/utils/Size;->width()I

    move-result v0

    return v0
.end method

.method public static initNdk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v0, 0x0

    sput-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

    const/4 v8, 0x0

    invoke-static {}, Lcom/chillingo/crystal/MarketType;->values()[Lcom/chillingo/crystal/MarketType;

    move-result-object v1

    aget-object v9, v1, p7

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v9}, Lcom/chillingo/crystal/CrystalSession;->init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;)V

    return-void
.end method

.method public static initUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    invoke-static {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->setCamera(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v7

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;-><init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static isCrystalUIActive()I
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->isCrystalUIActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static isRunningUnity()Z
    .locals 1

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    return v0
.end method

.method private static logUnityMessage(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mDebugLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogMessage"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeChallengeStarted(Ljava/lang/String;)V
.end method

.method private native nativeCrystalUiDeactivated()V
.end method

.method private native nativeInAppPurchaseSupported(Z)V
.end method

.method public static postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalSession;->postAchievement(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static postAchievementProgress(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/chillingo/crystal/CrystalSession;->postAchievementProgress(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method public static postLeaderboardResult(Ljava/lang/String;DZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/chillingo/crystal/CrystalSession;->postLeaderboardResult(Ljava/lang/String;DZZ)V

    return-void
.end method

.method public static postOffer(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/chillingo/crystal/CrystalSession;->postOffer(Ljava/lang/String;)V

    return-void
.end method

.method public static postResultForLastChallenge(DZ)V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "UnityCrystalSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnityCrystalSession::postResultForLastChallenge - Posting challenge result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/chillingo/crystal/CrystalSession;->postResultForLastChallenge(DZ)V

    return-void
.end method

.method public static setDebugLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mDebugLog:Z

    return-void
.end method

.method public static setSupportedOrientations([I)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/chillingo/crystal/CrystalSession;->setSupportedOrientations(Ljava/util/List;)V

    return-void
.end method

.method public static shouldLaunchChallenges()Z
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->shouldLaunchChallenges()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public ThemeUnzipped(I)V
    .locals 0

    return-void
.end method

.method public challengeStarted(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnityCrystalSession::challengeStarted(String gameConfig) gameConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->logUnityMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChallengeStarted"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->nativeChallengeStarted(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public crystalUiDeactivated()V
    .locals 3

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    if-eqz v0, :cond_0

    const-string v0, "UnityCrystalSession::crystalUiDeactivated()"

    invoke-static {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->logUnityMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrystalUiDeactivated"

    const-string v2, "Not used"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->nativeCrystalUiDeactivated()V

    goto :goto_0
.end method

.method public inAppPurchaseSupported(Z)V
    .locals 3

    sget-boolean v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->mIsRunningUnity:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoInAppPurchaseSupported"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->nativeInAppPurchaseSupported(Z)V

    goto :goto_0
.end method
