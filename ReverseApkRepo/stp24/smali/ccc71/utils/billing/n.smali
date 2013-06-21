.class final Lccc71/utils/billing/n;
.super Lccc71/utils/billing/j;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lccc71/utils/billing/ccc71_billing_svc;


# direct methods
.method public constructor <init>(Lccc71/utils/billing/ccc71_billing_svc;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lccc71/utils/billing/n;->e:Lccc71/utils/billing/ccc71_billing_svc;

    .line 143
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccc71/utils/billing/j;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I)V

    .line 144
    iput-object p2, p0, Lccc71/utils/billing/n;->c:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/billing/n;->d:Ljava/lang/String;

    .line 146
    return-void
.end method


# virtual methods
.method protected final a(Lccc71/utils/billing/e;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lccc71/utils/billing/n;->e:Lccc71/utils/billing/ccc71_billing_svc;

    invoke-static {}, Lccc71/utils/billing/f;->a()V

    .line 175
    return-void
.end method

.method protected final d()J
    .locals 4

    .prologue
    .line 151
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Lccc71/utils/billing/n;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Lccc71/utils/billing/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lccc71/utils/billing/n;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Lccc71/utils/billing/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-static {}, Lccc71/utils/billing/ccc71_billing_svc;->e()Lcom/android/vending/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/vending/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 159
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 160
    if-nez v0, :cond_1

    .line 162
    sget-wide v0, Lccc71/utils/billing/c;->a:J

    .line 167
    :goto_0
    return-wide v0

    .line 165
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 166
    invoke-static {v0, v2}, Lccc71/utils/billing/f;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 167
    const-string v0, "REQUEST_ID"

    .line 168
    sget-wide v2, Lccc71/utils/billing/c;->a:J

    .line 167
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
