.class public Lcom/urbanairship/iap/marketinterface/ResponseHandler;
.super Ljava/lang/Object;


# static fields
.field private static marketListener:Lcom/urbanairship/iap/MarketListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-virtual {v0, p0, p1, p2}, Lcom/urbanairship/iap/MarketListener;->startBuyPageActivity(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-virtual {v0, p0}, Lcom/urbanairship/iap/MarketListener;->onBillingSupported(Z)V

    :cond_0
    return-void
.end method

.method public static purchaseResponse(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "purchaseResponse"

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/urbanairship/iap/MarketListener;->onPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized register(Lcom/urbanairship/iap/MarketListener;)V
    .locals 2

    const-class v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/iap/MarketListener;->onRequestPurchaseResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RequestPurchase;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/iap/MarketListener;->onRestoreTransactionsResponse(Lcom/urbanairship/iap/marketinterface/BillingService$RestoreTransactions;Lcom/urbanairship/iap/marketinterface/Consts$ResponseCode;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/urbanairship/iap/MarketListener;)V
    .locals 2

    const-class v0, Lcom/urbanairship/iap/marketinterface/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/urbanairship/iap/marketinterface/ResponseHandler;->marketListener:Lcom/urbanairship/iap/MarketListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
