.class final Lcom/android/vending/billing/b;
.super Lcom/android/vending/billing/a;


# instance fields
.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/android/vending/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/android/vending/billing/b;->d:Lcom/android/vending/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/vending/billing/b;->d:Lcom/android/vending/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/a;-><init>(Lcom/android/vending/billing/BillingService;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 3

    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-static {v0}, Lcom/android/vending/billing/b;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "ITEM_TYPE"

    iget-object v2, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/vending/billing/BillingService;->c()Lcom/android/vending/billing/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/billing/i;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/vending/billing/h;->a:Lcom/android/vending/billing/h;

    invoke-virtual {v1}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/vending/billing/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vending/billing/r;->a(ZLjava/lang/String;)V

    sget-wide v0, Lcom/android/vending/billing/f;->a:J

    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
