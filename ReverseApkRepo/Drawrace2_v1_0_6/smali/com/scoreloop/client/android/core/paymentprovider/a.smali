.class final Lcom/scoreloop/client/android/core/paymentprovider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/a;->a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/a;->a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)I

    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/a;->a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;->b(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController;)Lcom/scoreloop/client/android/core/controller/PaymentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/PaymentController;->loadPayment()V

    .line 43
    return-void
.end method
