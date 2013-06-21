.class public interface abstract Lnet/robotmedia/billing/IBillingObserver;
.super Ljava/lang/Object;
.source "IBillingObserver.java"


# virtual methods
.method public abstract onBillingChecked(Z)V
.end method

.method public abstract onPurchaseIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
.end method

.method public abstract onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
.end method

.method public abstract onTransactionsRestored()V
.end method
