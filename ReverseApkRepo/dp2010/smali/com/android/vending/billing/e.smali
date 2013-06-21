.class final Lcom/android/vending/billing/e;
.super Lcom/android/vending/billing/a;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field final synthetic f:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/vending/billing/e;->f:Lcom/android/vending/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    iput-object p2, p0, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vending/billing/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/vending/billing/h;)V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/e;->f:Lcom/android/vending/billing/BillingService;

    invoke-static {p1}, Lcom/android/vending/billing/r;->a(Lcom/android/vending/billing/h;)V

    return-void
.end method

.method protected final d()J
    .locals 4

    const-string v0, "REQUEST_PURCHASE"

    invoke-static {v0}, Lcom/android/vending/billing/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lcom/android/vending/billing/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ITEM_TYPE"

    iget-object v2, p0, Lcom/android/vending/billing/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lcom/android/vending/billing/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/vending/billing/BillingService;->c()Lcom/android/vending/billing/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/android/vending/billing/f;->a:J

    :goto_0
    return-wide v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2}, Lcom/android/vending/billing/r;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const-string v0, "REQUEST_ID"

    sget-wide v2, Lcom/android/vending/billing/f;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
