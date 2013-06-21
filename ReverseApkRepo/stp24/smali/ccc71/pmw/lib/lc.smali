.class final Lccc71/pmw/lib/lc;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sd;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/lc;->a:Lccc71/pmw/lib/pmw_sd;

    .line 530
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 535
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lccc71/pmw/lib/lc;->a:Lccc71/pmw/lib/pmw_sd;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    .line 538
    new-instance v1, Lccc71/pmw/a/as;

    invoke-direct {v1}, Lccc71/pmw/a/as;-><init>()V

    .line 539
    new-instance v2, Lccc71/pmw/a/aq;

    invoke-direct {v2}, Lccc71/pmw/a/aq;-><init>()V

    .line 540
    iget v3, v0, Lccc71/pmw/a/ac;->e:I

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lccc71/pmw/a/as;->f()I

    move-result v1

    iget v3, v0, Lccc71/pmw/a/ac;->e:I

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v1, v0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lccc71/pmw/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lccc71/pmw/a/aq;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/lc;->a:Lccc71/pmw/lib/pmw_sd;

    iget-object v1, p0, Lccc71/pmw/lib/lc;->a:Lccc71/pmw/lib/pmw_sd;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_sd;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 547
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 548
    return-void
.end method
