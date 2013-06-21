.class final Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule$1;->a:Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPendingPaymentProcessorModule;)V

    .line 121
    return-void
.end method
