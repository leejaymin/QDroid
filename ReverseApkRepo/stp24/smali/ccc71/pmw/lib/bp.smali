.class final Lccc71/pmw/lib/bp;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2914
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2921
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_applist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2926
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2929
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_4

    .line 2931
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2932
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2933
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->u(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2934
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->v(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2935
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2936
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->w(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->x(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2938
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2939
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->y(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2943
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2944
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2945
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->u(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2946
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->v(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2947
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2948
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->w(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2949
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->x(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2950
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2951
    iget-object v0, p0, Lccc71/pmw/lib/bp;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->y(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
