.class public abstract Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.super Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$1;,
        Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/scoreloop/client/android/core/controller/PaymentController;

.field private c:I

.field private d:I

.field private final e:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 34
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->a:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/paymentprovider/a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->e:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c:I

    return v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentController;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 107
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d:I

    .line 111
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 112
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->e:Ljava/lang/Runnable;

    const-wide v2, 0x407f400000000000L

    iget v4, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d:I

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Payment;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/Entity;)V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/Price;)V

    .line 63
    new-instance v1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    .line 64
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c:I

    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b()V

    .line 67
    return-void
.end method

.method protected final a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$1;->a:[I

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c:I

    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->loadPayment()V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->h()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final e()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->a:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Z
.end method

.method public getPayment()Lcom/scoreloop/client/android/core/model/Payment;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->h()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    new-instance v1, Lcom/scoreloop/client/android/core/controller/NetworkException;

    invoke-direct {v1, p2}, Lcom/scoreloop/client/android/core/controller/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b:Lcom/scoreloop/client/android/core/controller/PaymentController;

    if-ne p1, v0, :cond_0

    .line 136
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$1;->b:[I

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Payment;->getState()Lcom/scoreloop/client/android/core/model/Payment$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Payment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c:I

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "invalid payment method data"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->f()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->h()V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "payment failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->h()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
