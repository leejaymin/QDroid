.class Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;
.super Ljava/lang/Object;
.source "ScoreListActivity.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->onScores()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 251
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 4
    .parameter "aRequestController"

    .prologue
    .line 255
    instance-of v2, p1, Lcom/scoreloop/client/android/core/controller/ScoresController;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 256
    check-cast v1, Lcom/scoreloop/client/android/core/controller/ScoresController;

    .line 257
    .local v1, scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getScores()Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, scoreList:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity$2;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->_submitLocalScoresListItem:Lcom/scoreloop/client/android/ui/framework/BaseListItem;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->access$200(Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;)Lcom/scoreloop/client/android/ui/framework/BaseListItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/component/score/ScoreListActivity;->showFooter(Lcom/scoreloop/client/android/ui/framework/BaseListItem;)V

    .line 263
    .end local v0           #scoreList:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    .end local v1           #scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;
    :cond_0
    return-void
.end method
