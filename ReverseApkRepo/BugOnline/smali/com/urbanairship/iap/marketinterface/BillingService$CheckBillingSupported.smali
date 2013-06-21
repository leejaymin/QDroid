.class Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;
.super Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V

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

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->RESULT_OK:Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    invoke-virtual {v1}, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->checkBillingSupportedResponse(Z)V

    sget-wide v0, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
