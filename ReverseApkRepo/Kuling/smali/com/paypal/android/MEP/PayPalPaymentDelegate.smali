.class public interface abstract Lcom/paypal/android/MEP/PayPalPaymentDelegate;
.super Ljava/lang/Object;


# virtual methods
.method public abstract AdjustAmounts(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;FFF)Lcom/paypal/android/MEP/MEPAmounts;
.end method

.method public abstract paymentCanceled()V
.end method

.method public abstract paymentFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract paymentSucceeded(Ljava/lang/String;)V
.end method
