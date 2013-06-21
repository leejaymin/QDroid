.class Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;
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
    name = "reCallItemInfo"
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
.field private pBPInfo:Ljava/lang/String;

.field private pID:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "telecom"
    .parameter "productID"
    .parameter "productName"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    .line 440
    invoke-direct {p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTelecom:I

    .line 444
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTID:Ljava/lang/String;

    .line 445
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "productID"
    .parameter "productName"

    .prologue
    const/4 v1, 0x0

    .line 459
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTelecom:I

    .line 433
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pID:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pName:Ljava/lang/String;

    .line 435
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTID:Ljava/lang/String;

    .line 436
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 457
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pID:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, -0xb

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 464
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 465
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 538
    :goto_0
    return-object v0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pTID:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v4}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 473
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 475
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_2

    .line 477
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_2

    .line 478
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_3

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 482
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 487
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->pID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$9(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 491
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 493
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 494
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_5

    .line 495
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_5

    .line 496
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_6

    .line 499
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 500
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 533
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 507
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658\uc6a9 - subErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmFinalVersionCheck(Z)V

    .line 512
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 513
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45d

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 514
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 519
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 522
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAutoPurchaseCheck(Z)V

    .line 524
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 525
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 527
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 531
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d1

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v4}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 536
    :cond_9
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 537
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 538
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
