.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->submitLocalScores(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

.field final synthetic val$continuation:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->val$continuation:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 1063
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 6
    .parameter "aRequestController"

    .prologue
    .line 1067
    instance-of v4, p1, Lcom/scoreloop/client/android/core/controller/ScoresController;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 1068
    check-cast v1, Lcom/scoreloop/client/android/core/controller/ScoresController;

    .line 1071
    .local v1, scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/ScoresController;->getScores()Ljava/util/List;

    move-result-object v3

    .line 1074
    .local v3, scoresToSubmit:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->val$continuation:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 1075
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_submitLocalScoresContinuations:Ljava/util/List;
    invoke-static {v4}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$1000(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->val$continuation:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1080
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #calls: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->runSubmitLocalScoresContinuations()V
    invoke-static {v4}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$1100(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V

    .line 1111
    .end local v1           #scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;
    .end local v3           #scoresToSubmit:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    :cond_1
    :goto_0
    return-void

    .line 1085
    .restart local v1       #scoresController:Lcom/scoreloop/client/android/core/controller/ScoresController;
    .restart local v3       #scoresToSubmit:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Score;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1086
    .local v2, scoresIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/scoreloop/client/android/core/model/Score;>;"
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ScoreController;

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->getSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v4

    new-instance v5, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;

    invoke-direct {v5, p0, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;Ljava/util/ListIterator;)V

    invoke-direct {v0, v4, v5}, Lcom/scoreloop/client/android/core/controller/ScoreController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 1108
    .local v0, scoreController:Lcom/scoreloop/client/android/core/controller/ScoreController;
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v0, v4}, Lcom/scoreloop/client/android/core/controller/ScoreController;->submitScore(Lcom/scoreloop/client/android/core/model/Score;)V

    goto :goto_0
.end method
