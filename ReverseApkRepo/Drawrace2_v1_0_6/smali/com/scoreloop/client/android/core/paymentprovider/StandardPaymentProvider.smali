.class public abstract Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;
.super Lcom/scoreloop/client/android/core/model/PaymentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;->f()V

    .line 17
    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;->g()Ljava/lang/String;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create Payment Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;->getKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". Please make sure you have all the required libraries in your classpath."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract g()Ljava/lang/String;
.end method
