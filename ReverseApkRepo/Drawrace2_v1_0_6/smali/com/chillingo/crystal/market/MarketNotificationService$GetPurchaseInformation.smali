.class Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;
.super Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field _nonce:J

.field final _notifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/chillingo/crystal/market/MarketNotificationService;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;[Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;I)V

    iput-object p2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->_notifyIds:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->_nonce:J

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method protected run()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->_nonce:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->_notifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "GetPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
