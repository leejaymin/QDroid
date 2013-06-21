.class public Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProvider;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "com.paypal.android.MEP.PayPalActivity"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProvider;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.paypalx.PayPalXPaymentProviderController"

    return-object v0
.end method

.method public controllerSupportsPrepare()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.StandardPendingPaymentProcessorModule"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.paypal.android.MEP.PayPal"

    return-object v0
.end method
