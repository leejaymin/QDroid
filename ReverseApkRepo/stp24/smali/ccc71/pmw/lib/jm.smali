.class final Lccc71/pmw/lib/jm;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    .line 386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 394
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->aQ:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 401
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 403
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->finish()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->s:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 408
    iget-object v0, p0, Lccc71/pmw/lib/jm;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bx:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
