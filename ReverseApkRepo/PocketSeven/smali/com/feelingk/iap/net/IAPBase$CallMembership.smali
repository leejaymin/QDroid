.class Lcom/feelingk/iap/net/IAPBase$CallMembership;
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
    name = "CallMembership"
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

.field private pMdn:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "telecom"
    .parameter "mdn"
    .parameter "productID"
    .parameter "productName"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    const/4 v1, 0x0

    .line 1293
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    .line 1277
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    .line 1278
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    .line 1279
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    .line 1280
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    .line 1281
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

    .line 1286
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    .line 1287
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    .line 1289
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    .line 1290
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    .line 1291
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    .line 1292
    iput-object p7, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

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

    .line 1298
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1299
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1365
    :goto_0
    return-object v0

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1303
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1309
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1310
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_3

    .line 1315
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1316
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1321
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1319
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1326
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTelecom:I

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pMdn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendDataMembership(ILjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1328
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1329
    const-string v0, "IAPBase"

    const-string v1, "CallItemMembership Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1333
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1336
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_5

    .line 1337
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_5

    .line 1338
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_6

    .line 1342
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1343
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1344
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    .line 1343
    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1356
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1346
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 1347
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7db

    .line 1348
    const-string v2, "\uc2dc\uc2a4\ud15c \uc810\uac80 \uc911\uc785\ub2c8\ub2e4. \uc7a0\uc2dc \ud6c4 \uc774\uc6a9\ud574\uc8fc\uc138\uc694."

    .line 1347
    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1353
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7db

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1354
    const-string v0, "IAPBase"

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1358
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-nez v0, :cond_9

    .line 1360
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MEMBERSHIP_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1361
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x460

    .line 1362
    new-instance v2, Lcom/feelingk/iap/net/PurchaseParam;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pName:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pTID:Ljava/lang/String;

    iget-object v6, p0, Lcom/feelingk/iap/net/IAPBase$CallMembership;->pBPInfo:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/feelingk/iap/net/PurchaseParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1365
    :cond_9
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallMembership;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
