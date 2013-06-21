.class public Lcom/gameboys/pocket7/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 74
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/gameboys/pocket7/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 58
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/gameboys/pocket7/PurchaseObserver;->onBillingSupported(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public static declared-synchronized register(Lcom/gameboys/pocket7/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 40
    const-class v0, Lcom/gameboys/pocket7/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/gameboys/pocket7/BillingService$RequestPurchase;Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 99
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/gameboys/pocket7/PurchaseObserver;->onRequestPurchaseResponse(Lcom/gameboys/pocket7/BillingService$RequestPurchase;Lcom/gameboys/pocket7/Consts$ResponseCode;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/gameboys/pocket7/BillingService$RestoreTransactions;Lcom/gameboys/pocket7/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 115
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/gameboys/pocket7/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/gameboys/pocket7/BillingService$RestoreTransactions;Lcom/gameboys/pocket7/Consts$ResponseCode;)V

    .line 118
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/gameboys/pocket7/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 48
    const-class v0, Lcom/gameboys/pocket7/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/gameboys/pocket7/ResponseHandler;->sPurchaseObserver:Lcom/gameboys/pocket7/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
