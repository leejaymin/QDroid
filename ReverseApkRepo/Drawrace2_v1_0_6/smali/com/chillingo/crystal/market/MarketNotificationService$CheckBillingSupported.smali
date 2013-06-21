.class Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;
.super Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/market/MarketNotificationService;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;)V
    .locals 1

    iput-object p1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;-><init>(Lcom/chillingo/crystal/market/MarketNotificationService;I)V

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_OK:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    invoke-virtual {v1}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$400()Lcom/chillingo/crystal/market/ResponseHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/market/ResponseHandler;->checkBillingSupportedResponse(Z)V

    sget-wide v0, Lcom/chillingo/crystal/market/MarketNotificationService;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
