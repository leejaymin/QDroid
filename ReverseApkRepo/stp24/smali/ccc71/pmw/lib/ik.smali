.class final Lccc71/pmw/lib/ik;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory_tweak;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory_tweak;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ik;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    .line 479
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 484
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lccc71/pmw/lib/ik;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->y(Landroid/content/Context;)Lccc71/pmw/a/ac;

    move-result-object v0

    .line 487
    new-instance v1, Lccc71/pmw/a/ar;

    invoke-direct {v1}, Lccc71/pmw/a/ar;-><init>()V

    .line 489
    iget-object v1, v0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lccc71/pmw/a/ac;->g:Ljava/lang/String;

    invoke-static {}, Lccc71/pmw/a/ar;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lccc71/pmw/lib/ik;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    iget-object v1, p0, Lccc71/pmw/lib/ik;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    sget v2, Lccc71/pmw/lib/g;->dK:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory_tweak;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 496
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 497
    return-void
.end method
