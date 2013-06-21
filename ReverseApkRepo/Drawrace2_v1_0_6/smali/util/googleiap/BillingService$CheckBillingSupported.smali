.class public Lutil/googleiap/BillingService$CheckBillingSupported;
.super Lutil/googleiap/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lutil/googleiap/BillingService;


# direct methods
.method public constructor <init>(Lutil/googleiap/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lutil/googleiap/BillingService$CheckBillingSupported;->this$0:Lutil/googleiap/BillingService;

    .line 188
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lutil/googleiap/BillingService$BillingRequest;-><init>(Lutil/googleiap/BillingService;I)V

    .line 189
    return-void
.end method


# virtual methods
.method public bridge synthetic getStartId()I
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->getStartId()I

    move-result v0

    return v0
.end method

.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lutil/googleiap/BillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 194
    .local v1, request:Landroid/os/Bundle;
    invoke-static {}, Lutil/googleiap/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 195
    .local v2, response:Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, responseCode:I
    sget-object v4, Lutil/googleiap/Consts$ResponseCode;->RESULT_OK:Lutil/googleiap/Consts$ResponseCode;

    invoke-virtual {v4}, Lutil/googleiap/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 201
    .local v0, billingSupported:Z
    :goto_0
    invoke-static {v0}, Lutil/googleiap/ResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 202
    sget-wide v4, Lutil/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 200
    .end local v0           #billingSupported:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic runIfConnected()Z
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->runIfConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic runRequest()Z
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lutil/googleiap/BillingService$BillingRequest;->runRequest()Z

    move-result v0

    return v0
.end method
