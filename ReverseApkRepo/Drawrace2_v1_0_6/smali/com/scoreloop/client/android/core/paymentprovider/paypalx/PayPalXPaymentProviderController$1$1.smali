.class final Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->h()Z

    .line 170
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->i()Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->i()Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->c(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)V

    .line 172
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->j()Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    .line 174
    :cond_0
    return-void
.end method
