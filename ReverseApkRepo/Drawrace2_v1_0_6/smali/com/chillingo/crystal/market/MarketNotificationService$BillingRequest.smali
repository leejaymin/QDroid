.class abstract Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected _requestId:J

.field private final _startId:I

.field final synthetic this$0:Lcom/chillingo/crystal/market/MarketNotificationService;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/market/MarketNotificationService;I)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->_startId:I

    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->_startId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->valueOf(I)Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    iget-object v2, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    invoke-virtual {v2}, Lcom/chillingo/crystal/market/MarketNotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method protected responseCodeReceived(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
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

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->run()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->_requestId:J

    iget-wide v0, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->_requestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$300()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->_requestId:J

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

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/chillingo/crystal/market/MarketNotificationService$BillingRequest;->this$0:Lcom/chillingo/crystal/market/MarketNotificationService;

    #calls: Lcom/chillingo/crystal/market/MarketNotificationService;->bindToMarketService()Z
    invoke-static {v1}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$000(Lcom/chillingo/crystal/market/MarketNotificationService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
