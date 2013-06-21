.class final Lccc71/utils/billing/k;
.super Lccc71/utils/billing/j;
.source "SourceFile"


# instance fields
.field final synthetic c:Lccc71/utils/billing/ccc71_billing_svc;


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lccc71/utils/billing/k;->c:Lccc71/utils/billing/ccc71_billing_svc;

    .line 110
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccc71/utils/billing/j;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 2

    .prologue
    .line 118
    :try_start_0
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lccc71/utils/billing/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 119
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 120
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    sget-object v1, Lccc71/utils/billing/e;->a:Lccc71/utils/billing/e;

    invoke-virtual {v1}, Lccc71/utils/billing/e;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 122
    :goto_0
    invoke-static {v0}, Lccc71/utils/billing/f;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    sget-wide v0, Lccc71/utils/billing/c;->a:J

    return-wide v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
