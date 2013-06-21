.class public Lutil/googleiap/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lutil/googleiap/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lutil/googleiap/PurchaseObserver;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 75
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lutil/googleiap/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 59
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    invoke-virtual {v0, p0}, Lutil/googleiap/PurchaseObserver;->onBillingSupported(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "purchaseState"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 112
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lutil/googleiap/ResponseHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lutil/googleiap/ResponseHandler$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lutil/googleiap/Consts$PurchaseState;JLjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public static declared-synchronized register(Lutil/googleiap/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 41
    const-class v0, Lutil/googleiap/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lutil/googleiap/BillingService$RequestPurchase;Lutil/googleiap/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 146
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lutil/googleiap/PurchaseObserver;->onRequestPurchaseResponse(Lutil/googleiap/BillingService$RequestPurchase;Lutil/googleiap/Consts$ResponseCode;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lutil/googleiap/BillingService$RestoreTransactions;Lutil/googleiap/Consts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 162
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lutil/googleiap/PurchaseObserver;->onRestoreTransactionsResponse(Lutil/googleiap/BillingService$RestoreTransactions;Lutil/googleiap/Consts$ResponseCode;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lutil/googleiap/PurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 49
    const-class v0, Lutil/googleiap/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lutil/googleiap/ResponseHandler;->sPurchaseObserver:Lutil/googleiap/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
