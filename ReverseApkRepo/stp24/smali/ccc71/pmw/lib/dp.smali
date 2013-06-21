.class final Lccc71/pmw/lib/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1480
    iget-object v1, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1482
    iget-object v1, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v2, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    sget v3, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_backuplist;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1490
    :goto_0
    return-void

    .line 1487
    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    iget-object v2, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->i(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;Z)V

    .line 1488
    iget-object v0, p0, Lccc71/pmw/lib/dp;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->j(Lccc71/pmw/lib/pmw_backuplist;)V

    goto :goto_0

    .line 1487
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
