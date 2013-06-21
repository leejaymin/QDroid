.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;

.field final synthetic val$scoresIterator:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;Ljava/util/ListIterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->this$1:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->val$scoresIterator:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private submitNextScore(Lcom/scoreloop/client/android/core/controller/ScoreController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->val$scoresIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->val$scoresIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->submitScore(Lcom/scoreloop/client/android/core/model/Score;)V

    .line 1106
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->this$1:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;

    iget-object v0, v0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #calls: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->runSubmitLocalScoresContinuations()V
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$1100(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V

    goto :goto_0
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 1091
    const-string v0, "ScoreloopUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to submit localScore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    check-cast p1, Lcom/scoreloop/client/android/core/controller/ScoreController;

    .end local p1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->submitNextScore(Lcom/scoreloop/client/android/core/controller/ScoreController;)V

    .line 1093
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 0
    .parameter "aRequestController"

    .prologue
    .line 1097
    check-cast p1, Lcom/scoreloop/client/android/core/controller/ScoreController;

    .end local p1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$6$1;->submitNextScore(Lcom/scoreloop/client/android/core/controller/ScoreController;)V

    .line 1098
    return-void
.end method
