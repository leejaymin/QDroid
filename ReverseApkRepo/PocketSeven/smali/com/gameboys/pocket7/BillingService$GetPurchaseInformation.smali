.class Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;
.super Lcom/gameboys/pocket7/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/gameboys/pocket7/BillingService;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->this$0:Lcom/gameboys/pocket7/BillingService;

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/gameboys/pocket7/BillingService$BillingRequest;-><init>(Lcom/gameboys/pocket7/BillingService;I)V

    .line 208
    iput-object p3, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/gameboys/pocket7/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 228
    iget-wide v0, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/gameboys/pocket7/Security;->removeNonce(J)V

    .line 229
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
    .line 213
    invoke-static {}, Lcom/gameboys/pocket7/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->mNonce:J

    .line 215
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    const-string v2, "NOTIFY_IDS"

    .line 218
    iget-object v3, p0, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/gameboys/pocket7/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 221
    const-string v2, "REQUEST_ID"

    .line 222
    sget-wide v3, Lcom/gameboys/pocket7/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 221
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
