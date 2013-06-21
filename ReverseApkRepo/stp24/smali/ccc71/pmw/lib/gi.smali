.class final Lccc71/pmw/lib/gi;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gi;->a:Landroid/content/Context;

    iput-object p2, p0, Lccc71/pmw/lib/gi;->b:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 33
    sget-object v1, Lccc71/pmw/lib/gh;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-boolean v0, Lccc71/pmw/lib/gh;->c:Z

    if-nez v0, :cond_0

    .line 37
    const-string v0, "process_monitor_widget"

    const-string v2, "Running init once..."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lccc71/pmw/lib/gh;->a()V

    .line 45
    iget-object v0, p0, Lccc71/pmw/lib/gi;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Z)V

    .line 49
    invoke-static {}, Lccc71/pmw/a/ah;->t()Z

    .line 50
    invoke-static {}, Lccc71/pmw/a/ah;->j()Z

    .line 51
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    .line 52
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    .line 56
    new-instance v0, Lccc71/pmw/a/as;

    invoke-direct {v0}, Lccc71/pmw/a/as;-><init>()V

    .line 57
    new-instance v0, Lccc71/pmw/a/aq;

    invoke-direct {v0}, Lccc71/pmw/a/aq;-><init>()V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/gh;->c:Z

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/gi;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/gi;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/gi;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
