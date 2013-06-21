.class public Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "mobile_payment_url"

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedInternally;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 23
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->c()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method public final d_()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->f()V

    .line 55
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->show()V

    .line 32
    return-void
.end method

.method protected final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Payment;->c()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentProviderController;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method
