.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    check-cast p1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 72
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil$1;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    check-cast p1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 77
    return-void
.end method
