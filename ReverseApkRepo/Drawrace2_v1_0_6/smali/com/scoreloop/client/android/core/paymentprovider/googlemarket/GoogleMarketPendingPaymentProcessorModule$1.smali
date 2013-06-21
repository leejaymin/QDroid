.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z
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

.field private synthetic b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    check-cast p1, Lcom/scoreloop/client/android/core/model/Payment;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a(Lcom/scoreloop/client/android/core/model/Payment;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
