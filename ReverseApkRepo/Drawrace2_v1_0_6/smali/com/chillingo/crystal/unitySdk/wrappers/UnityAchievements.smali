.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;
.super Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;

# interfaces
.implements Lcom/chillingo/crystal/CrystalAchievementsDelegate;


# static fields
.field private static mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;

    new-instance v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;

    invoke-direct {v0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;-><init>()V

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;->mInstance:Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;

    invoke-static {v0}, Lcom/chillingo/crystal/CrystalAchievements;->setUnityDelegate(Lcom/chillingo/crystal/CrystalAchievementsDelegate;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;-><init>()V

    return-void
.end method

.method public static getAchievementsUnlocked()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->crystalAchievements()Lcom/chillingo/crystal/CrystalAchievements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/CrystalAchievements;->getAchievementsUnlocked()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "UnityAchievements"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arr.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private native nativeCrystalAchievementsUpdated(Z)V
.end method


# virtual methods
.method public crystalAchievementsUpdated(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->isRunningUnity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrystalAchievementsUpdated"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityAchievements;->nativeCrystalAchievementsUpdated(Z)V

    goto :goto_0
.end method
