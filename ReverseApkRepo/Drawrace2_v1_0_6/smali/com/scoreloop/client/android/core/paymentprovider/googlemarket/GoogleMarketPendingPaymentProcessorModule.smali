.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;


# instance fields
.field private a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Payment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/scoreloop/client/android/core/model/Session;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 132
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 133
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 135
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchPendingPayment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/model/Session;

    .line 125
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 126
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Landroid/content/Context;)V

    .line 127
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 128
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    .line 39
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->c()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchResolvePendingPayment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v1

    .line 44
    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment$State;->CREATED:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/scoreloop/client/android/core/model/Payment$State;->PENDING:Lcom/scoreloop/client/android/core/model/Payment$State;

    if-ne v1, v2, :cond_4

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->a:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Ljava/lang/String;)Z

    .line 53
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/model/Session;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;)V

    goto :goto_1
.end method

.method public final a(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;->c:Lcom/scoreloop/client/android/core/model/Session;

    new-instance v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPendingPaymentProcessorModule;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;)V

    invoke-static {v0, p1, p2, p3, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil;->a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
