.class Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalliapSendImeiAuthReq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;I)V
    .locals 1
    .parameter
    .parameter "telecom"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    .line 551
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, -0xb

    const/16 v8, -0xc

    const/16 v7, -0xd

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 556
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 564
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 566
    const-string v0, "IAPBase"

    const-string v1, "Call iapSendImeiAuthReq Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_1

    .line 569
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_1

    .line 570
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_2

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 574
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 578
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 584
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 585
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_4

    .line 586
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_4

    .line 587
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_5

    .line 590
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 591
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 596
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 594
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v6}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 600
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 601
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$12()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$14()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 602
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 603
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 604
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_7

    .line 605
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_7

    .line 606
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_8

    .line 609
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 610
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 633
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 612
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 616
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 617
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45f

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v6}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 619
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 622
    :cond_9
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    .line 623
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 624
    :cond_a
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 626
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x465

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v6}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 628
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 631
    :cond_b
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 637
    :cond_c
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$12()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$9(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 638
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 640
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 641
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_d

    .line 642
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_d

    .line 643
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_e

    .line 646
    :cond_d
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 647
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 680
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 653
    :cond_e
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 654
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658\uc6a9 - subErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmFinalVersionCheck(Z)V

    .line 659
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 660
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45d

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 661
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 666
    :cond_f
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 669
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAutoPurchaseCheck(Z)V

    .line 671
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 672
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 674
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 678
    :cond_10
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d1

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v6}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_4

    .line 683
    :cond_11
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 684
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 685
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
