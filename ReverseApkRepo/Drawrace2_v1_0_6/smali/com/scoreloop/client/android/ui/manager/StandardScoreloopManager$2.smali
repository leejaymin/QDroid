.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getGameItemDownloadUrl(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

.field final synthetic val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 532
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 4
    .parameter "aRequestController"

    .prologue
    .line 536
    move-object v0, p1

    check-cast v0, Lcom/scoreloop/client/android/core/controller/GameItemController;

    .line 537
    .local v0, gameItemController:Lcom/scoreloop/client/android/core/controller/GameItemController;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$2;->val$continuation:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/GameItemController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/GameItem;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 538
    return-void
.end method
