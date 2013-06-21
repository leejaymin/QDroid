.class public Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;
.super Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    iget-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/urbanairship/iap/marketinterface/Security;->removeNonce(J)V

    return-void
.end method

.method protected responseCodeReceived(Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-static {v0, p0, p1}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

    return-void
.end method

.method protected run()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/Security;->generateNonce()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->mNonce:J

    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restoreTransactions"

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
