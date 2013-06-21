.class final Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->start(Lcom/scoreloop/client/android/core/model/Session;)V
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
        "Lcom/scoreloop/client/android/core/model/PaymentProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/model/Session;

.field private synthetic b:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->b:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->a:Lcom/scoreloop/client/android/core/model/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 436
    check-cast p1, Lcom/scoreloop/client/android/core/model/PaymentProvider;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/PaymentProvider;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->b:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$Module;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->b:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->a:Lcom/scoreloop/client/android/core/model/Session;

    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->a(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Session;)V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor$2;->b:Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;->b(Lcom/scoreloop/client/android/core/controller/PendingPaymentProcessor;)V

    goto :goto_0
.end method
