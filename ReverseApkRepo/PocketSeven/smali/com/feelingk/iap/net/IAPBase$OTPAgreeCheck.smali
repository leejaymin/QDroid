.class Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;
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
    name = "OTPAgreeCheck"
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
    .line 1387
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->pTelecom:I

    .line 1386
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->pTelecom:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7d8

    const/16 v7, -0xb

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/4 v4, 0x0

    .line 1391
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->pTelecom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1435
    :goto_0
    return-object v0

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1399
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1400
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_2

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1406
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1411
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1409
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1415
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$20(Lcom/feelingk/iap/net/IAPBase;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendOTPAgreeCheck(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1417
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1419
    const-string v0, "IAPBase"

    const-string v1, "CallPurchaseDismiss Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1421
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_4

    .line 1422
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_5

    .line 1426
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1427
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1432
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1431
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7dc

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1435
    :cond_6
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
