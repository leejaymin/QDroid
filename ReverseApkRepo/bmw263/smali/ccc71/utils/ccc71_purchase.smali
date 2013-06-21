.class public Lccc71/utils/ccc71_purchase;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lccc71/utils/billing/p;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lccc71/utils/billing/p;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 16
    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lccc71/utils/billing/p;->b:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-virtual {p0}, Lccc71/utils/ccc71_purchase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ccc71_extra_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/billing/ccc71_billing_svc;->a(Ljava/lang/String;)Z

    .line 20
    :cond_0
    invoke-static {}, Lccc71/utils/billing/p;->a()V

    .line 22
    invoke-virtual {p0}, Lccc71/utils/ccc71_purchase;->finish()V

    .line 23
    return-void
.end method
