.class public Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;
.super Lcom/scoreloop/client/android/ui/component/agent/BaseAgent;
.source "UserBuddiesAgent.java"


# static fields
.field public static final SUPPORTED_KEYS:[Ljava/lang/String;


# instance fields
.field private _userController:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "userBuddies"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/BaseAgent$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 37
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

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
    const-string v0, "userBuddies"

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/UserController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getBuddyUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected onStartRetrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 2
    .parameter "valueStore"

    .prologue
    .line 47
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 48
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Entity;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 49
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/UserBuddiesAgent;->_userController:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadBuddies()V

    .line 50
    return-void
.end method
