.class public Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;
.super Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;
.source "NumberAchievementsAgent.java"


# static fields
.field public static final SUPPORTED_KEYS:[Ljava/lang/String;


# instance fields
.field private _achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "numberAchievements"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "numberAwards"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 37
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;[Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onFinishRetrieve(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "valueStore"

    .prologue
    .line 42
    const-string v0, "numberAwards"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string v0, "numberAchievements"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->countAchievedAwards()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method protected onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "valueStore"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->setUser(Lcom/scoreloop/client/android/core/model/User;)V

    .line 52
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NumberAchievementsAgent;->_achievementsController:Lcom/scoreloop/client/android/core/controller/AchievementsController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->loadAchievements()V

    .line 53
    return-void
.end method
