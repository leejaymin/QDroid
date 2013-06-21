.class final Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$1;->a:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 231
    check-cast p1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didProcessPayment - loaded GameItemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$1;->a:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V

    .line 235
    return-void
.end method
