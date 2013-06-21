.class final Lccc71/pmw/lib/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/cy;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    .line 1911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1916
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->h(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1919
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->g(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1920
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->p(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1928
    :goto_0
    return-void

    .line 1924
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->g(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1925
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->h(Lccc71/pmw/lib/pmw_backuplist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1926
    iget-object v0, p0, Lccc71/pmw/lib/cz;->a:Lccc71/pmw/lib/cy;

    invoke-static {v0}, Lccc71/pmw/lib/cy;->a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->p(Lccc71/pmw/lib/pmw_backuplist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
