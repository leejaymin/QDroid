.class public Lutil/googleiap/BillingService$GetPurchaseInformation;
.super Lutil/googleiap/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lutil/googleiap/BillingService;


# direct methods
.method public constructor <init>(Lutil/googleiap/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 286
    iput-object p1, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->this$0:Lutil/googleiap/BillingService;

    .line 287
    invoke-direct {p0, p1, p2}, Lutil/googleiap/BillingService$BillingRequest;-><init>(Lutil/googleiap/BillingService;I)V

    .line 288
    iput-object p3, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 306
    invoke-super {p0, p1}, Lutil/googleiap/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 307
    iget-wide v0, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lutil/googleiap/Security;->removeNonce(J)V

    .line 308
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
    .line 293
    invoke-static {}, Lutil/googleiap/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->mNonce:J

    .line 295
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lutil/googleiap/BillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lutil/googleiap/BillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lutil/googleiap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 299
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lutil/googleiap/BillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 300
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lutil/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
