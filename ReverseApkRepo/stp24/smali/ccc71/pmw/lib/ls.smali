.class final Lccc71/pmw/lib/ls;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ls;->a:Landroid/content/Context;

    iput-object p2, p0, Lccc71/pmw/lib/ls;->b:Ljava/util/ArrayList;

    .line 1792
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 2

    .prologue
    .line 1797
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1798
    iget-object v0, p0, Lccc71/pmw/lib/ls;->a:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/lib/ls;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    monitor-exit p0

    return-void

    .line 1797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
