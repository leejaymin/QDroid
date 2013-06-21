.class final Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fortumo/android/Fortumo;->isSupportedOperator(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider$1;->b:Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;->a(Lcom/scoreloop/client/android/core/paymentprovider/fortumo/FortumoPaymentProvider;)V

    :cond_0
    return-void
.end method
