.class final Lccc71/pmw/lib/ol;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 660
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 665
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 667
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_sysctl;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_4

    .line 672
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->p(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->q(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->q(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->r(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->s(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->s(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_sysctl;->t(Lccc71/pmw/lib/pmw_sysctl;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 681
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->q(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 682
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->q(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->l(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 685
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->s(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lccc71/pmw/lib/ol;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_sysctl;->s(Lccc71/pmw/lib/pmw_sysctl;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
