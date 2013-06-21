.class final Lccc71/utils/billing/l;
.super Lccc71/utils/billing/j;
.source "SourceFile"


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lccc71/utils/billing/ccc71_billing_svc;


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lccc71/utils/billing/l;->d:Lccc71/utils/billing/ccc71_billing_svc;

    .line 184
    invoke-direct {p0, p1, p2}, Lccc71/utils/billing/j;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I)V

    .line 185
    iput-object p3, p0, Lccc71/utils/billing/l;->c:[Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 4

    .prologue
    .line 191
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lccc71/utils/billing/l;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 192
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lccc71/utils/billing/l;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 194
    const-string v1, "REQUEST_ID"

    .line 195
    sget-wide v2, Lccc71/utils/billing/c;->a:J

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
