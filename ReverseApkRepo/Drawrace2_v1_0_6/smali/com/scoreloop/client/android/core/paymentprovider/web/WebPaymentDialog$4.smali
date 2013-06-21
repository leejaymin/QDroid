.class final Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;->a:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;->a:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->a(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)Z

    .line 88
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;->a:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$4;->a:Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;->b(Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog;)Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/web/WebPaymentDialog$Delegate;->a(Lcom/scoreloop/client/android/core/paymentprovider/StandardPaymentProviderController$Status;)V

    .line 90
    return-void
.end method
