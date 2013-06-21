.class final Lccc71/utils/billing/m;
.super Lccc71/utils/billing/j;
.source "SourceFile"


# instance fields
.field c:J

.field final d:[Ljava/lang/String;

.field final synthetic e:Lccc71/utils/billing/ccc71_billing_svc;


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lccc71/utils/billing/m;->e:Lccc71/utils/billing/ccc71_billing_svc;

    .line 206
    invoke-direct {p0, p1, p2}, Lccc71/utils/billing/j;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I)V

    .line 207
    iput-object p3, p0, Lccc71/utils/billing/m;->d:[Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    invoke-super {p0, p1}, Lccc71/utils/billing/j;->a(Landroid/os/RemoteException;)V

    .line 227
    iget-wide v0, p0, Lccc71/utils/billing/m;->c:J

    invoke-static {v0, v1}, Lccc71/utils/billing/h;->a(J)V

    .line 228
    return-void
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 213
    invoke-static {}, Lccc71/utils/billing/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/utils/billing/m;->c:J

    .line 215
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Lccc71/utils/billing/m;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 216
    const-string v1, "NONCE"

    iget-wide v2, p0, Lccc71/utils/billing/m;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lccc71/utils/billing/m;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 219
    const-string v1, "REQUEST_ID"

    .line 220
    sget-wide v2, Lccc71/utils/billing/c;->a:J

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
