.class public Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private c:Lcom/scoreloop/client/android/core/controller/PaymentController;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Payment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/scoreloop/client/android/core/model/Payment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/scoreloop/client/android/core/model/Session;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b:Z

    if-nez v0, :cond_1

    .line 68
    iput-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iput-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->a:Landroid/os/Handler;

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Payment;

    .line 77
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 78
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->loadPayment()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b:Z

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-direct {v0, v1, p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    .line 91
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->e:Ljava/util/Queue;

    .line 92
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b:Z

    .line 134
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c()V

    .line 42
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->f:Lcom/scoreloop/client/android/core/model/Session;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b:Z

    .line 129
    return-void
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    if-ne p1, v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error loading payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b()V

    .line 104
    :cond_0
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment$State;->CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment$State;->PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->b()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;)V

    goto :goto_0
.end method
