.class final Lccc71/bmw/pro/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/pro/bmw_widget_graph;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/bmw/pro/bmw_widget_graph;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    iput-object p2, p0, Lccc71/bmw/pro/l;->b:Landroid/content/Context;

    iput-object p3, p0, Lccc71/bmw/pro/l;->c:Landroid/os/Handler;

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/pro/l;)Lccc71/bmw/pro/bmw_widget_graph;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 162
    iget-object v0, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    invoke-static {v0}, Lccc71/bmw/pro/bmw_widget_graph;->a(Lccc71/bmw/pro/bmw_widget_graph;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-static {}, Lccc71/bmw/lib/ej;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lccc71/bmw/pro/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/ej;->a(Landroid/content/Context;)V

    .line 162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    iget-object v1, p0, Lccc71/bmw/pro/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    iget-object v1, v1, Lccc71/bmw/pro/bmw_widget_graph;->z:Lccc71/bmw/lib/ak;

    iget-object v2, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    iget-boolean v2, v2, Lccc71/bmw/pro/bmw_widget_graph;->v:Z

    invoke-static {v1, v2}, Lccc71/bmw/lib/ej;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/pro/bmw_widget_graph;->F:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :goto_0
    iget-object v0, p0, Lccc71/bmw/pro/l;->a:Lccc71/bmw/pro/bmw_widget_graph;

    invoke-static {v0}, Lccc71/bmw/pro/bmw_widget_graph;->a(Lccc71/bmw/pro/bmw_widget_graph;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_2
    invoke-static {}, Lccc71/bmw/lib/ej;->a()V

    .line 179
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    iget-object v0, p0, Lccc71/bmw/pro/l;->c:Landroid/os/Handler;

    new-instance v1, Lccc71/bmw/pro/m;

    iget-object v2, p0, Lccc71/bmw/pro/l;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lccc71/bmw/pro/m;-><init>(Lccc71/bmw/pro/l;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 172
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
