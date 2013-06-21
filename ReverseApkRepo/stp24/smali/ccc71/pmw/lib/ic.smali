.class final Lccc71/pmw/lib/ic;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ic;->a:Lccc71/pmw/lib/pmw_memory;

    .line 261
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 268
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/ic;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->b(Lccc71/pmw/lib/pmw_memory;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ic;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->c(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/q;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lccc71/pmw/b/q;->a(ZZ)V

    .line 271
    iget-object v0, p0, Lccc71/pmw/lib/ic;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_memory;->d(Lccc71/pmw/lib/pmw_memory;)V

    .line 273
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
