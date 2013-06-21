.class Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;
.super Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V

    iput-object p3, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    iget-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/urbanairship/iap/marketinterface/Security;->removeNonce(J)V

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

    iput-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->mNonce:J

    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
