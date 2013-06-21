.class Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;
.super Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PurchaseRequest"
.end annotation


# instance fields
.field final _payload:Ljava/lang/String;

.field final _productId:Ljava/lang/String;

.field final synthetic this$0:Lcom/chillingo/crystal/market/MarketNotificationService;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;I)V

    iput-object p2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->_productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->_payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$400()Lcom/chillingo/crystal/market/ResponseHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-virtual {v0, v1, p0, p1}, Lcom/chillingo/crystal/market/ResponseHandler;->responseCodeReceived(Lcom/chillingo/crystal/market/MarketNotificationService;Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V

    return-void
.end method

.method protected run()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->_productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->_payload:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$PurchaseRequest;->_payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    sget-wide v0, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    :goto_0
    return-wide v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$400()Lcom/chillingo/crystal/market/ResponseHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/chillingo/crystal/market/ResponseHandler;->buyPageIntentReponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
