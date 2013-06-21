.class public Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;,
        Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;,
        Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;,
        Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;,
        Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->c:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    .line 167
    return-void
.end method

.method private a(Lcom/scoreloop/client/android/core/model/PaymentProvider;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;
    .locals 4
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->e()Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;

    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 256
    iget-boolean v3, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->a:Z

    if-nez v3, :cond_2

    .line 257
    iget-object v3, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->c:Lcom/scoreloop/client/android/core/model/PaymentProvider;

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/model/PaymentProvider;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;

    move-result-object v3

    .line 261
    if-eqz v3, :cond_2

    .line 262
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->a:Z

    .line 263
    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-interface {v3, v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;->a(Lcom/scoreloop/client/android/core/model/Payment;)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 276
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b(Lcom/scoreloop/client/android/core/model/Payment;)V

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Session;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 195
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;

    .line 197
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v0, p2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;->a(Lcom/scoreloop/client/android/core/model/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t instantiate module of class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a()V

    return-void
.end method

.method private b(Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;

    .line 357
    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;->pendingPaymentProcessorDidProcessPayment(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Payment;)V

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/scoreloop/client/android/core/model/Session;)Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 151
    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    .line 152
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;-><init>()V

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(ILjava/lang/Object;)V

    .line 156
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/model/Payment;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 217
    iget-object v3, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    new-instance v2, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    :cond_1
    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b(Lcom/scoreloop/client/android/core/model/Payment;)V

    .line 248
    :goto_0
    return-void

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didProcessPayment - GameItemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Payment;->getGameItemIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PaymentController;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$1;-><init>(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)V

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/PaymentController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 243
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/controller/PaymentController;->setPayment(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 244
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->loadPayment()V

    goto :goto_0

    .line 246
    :cond_3
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b(Lcom/scoreloop/client/android/core/model/Payment;)V

    goto :goto_0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    invoke-direct {v0, p1, p2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;-><init>(Lcom/scoreloop/client/android/core/model/Payment;Lcom/scoreloop/client/android/core/model/PaymentProvider;)V

    .line 186
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a()V

    .line 191
    return-void
.end method

.method public addObserver(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->stop()V

    .line 208
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->stop()V

    .line 283
    return-void
.end method

.method public hasPendingPayment(Ljava/lang/String;)Z
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "paymentIdentifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 308
    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingPaymentForGameItem(Ljava/lang/String;)Z
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gameItemIdentifer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 331
    iget-object v0, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    .line 332
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Payment;->getGameItemIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a:Z

    return v0
.end method

.method public removeObserver(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Observer;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public start(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :goto_0
    return-void

    .line 403
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a:Z

    .line 406
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 407
    invoke-static {}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/PaymentProvider;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->e()Ljava/lang/String;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_2

    .line 412
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Session;)V

    goto :goto_2

    .line 423
    :cond_4
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    .line 424
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;->g()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;->c()Ljava/util/List;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;

    .line 426
    iget-object v2, v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$a;->b:Lcom/scoreloop/client/android/core/model/Payment;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Payment;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->hasPendingPayment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 427
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->e:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$c;->a(Lcom/scoreloop/client/android/core/util/JSONSerializable;)Z

    .line 433
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a()V

    .line 436
    new-instance v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;-><init>(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Session;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a:Z

    .line 472
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;

    .line 473
    invoke-interface {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;->a()V

    goto :goto_1

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/model/PaymentProvider;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    goto :goto_0
.end method
