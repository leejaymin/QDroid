.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;
.super Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I)V

    .line 166
    return-void
.end method


# virtual methods
.method protected final b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 172
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_OK:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 177
    :goto_0
    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Z)V

    .line 178
    sget-wide v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;->a:J

    return-wide v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
