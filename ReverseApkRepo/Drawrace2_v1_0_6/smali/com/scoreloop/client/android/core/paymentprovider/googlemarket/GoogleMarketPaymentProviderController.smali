.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;
.super Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

.field private c:Landroid/os/Handler;

.field private d:Lcom/scoreloop/client/android/core/controller/PaymentController;

.field private e:Ljava/lang/reflect/Method;

.field private final f:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedInternally;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    return-object v0
.end method

.method static synthetic e(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Price;->c()Ljava/util/Map;

    move-result-object v0

    .line 126
    const-string v1, "product_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, ""

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Price;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "product_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic g(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->prepare()V

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not use test Product IDs. Please set up a real product!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Payment;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 69
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 70
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPrice()Lcom/scoreloop/client/android/core/model/Price;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Payment;->a(Lcom/scoreloop/client/android/core/model/Price;)V

    .line 72
    new-instance v1, Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;)V

    invoke-direct {v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d:Lcom/scoreloop/client/android/core/controller/PaymentController;

    .line 94
    iget-object v1, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 95
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->b()V

    .line 97
    return-void
.end method

.method public final a(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 151
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    .line 159
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 160
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->f:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return v3

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error starting activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error starting activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 230
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 190
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    new-instance v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;

    invoke-direct {v2, p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController$2;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;)V

    invoke-static {v0, p1, p2, p3, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentUtil;->a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Continuation;)V

    move v0, v1

    .line 230
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    .line 240
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    if-ne p2, v0, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidCancel(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    .line 243
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    .line 254
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_2
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_OK:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    if-eq p2, v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFail(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;Ljava/lang/Exception;)V

    .line 247
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c:Landroid/os/Handler;

    const-wide/32 v1, 0xafc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public final a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 110
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 113
    :cond_0
    return-void
.end method

.method public getPayment()Lcom/scoreloop/client/android/core/model/Payment;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d:Lcom/scoreloop/client/android/core/controller/PaymentController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 264
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a()Z

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPayment()Lcom/scoreloop/client/android/core/model/Payment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 277
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;->paymentControllerDidFinishWithPendingPayment(Lcom/scoreloop/client/android/core/controller/PaymentProviderController;)V

    .line 278
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProviderController;->e()V

    .line 279
    return-void
.end method
