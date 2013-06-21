.class public abstract Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/scoreloop/client/android/core/model/GameItem;

.field private final c:Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

.field private d:Lcom/scoreloop/client/android/core/model/Price;

.field private final e:Lcom/scoreloop/client/android/core/model/PaymentProvider;

.field private final f:Lcom/scoreloop/client/android/core/model/Session;


# direct methods
.method protected constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->f:Lcom/scoreloop/client/android/core/model/Session;

    .line 84
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->c:Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    .line 85
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->e:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    .line 86
    return-void
.end method

.method public static getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;

    move-result-object v0

    return-object v0
.end method

.method public static getPaymentProviderController(Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;Lcom/scoreloop/client/android/core/model/PaymentProvider;Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer and provider argumetns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    if-nez p2, :cond_2

    .line 53
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object p2

    .line 57
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->c()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 63
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/scoreloop/client/android/core/model/Session;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/scoreloop/client/android/core/model/PaymentProvider;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 66
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->a:Landroid/app/Activity;

    return-object v0
.end method

.method protected final c()Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->c:Lcom/scoreloop/client/android/core/controller/PaymentProviderControllerObserver;

    return-object v0
.end method

.method public checkout(Landroid/app/Activity;Lcom/scoreloop/client/android/core/model/GameItem;Lcom/scoreloop/client/android/core/model/Price;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->a:Landroid/app/Activity;

    .line 103
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->b:Lcom/scoreloop/client/android/core/model/GameItem;

    .line 104
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->d:Lcom/scoreloop/client/android/core/model/Price;

    .line 106
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->a()V

    .line 107
    return-void
.end method

.method protected final d()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->f:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method public getGameItem()Lcom/scoreloop/client/android/core/model/GameItem;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->b:Lcom/scoreloop/client/android/core/model/GameItem;

    return-object v0
.end method

.method public abstract getPayment()Lcom/scoreloop/client/android/core/model/Payment;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end method

.method public getPaymentProvider()Lcom/scoreloop/client/android/core/model/PaymentProvider;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->e:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    return-object v0
.end method

.method public getPrice()Lcom/scoreloop/client/android/core/model/Price;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PaymentProviderController;->d:Lcom/scoreloop/client/android/core/model/Price;

    return-object v0
.end method

.method public prepare()V
    .locals 0
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 166
    return-void
.end method
