.class public Lcom/scoreloop/client/android/ui/manager/GameItemUtil;
.super Ljava/lang/Object;
.source "GameItemUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static withGameItemForIdentifier(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 3
    .parameter "session"
    .parameter "gameItemIdentifier"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Session;",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Lcom/scoreloop/client/android/core/model/GameItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, continuation:Lcom/scoreloop/client/android/core/model/Continuation;,"Lcom/scoreloop/client/android/core/model/Continuation<Lcom/scoreloop/client/android/core/model/GameItem;>;"
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemController;

    new-instance v1, Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;

    invoke-direct {v1, p2}, Lcom/scoreloop/client/android/ui/manager/GameItemUtil$1;-><init>(Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 45
    .local v0, controller:Lcom/scoreloop/client/android/core/controller/GameItemController;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemController;->setCachedResponseUsed(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/GameItem;->ENTITY_NAME:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/scoreloop/client/android/core/model/EntityFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/GameItemController;->setGameItem(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 47
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->loadGameItem()V

    .line 48
    return-void
.end method
