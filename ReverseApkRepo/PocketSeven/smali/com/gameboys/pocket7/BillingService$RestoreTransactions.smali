.class Lcom/gameboys/pocket7/BillingService$RestoreTransactions;
.super Lcom/gameboys/pocket7/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/gameboys/pocket7/BillingService;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->this$0:Lcom/gameboys/pocket7/BillingService;

    .line 236
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/gameboys/pocket7/BillingService$BillingRequest;-><init>(Lcom/gameboys/pocket7/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 254
    iget-wide v0, p0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/gameboys/pocket7/Security;->removeNonce(J)V

    .line 255
    return-void
.end method

.method protected responseCodeReceived(Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->this$0:Lcom/gameboys/pocket7/BillingService;

    invoke-static {v0, p0, p1}, Lcom/gameboys/pocket7/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/gameboys/pocket7/BillingService$RestoreTransactions;Lcom/gameboys/pocket7/Consts$ResponseCode;)V

    .line 261
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
    .line 241
    invoke-static {}, Lcom/gameboys/pocket7/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->mNonce:J

    .line 243
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 244
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 245
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 246
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/gameboys/pocket7/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    const-string v2, "REQUEST_ID"

    .line 248
    sget-wide v3, Lcom/gameboys/pocket7/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 247
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
