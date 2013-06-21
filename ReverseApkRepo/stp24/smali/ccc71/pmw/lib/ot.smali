.class final Lccc71/pmw/lib/ot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v2, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    sget v3, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_sysctl;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->h(Lccc71/pmw/lib/pmw_sysctl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 338
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->i(Lccc71/pmw/lib/pmw_sysctl;)Lccc71/utils/android/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->i(Lccc71/pmw/lib/pmw_sysctl;)Lccc71/utils/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/android/a;->c()Z

    .line 341
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->j(Lccc71/pmw/lib/pmw_sysctl;)V

    .line 336
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;)V

    .line 346
    iget-object v3, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->k(Lccc71/pmw/lib/pmw_sysctl;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Z)V

    .line 347
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->k(Lccc71/pmw/lib/pmw_sysctl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->m(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bJ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 357
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_sysctl;->b(Lccc71/pmw/lib/pmw_sysctl;Z)V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v2

    .line 346
    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lccc71/pmw/lib/ot;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->m(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bw:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method
