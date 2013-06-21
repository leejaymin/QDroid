.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    .line 77
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$BillingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    .line 90
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    goto :goto_0
.end method
