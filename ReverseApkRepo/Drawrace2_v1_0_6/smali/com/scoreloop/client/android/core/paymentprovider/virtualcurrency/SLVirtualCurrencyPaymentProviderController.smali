.class public Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedInternally;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getBalance()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v0

    if-gez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "You don\'t have enough %s!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Money;->getApplicationCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->a()V

    goto :goto_0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    .line 59
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
