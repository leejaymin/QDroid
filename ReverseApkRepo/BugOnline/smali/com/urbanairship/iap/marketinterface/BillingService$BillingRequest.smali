.class abstract Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;I)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->mStartId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    iget v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->valueOf(I)Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-virtual {v2}, Lcom/urbanairship/iap/marketinterface/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 1

    const-string v0, "remote billing service crashed"

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method protected responseCodeReceived(Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 0

    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 4

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->run()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->mRequestId:J

    iget-wide v0, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->mRequestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$BillingRequest;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    #calls: Lcom/urbanairship/iap/marketinterface/BillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$000(Lcom/urbanairship/iap/marketinterface/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/BillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
