.class final Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/paypal/android/MEP/PayPal;->initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    .line 163
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPal;->setLanguage(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPal;->setShippingEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->d(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1$1;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void

    .line 164
    :cond_0
    const-string v0, "en_US"

    goto :goto_0
.end method
