.class final Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;
.super Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I)V

    .line 190
    iput-object p3, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;->a:[Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method protected final b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 196
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;->a(Landroid/os/Bundle;)V

    .line 199
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
