.class public Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;
.super Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;
.source "UserDetailsAgent.java"


# static fields
.field public static final SUPPORTED_KEYS:[Ljava/lang/String;


# instance fields
.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "numberChallengesWon"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "numberChallengesPlayed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 38
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;-><init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;[Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishRetrieve(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 6
    .parameter "aRequestController"
    .parameter "valueStore"

    .prologue
    .line 43
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/User;->getDetail()Lcom/scoreloop/client/android/core/model/User$Details;

    move-result-object v0

    .line 44
    .local v0, details:Lcom/scoreloop/client/android/core/model/User$Details;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User$Details;->getChallengesWon()Ljava/lang/Integer;

    move-result-object v2

    .line 45
    .local v2, numberWon:Ljava/lang/Integer;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User$Details;->getChallengesLost()Ljava/lang/Integer;

    move-result-object v1

    .line 46
    .local v1, numberLost:Ljava/lang/Integer;
    const-string v3, "numberChallengesPlayed"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v3, "numberChallengesWon"

    invoke-virtual {p2, v3, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "valueStore"

    .prologue
    .line 52
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 53
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Entity;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserDetailsAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadUserDetail()V

    .line 55
    return-void
.end method
