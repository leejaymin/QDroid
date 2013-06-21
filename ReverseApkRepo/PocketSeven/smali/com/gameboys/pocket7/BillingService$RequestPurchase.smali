.class Lcom/gameboys/pocket7/BillingService$RequestPurchase;
.super Lcom/gameboys/pocket7/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/gameboys/pocket7/BillingService;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gameboys/pocket7/BillingService$RequestPurchase;-><init>(Lcom/gameboys/pocket7/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"
    .parameter "developerPayload"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->this$0:Lcom/gameboys/pocket7/BillingService;

    .line 147
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/gameboys/pocket7/BillingService$BillingRequest;-><init>(Lcom/gameboys/pocket7/BillingService;I)V

    .line 148
    iput-object p2, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->this$0:Lcom/gameboys/pocket7/BillingService;

    invoke-static {v0, p0, p1}, Lcom/gameboys/pocket7/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/gameboys/pocket7/BillingService$RequestPurchase;Lcom/gameboys/pocket7/Consts$ResponseCode;)V

    .line 179
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 155
    .local v2, request:Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    iget-object v5, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "DEVELOPER_PAYLOAD"

    .line 159
    iget-object v5, p0, Lcom/gameboys/pocket7/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 163
    .local v3, response:Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 164
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 165
    const-string v4, "BillingService"

    const-string v5, "Error with requestPurchase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-wide v4, Lcom/gameboys/pocket7/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 171
    :goto_0
    return-wide v4

    .line 169
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/gameboys/pocket7/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 171
    const-string v4, "REQUEST_ID"

    .line 172
    sget-wide v5, Lcom/gameboys/pocket7/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 171
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method
