.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;
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
    name = "ScoreRequestControllerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;-><init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)V

    return-void
.end method


# virtual methods
.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter "aRequestController"
    .parameter "anException"

    .prologue
    .line 860
    instance-of v0, p2, Lcom/scoreloop/client/android/core/model/ScoreSubmitException;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v1, 0x2

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$400(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;->onScoreSubmit(ILjava/lang/Exception;)V

    .line 868
    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v1, 0x4

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 4
    .parameter "aRequestController"

    .prologue
    .line 872
    instance-of v1, p1, Lcom/scoreloop/client/android/core/controller/ScoreController;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 873
    check-cast v0, Lcom/scoreloop/client/android/core/controller/ScoreController;

    .line 874
    .local v0, scoreController:Lcom/scoreloop/client/android/core/controller/ScoreController;
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->getScore()Lcom/scoreloop/client/android/core/model/Score;

    move-result-object v2

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmittedScore:Lcom/scoreloop/client/android/core/model/Score;
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$602(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Score;)Lcom/scoreloop/client/android/core/model/Score;

    .line 875
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/ScoreController;->shouldSubmitScoreLocally()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v2, 0x2

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    .line 880
    :goto_0
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onScoreSubmitObserver:Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;
    invoke-static {v1}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$500(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$400(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/scoreloop/client/android/ui/OnScoreSubmitObserver;->onScoreSubmit(ILjava/lang/Exception;)V

    .line 885
    .end local v0           #scoreController:Lcom/scoreloop/client/android/core/controller/ScoreController;
    :cond_0
    return-void

    .line 878
    .restart local v0       #scoreController:Lcom/scoreloop/client/android/core/controller/ScoreController;
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$ScoreRequestControllerObserver;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    const/4 v2, 0x1

    #setter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_lastSubmitStatus:I
    invoke-static {v1, v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$402(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;I)I

    goto :goto_0
.end method
