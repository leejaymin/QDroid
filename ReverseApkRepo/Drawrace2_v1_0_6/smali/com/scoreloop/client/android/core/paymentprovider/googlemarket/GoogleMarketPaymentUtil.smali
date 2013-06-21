.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Session;",
            "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Lcom/scoreloop/client/android/core/model/Payment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "order without a payment-identifier in the developer-payload slot"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 118
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/model/EntityFactory;->createEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;

    invoke-direct {v1, p2, p3}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/scoreloop/client/android/core/controller/PaymentController;

    new-instance v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;

    invoke-direct {v3, p0, p4, p1, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/model/Continuation;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$a;)V

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 115
    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 116
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/PaymentController;->loadPayment()V

    goto :goto_0
.end method
