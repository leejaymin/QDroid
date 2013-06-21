.class Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;
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
    name = "CallItemPurchase"
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
.field private TID:Ljava/lang/String;

.field private bTCash:Ljava/lang/Boolean;

.field private bUseBPProtocl:Ljava/lang/Boolean;

.field private pBPInfo:Ljava/lang/String;

.field private pID:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter
    .parameter "productID"
    .parameter "productName"
    .parameter "TCash"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 819
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pID:Ljava/lang/String;

    .line 809
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pName:Ljava/lang/String;

    .line 810
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bTCash:Ljava/lang/Boolean;

    .line 811
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->TID:Ljava/lang/String;

    .line 812
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pBPInfo:Ljava/lang/String;

    .line 813
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bUseBPProtocl:Ljava/lang/Boolean;

    .line 816
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pID:Ljava/lang/String;

    .line 817
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pName:Ljava/lang/String;

    .line 818
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bTCash:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "productID"
    .parameter "productName"
    .parameter "TCash"
    .parameter "TID"
    .parameter "BPINFO"

    .prologue
    .line 822
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 824
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->TID:Ljava/lang/String;

    .line 825
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pBPInfo:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter "productID"
    .parameter "productName"
    .parameter "TCash"
    .parameter "TID"
    .parameter "BPINFO"
    .parameter "useProtocol"

    .prologue
    .line 829
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 831
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->TID:Ljava/lang/String;

    .line 832
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pBPInfo:Ljava/lang/String;

    .line 833
    iput-object p7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bUseBPProtocl:Ljava/lang/Boolean;

    .line 834
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 838
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 839
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    .line 843
    :cond_0
    iget-object v6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pID:Ljava/lang/String;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pName:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bTCash:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->TID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->pBPInfo:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->bUseBPProtocl:Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v0

    #setter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v6, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 844
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 846
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    #calls: Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 847
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_1

    .line 848
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_2

    .line 852
    :cond_1
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v7, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 854
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d9

    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 859
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d3

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 864
    invoke-static {v8}, Lcom/feelingk/iap/IAPLib;->setOTPPurchaseSuccess(Z)V

    .line 865
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x452

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->this$0:Lcom/feelingk/iap/net/IAPBase;

    #getter for: Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    #calls: Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 867
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
