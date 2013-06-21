.class final Lccc71/bmw/lib/at;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "battery_widget_monitor"

    const-string v1, "UpdateHandler - updating view!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->d(Lccc71/bmw/lib/bmw_full_graph;)V

    .line 399
    invoke-static {}, Lccc71/bmw/lib/bmw_full_graph;->a()Lccc71/bmw/lib/bmw_full_graph;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->b(Lccc71/bmw/lib/bmw_full_graph;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    .line 401
    :cond_0
    return-void
.end method
