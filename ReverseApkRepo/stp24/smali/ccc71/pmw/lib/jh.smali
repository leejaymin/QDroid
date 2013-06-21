.class final Lccc71/pmw/lib/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lccc71/pmw/lib/jg;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/jg;->d()Lccc71/pmw/lib/jg;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
