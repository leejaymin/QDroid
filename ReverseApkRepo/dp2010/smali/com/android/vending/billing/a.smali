.class abstract Lcom/android/vending/billing/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field final synthetic b:Lcom/android/vending/billing/BillingService;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/BillingService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/a;->b:Lcom/android/vending/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/vending/billing/a;->c:I

    return-void
.end method

.method protected static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PACKAGE_NAME"

    const-string v2, "com.inisoft.mediaplayer.a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/billing/h;->a(I)Lcom/android/vending/billing/h;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/vending/billing/a;->c:I

    return v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/vending/billing/BillingService;->e()V

    return-void
.end method

.method protected a(Lcom/android/vending/billing/h;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/vending/billing/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/a;->b:Lcom/android/vending/billing/BillingService;

    invoke-static {v1}, Lcom/android/vending/billing/BillingService;->a(Lcom/android/vending/billing/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/vending/billing/BillingService;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/android/vending/billing/BillingService;->c()Lcom/android/vending/billing/i;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/billing/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/billing/a;->a:J

    iget-wide v0, p0, Lcom/android/vending/billing/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/android/vending/billing/BillingService;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/vending/billing/a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/a;->a(Landroid/os/RemoteException;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
