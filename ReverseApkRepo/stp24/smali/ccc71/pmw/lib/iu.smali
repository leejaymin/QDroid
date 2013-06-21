.class final Lccc71/pmw/lib/iu;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;Landroid/os/Handler;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/iu;->a:Lccc71/pmw/lib/pmw_monitor;

    iput-object p2, p0, Lccc71/pmw/lib/iu;->b:Landroid/os/Handler;

    iput-boolean p3, p0, Lccc71/pmw/lib/iu;->c:Z

    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/iu;)Lccc71/pmw/lib/pmw_monitor;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lccc71/pmw/lib/iu;->a:Lccc71/pmw/lib/pmw_monitor;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 122
    iget-object v0, p0, Lccc71/pmw/lib/iu;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {}, Lccc71/pmw/lib/pmw_monitor;->h()V

    .line 124
    iget-object v0, p0, Lccc71/pmw/lib/iu;->b:Landroid/os/Handler;

    new-instance v1, Lccc71/pmw/lib/iv;

    iget-boolean v2, p0, Lccc71/pmw/lib/iu;->c:Z

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/iv;-><init>(Lccc71/pmw/lib/iu;Z)V

    .line 131
    const-wide/16 v2, 0x3e8

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method
