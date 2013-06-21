.class final Lccc71/bmw/lib/au;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 408
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "battery_widget_monitor"

    const-string v1, "UpdateHandler - updating view!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->d(Lccc71/bmw/lib/bmw_full_graph;)V

    .line 413
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->b(Lccc71/bmw/lib/bmw_full_graph;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    const v1, 0x7f7fffff

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    .line 415
    :cond_0
    return-void
.end method
