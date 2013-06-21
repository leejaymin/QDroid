.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;
.super Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I)V

    .line 212
    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->b:[Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a(Landroid/os/RemoteException;)V

    .line 218
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->a:J

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a(J)V

    .line 219
    return-void
.end method

.method protected final b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->a:J

    .line 225
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 226
    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 227
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->a(Landroid/os/Bundle;)V

    .line 230
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
