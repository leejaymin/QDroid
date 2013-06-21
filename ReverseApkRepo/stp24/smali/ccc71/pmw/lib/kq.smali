.class final Lccc71/pmw/lib/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/g;->dH:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_process;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->d(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/kq;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->d(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
