.class Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;
.super Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V

    iput-object p3, p0, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
