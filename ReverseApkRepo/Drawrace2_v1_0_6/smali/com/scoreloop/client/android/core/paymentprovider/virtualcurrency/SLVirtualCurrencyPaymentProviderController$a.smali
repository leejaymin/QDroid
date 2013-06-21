.class final Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;->a:Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;->a:Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->FAILED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-static {v0, v1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;Ljava/lang/Exception;)V

    .line 23
    return-void
.end method

.method public final requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController$a;->a:Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->PAYMENT_BOOKED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;->a(Lcom/scoreloop/client/android/core/paymentprovider/virtualcurrency/SLVirtualCurrencyPaymentProviderController;Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;)V

    .line 28
    return-void
.end method
