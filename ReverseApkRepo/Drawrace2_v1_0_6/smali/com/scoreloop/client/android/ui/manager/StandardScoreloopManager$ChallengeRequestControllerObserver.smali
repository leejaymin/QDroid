.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChallengeRequestControllerObserver"
.end annotation


# instance fields
.field private final score:Lcom/scoreloop/client/android/core/model/Score;

.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 0
    .parameter
    .parameter "score"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->score:Lcom/scoreloop/client/android/core/model/Score;

    .line 893
    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 888
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;)V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 897
    instance-of v0, p2, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/scoreloop/client/android/core/controller/RequestControllerException;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestControllerException;->hasDetail(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v1, 0x5

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    .line 903
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$400(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;->onScoreSubmit(ILjava/lang/Exception;)V

    .line 906
    :cond_0
    return-void

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v1, 0x4

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 4
    .parameter "aRequestController"

    .prologue
    .line 910
    instance-of v1, p1, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 911
    check-cast v0, Lcom/scoreloop/client/android/core/controller/ChallengeController;

    .line 912
    .local v0, challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v2, 0x3

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    .line 913
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->score:Lcom/scoreloop/client/android/core/model/Score;

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$602(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;)Lcom/scoreloop/client/android/core/model/Score;

    .line 914
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ChallengeController;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v2

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedChallenge:Lcom/scoreloop/client/android/core/model/Challenge;
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$702(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Challenge;)Lcom/scoreloop/client/android/core/model/Challenge;

    .line 915
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ChallengeRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$400(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;->onScoreSubmit(ILjava/lang/Exception;)V

    .line 919
    .end local v0           #challengeController:Lcom/scoreloop/client/android/core/controller/ChallengeController;
    :cond_0
    return-void
.end method
