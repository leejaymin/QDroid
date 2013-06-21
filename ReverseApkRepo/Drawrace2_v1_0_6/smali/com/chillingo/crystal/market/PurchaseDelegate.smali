.class public interface abstract Lcom/chillingo/crystal/market/PurchaseDelegate;
.super Ljava/lang/Object;


# virtual methods
.method public abstract purchaseCancelled()V
.end method

.method public abstract purchaseComplete()V
.end method

.method public abstract purchaseFailed(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
.end method

.method public abstract purchaseSuccessful()V
.end method

.method public abstract serverError()V
.end method

.method public abstract startBuyActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method
