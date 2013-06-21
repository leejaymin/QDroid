.class public Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;
.super Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final activity:Landroid/app/Activity;

.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;-><init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V

    iput-object p3, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    iput-object p4, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    iput-object p2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request Purchase for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected responseCodeReceived(Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-static {v0, p0, p1}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

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

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    const-string v0, "Error with requestPurchase"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    sget-wide v0, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    :goto_0
    return-wide v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->activity:Landroid/app/Activity;

    invoke-static {v3, v0, v2}, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->buyPageIntentResponse(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/urbanairship/iap/marketinterface/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    invoke-super {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
