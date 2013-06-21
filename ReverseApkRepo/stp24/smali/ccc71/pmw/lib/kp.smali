.class final Lccc71/pmw/lib/kp;
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
    iput-object p1, p0, Lccc71/pmw/lib/kp;->a:Lccc71/pmw/lib/pmw_process;

    .line 351
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 356
    iget-boolean v0, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lccc71/pmw/lib/kp;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->finish()V

    .line 360
    :cond_0
    return-void
.end method
