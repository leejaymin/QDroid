.class final Lcom/android/vending/billing/d;
.super Lcom/android/vending/billing/a;


# instance fields
.field c:J

.field final d:[Ljava/lang/String;

.field final synthetic e:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/d;->e:Lcom/android/vending/billing/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    iput-object p3, p0, Lcom/android/vending/billing/d;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/vending/billing/a;->a(Landroid/os/RemoteException;)V

    iget-wide v0, p0, Lcom/android/vending/billing/d;->c:J

    invoke-static {v0, v1}, Lcom/android/vending/billing/t;->a(J)V

    return-void
.end method

.method protected final d()J
    .locals 4

    invoke-static {}, Lcom/android/vending/billing/t;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/billing/d;->c:J

    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-static {v0}, Lcom/android/vending/billing/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NONCE"

    iget-wide v2, p0, Lcom/android/vending/billing/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/android/vending/billing/d;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/vending/billing/BillingService;->c()Lcom/android/vending/billing/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/billing/d;->a(Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/f;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
