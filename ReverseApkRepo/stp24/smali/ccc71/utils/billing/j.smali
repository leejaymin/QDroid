.class abstract Lccc71/utils/billing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field final synthetic b:Lccc71/utils/billing/ccc71_billing_svc;

.field private final c:I


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lccc71/utils/billing/j;->b:Lccc71/utils/billing/ccc71_billing_svc;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Lccc71/utils/billing/j;->c:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lccc71/utils/billing/j;->c:I

    return v0
.end method

.method protected final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lccc71/utils/billing/j;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {v2}, Lccc71/utils/billing/ccc71_billing_svc;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->g()V

    .line 85
    return-void
.end method

.method protected a(Lccc71/utils/billing/e;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0}, Lccc71/utils/billing/j;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return v0

    .line 53
    :cond_0
    iget-object v1, p0, Lccc71/utils/billing/j;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-static {v1}, Lccc71/utils/billing/ccc71_billing_svc;->a(Lccc71/utils/billing/ccc71_billing_svc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->d()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lccc71/utils/billing/j;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/utils/billing/j;->a:J

    .line 68
    iget-wide v0, p0, Lccc71/utils/billing/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 70
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lccc71/utils/billing/j;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {p0, v0}, Lccc71/utils/billing/j;->a(Landroid/os/RemoteException;)V

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
