.class Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;
.super Ljava/lang/Object;
.source "StandardScoreloopManager.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->pendingPaymentProcessorDidProcessPayment(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Lcom/scoreloop/client/android/core/model/GameItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

.field final synthetic val$payment:Lcom/scoreloop/client/android/core/model/Payment;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->val$payment:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public withValue(Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/Exception;)V
    .locals 5
    .parameter "gameItem"
    .parameter "error"

    .prologue
    .line 814
    if-nez p1, :cond_1

    .line 815
    const-string v2, "ScoreloopUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t retrieve game-item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    const/4 v1, 0x0

    .line 819
    .local v1, resultCode:I
    sget-object v2, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$8;->$SwitchMap$com$scoreloop$client$android$core$model$Payment$State:[I

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->val$payment:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 833
    :goto_1
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$200(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 834
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_onPaymentChangedObserver:Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$200(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Lcom/scoreloop/client/android/ui/OnPaymentChangedObserver;->onPaymentChanged(Lcom/scoreloop/client/android/core/model/GameItem;IZ)I

    move-result v0

    .line 838
    .local v0, flags:I
    :goto_2
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_0

    .line 839
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->this$0:Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;

    #getter for: Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->_context:Landroid/content/Context;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;->access$300(Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3}, Lcom/scoreloop/client/android/ui/component/payment/AbstractCheckoutListActivity;->showGameItemToast(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/GameItem;ILjava/lang/Exception;)V

    goto :goto_0

    .line 821
    .end local v0           #flags:I
    :pswitch_0
    const/4 v1, -0x1

    .line 822
    goto :goto_1

    .line 824
    :pswitch_1
    const/4 v1, 0x0

    .line 825
    goto :goto_1

    .line 827
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_1

    .line 836
    :cond_2
    const/16 v0, 0x10

    .restart local v0       #flags:I
    goto :goto_2

    .line 819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    check-cast p1, Lcom/scoreloop/client/android/core/model/GameItem;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/manager/StandardScoreloopManager$4;->withValue(Lcom/scoreloop/client/android/core/model/GameItem;Ljava/lang/Exception;)V

    return-void
.end method
