.class Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;
.super Lcom/gameboys/pocket7/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/gameboys/pocket7/BillingService;


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->this$0:Lcom/gameboys/pocket7/BillingService;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/gameboys/pocket7/BillingService$BillingRequest;-><init>(Lcom/gameboys/pocket7/BillingService;I)V

    .line 187
    iput-object p3, p0, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 193
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NOTIFY_IDS"

    .line 194
    iget-object v3, p0, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/gameboys/pocket7/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 196
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/gameboys/pocket7/BillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 197
    const-string v2, "REQUEST_ID"

    .line 198
    sget-wide v3, Lcom/gameboys/pocket7/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 197
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
