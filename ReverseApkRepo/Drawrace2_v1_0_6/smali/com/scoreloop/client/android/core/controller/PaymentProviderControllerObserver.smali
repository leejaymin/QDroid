.class public interface abstract Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end method

.method public abstract paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end method

.method public abstract paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end method

.method public abstract paymentControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end method
