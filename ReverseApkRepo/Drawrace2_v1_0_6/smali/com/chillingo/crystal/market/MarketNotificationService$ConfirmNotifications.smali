.class Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;
.super Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final _notifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/chillingo/crystal/market/MarketNotificationService;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;I)V

    iput-object p2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->_notifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->_notifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ConfirmNotifications"

    invoke-virtual {p0, v1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
