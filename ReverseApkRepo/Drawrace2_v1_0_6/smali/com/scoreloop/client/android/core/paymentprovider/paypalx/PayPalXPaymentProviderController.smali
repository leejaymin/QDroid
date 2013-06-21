.class public Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/paypal/android/MEP/PayPalResultDelegate;
.implements Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;


# static fields
.field private static a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

.field private static b:Z


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedInternally;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->k()V

    return-void
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->e()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b:Z

    return v0
.end method

.method static synthetic i()Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    return-object v0
.end method

.method static synthetic j()Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v1}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Price;->getAmountInUnits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 51
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Price;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrencyType(Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setPaymentType(I)V

    .line 53
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setPaymentSubtype(I)V

    .line 54
    const-string v2, "paypal.com@scoreloop.com"

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setRecipient(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setMerchantName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setCustomID(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/scoreloop/client/android/core/ui/ProxyActivity;->a(Landroid/content/Intent;Landroid/app/Activity;Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;)V

    .line 62
    return-void
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "merchant_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const-string v0, "com.paypal.android.PAYMENT_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v0, "com.paypal.android.PAY_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_1
    :pswitch_0
    return-void

    :cond_0
    move-object v1, v3

    .line 87
    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->onPaymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->onPaymentCanceled(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :pswitch_3
    const-string v0, "com.paypal.android.CORRELATION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v0, "com.paypal.android.ERROR_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v0, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->onPaymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final c_()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected final f()V
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b:Z

    if-eqz v0, :cond_0

    .line 185
    sput-object p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->k()V

    goto :goto_0

    .line 196
    :cond_1
    sput-object p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a:Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;

    .line 197
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->prepare()V

    goto :goto_0
.end method

.method protected final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->b()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPaymentCanceled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 111
    return-void
.end method

.method public onPaymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payment failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 118
    return-void
.end method

.method public onPaymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->OK:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 123
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    sget-boolean v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b:Z

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->b:Z

    .line 150
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->c:Ljava/util/concurrent/ExecutorService;

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/paypalx/PayPalXPaymentProviderController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
