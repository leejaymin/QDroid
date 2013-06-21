.class public Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;
.super Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->f()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    const-string v0, "com.fortumo.android.FortumoActivity"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.fortumo.FortumoPaymentProviderController"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.StandardPendingPaymentProcessorModule"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.fortumo.android.Fortumo"

    return-object v0
.end method
