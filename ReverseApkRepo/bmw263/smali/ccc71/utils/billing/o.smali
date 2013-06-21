.class final Lccc71/utils/billing/o;
.super Lccc71/utils/billing/j;
.source "SourceFile"


# instance fields
.field c:J

.field final synthetic d:Lccc71/utils/billing/ccc71_billing_svc;


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lccc71/utils/billing/o;->d:Lccc71/utils/billing/ccc71_billing_svc;

    .line 237
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccc71/utils/billing/j;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I)V

    .line 238
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    invoke-super {p0, p1}, Lccc71/utils/billing/j;->a(Landroid/os/RemoteException;)V

    .line 256
    iget-wide v0, p0, Lccc71/utils/billing/o;->c:J

    invoke-static {v0, v1}, Lccc71/utils/billing/h;->a(J)V

    .line 257
    return-void
.end method

.method protected final a(Lccc71/utils/billing/e;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lccc71/utils/billing/o;->d:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-static {p1}, Lccc71/utils/billing/f;->a(Lccc71/utils/billing/e;)V

    .line 263
    return-void
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lccc71/utils/billing/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/utils/billing/o;->c:J

    .line 245
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Lccc71/utils/billing/o;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 246
    const-string v1, "NONCE"

    iget-wide v2, p0, Lccc71/utils/billing/o;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 248
    const-string v1, "REQUEST_ID"

    .line 249
    sget-wide v2, Lccc71/utils/billing/c;->a:J

    .line 248
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
