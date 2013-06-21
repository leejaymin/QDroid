.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Lcom/scoreloop/client/android/core/model/Payment;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

.field private synthetic b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 196
    check-cast p1, Lcom/scoreloop/client/android/core/model/Payment;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->prepare()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->g(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->FAILED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->h(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "failed billing"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->BOOKED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->i(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->j(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->k(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0
.end method
