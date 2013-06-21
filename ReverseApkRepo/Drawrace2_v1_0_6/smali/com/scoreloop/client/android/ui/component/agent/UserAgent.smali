.class public Lcom/scoreloop/client/android/ui/component/agent/UserAgent;
.super Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;
.source "UserAgent.java"


# static fields
.field public static final SUPPORTED_KEYS:[Ljava/lang/String;


# instance fields
.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "userName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "userImageUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "userBalance"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "numberGames"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numberBuddies"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numberGlobalAchievements"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 40
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;[Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onFinishRetrieve(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 3
    .parameter "aRequestController"
    .parameter "valueStore"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 46
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    const-string v1, "userName"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v1, "userImageUrl"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v1, "userBalance"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getBalance()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v1, "numberGames"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getGamesCounter()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v1, "numberBuddies"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getBuddiesCounter()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v1, "numberGlobalAchievements"

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getGlobalAchievementsCounter()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "valueStore"

    .prologue
    .line 56
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 57
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->setCachedResponseUsed(Z)V

    .line 58
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Entity;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadUser()V

    .line 60
    return-void
.end method

.method public retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "valueStore"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;->retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V

    .line 69
    const-string v0, "userName"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/agent/UserAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
