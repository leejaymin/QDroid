.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;
.super Lcom/scoreloop/client/android/core/model/PaymentProvider;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;


# instance fields
.field private b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/PaymentProvider;-><init>()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 46
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->b(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    const-string v0, "com.android.vending.BILLING"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.googlemarket.BillingService"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.googlemarket.BillingReceiver"

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    .line 28
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager$Delegate;)V

    .line 31
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->b:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->g()V

    .line 34
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->f()V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/GoogleMarketPaymentProvider;->g()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.googlemarket.GoogleMarketPaymentProviderController"

    return-object v0
.end method

.method public controllerSupportsPrepare()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.scoreloop.client.android.core.paymentprovider.googlemarket.GoogleMarketPendingPaymentProcessorModule"

    return-object v0
.end method
