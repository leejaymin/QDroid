.class public Lcom/urbanairship/iap/MarketListener;
.super Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 0

    invoke-static {p1}, Lcom/urbanairship/iap/IAPManager;->onBillingSupported(Z)V

    return-void
.end method

.method public onPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchase state changed for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->PURCHASED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getInventory()Lcom/urbanairship/iap/Inventory;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/iap/Inventory;->getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storing purchase receipt for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/iap/Receipt;

    invoke-virtual {v7}, Lcom/urbanairship/iap/Product;->getRevision()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/urbanairship/iap/Receipt;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/iap/Receipt;->serialize()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting download for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getDownloadManager()Lcom/urbanairship/iap/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/urbanairship/iap/DownloadManager;->downloadIfValid(Lcom/urbanairship/iap/Product;)V

    :cond_0
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 2

    sget-object v0, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->RESULT_OK:Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    if-eq p2, v0, :cond_0

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->shared()Lcom/urbanairship/iap/IAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/iap/IAPManager;->getInventory()Lcom/urbanairship/iap/Inventory;

    move-result-object v0

    iget-object v1, p1, Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Inventory;->getProduct(Ljava/lang/String;)Lcom/urbanairship/iap/Product;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/iap/Product$Status;->UNPURCHASED:Lcom/urbanairship/iap/Product$Status;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Product;->setStatus(Lcom/urbanairship/iap/Product$Status;)V

    :cond_0
    return-void
.end method

.method public onRestoreTransactionsResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;->RESULT_OK:Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    const-string v0, "OK response from onRestoreTransactionsRequest, calling firstRun()"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/iap/IAPManager;->firstRun()V

    :cond_0
    return-void
.end method
