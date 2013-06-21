.class public Lutil/googleiap/BillingService$RestoreTransactions;
.super Lutil/googleiap/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lutil/googleiap/BillingService;


# direct methods
.method public constructor <init>(Lutil/googleiap/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lutil/googleiap/BillingService$RestoreTransactions;->this$0:Lutil/googleiap/BillingService;

    .line 322
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lutil/googleiap/BillingService$BillingRequest;-><init>(Lutil/googleiap/BillingService;I)V

    .line 323
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lutil/googleiap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 340
    iget-wide v0, p0, Lutil/googleiap/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lutil/googleiap/Security;->removeNonce(J)V

    .line 341
    return-void
.end method

.method protected responseCodeReceived(Lutil/googleiap/Consts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 345
    iget-object v0, p0, Lutil/googleiap/BillingService$RestoreTransactions;->this$0:Lutil/googleiap/BillingService;

    invoke-static {v0, p0, p1}, Lutil/googleiap/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lutil/googleiap/BillingService$RestoreTransactions;Lutil/googleiap/Consts$ResponseCode;)V

    .line 346
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-static {}, Lutil/googleiap/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lutil/googleiap/BillingService$RestoreTransactions;->mNonce:J

    .line 329
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lutil/googleiap/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lutil/googleiap/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    invoke-static {}, Lutil/googleiap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 332
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lutil/googleiap/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 333
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lutil/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
