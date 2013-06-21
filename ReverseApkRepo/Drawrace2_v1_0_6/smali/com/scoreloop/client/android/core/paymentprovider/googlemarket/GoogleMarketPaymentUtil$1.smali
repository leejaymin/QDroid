.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil;->a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic b:Lcom/scoreloop/client/android/core/model/Session;

.field private synthetic c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

.field private synthetic d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/model/Continuation;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->b:Lcom/scoreloop/client/android/core/model/Session;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    iput-object p4, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    check-cast p1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 113
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    check-cast p1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->b:Lcom/scoreloop/client/android/core/model/Session;

    new-instance v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;)V

    invoke-direct {v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 83
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/model/Payment$State;->CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v2, v3, :cond_2

    .line 84
    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d()Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->PURCHASED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    if-ne v2, v3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    .line 108
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v1, Lcom/scoreloop/client/android/core/model/Payment$State;->CANCELED:Lcom/scoreloop/client/android/core/model/Payment$State;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/Payment$State;)V

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/model/Payment$State;->PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v2, v3, :cond_4

    .line 91
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d()Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v0

    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->PURCHASED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    if-ne v0, v2, :cond_3

    .line 92
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->a(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/model/Payment$State;->BOOKED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v2, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d()Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->c:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->d()Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->REFUNDED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    if-ne v2, v3, :cond_1

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->d:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b(Lcom/scoreloop/client/android/core/model/Payment$Credential;)V

    goto :goto_0
.end method
