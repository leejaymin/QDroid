.class final Lccc71/bmw/lib/ec;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/eb;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/eb;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    .line 1265
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1269
    iget-object v0, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    invoke-static {v0}, Lccc71/bmw/lib/eb;->a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_status;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->a(Z)V

    .line 1273
    iget-object v0, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    invoke-static {v0}, Lccc71/bmw/lib/eb;->a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->b(Lccc71/bmw/lib/bmw_status;)V

    .line 1275
    iget-object v0, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    invoke-static {v0}, Lccc71/bmw/lib/eb;->a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->c(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    .line 1276
    iget-object v0, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    invoke-static {v0}, Lccc71/bmw/lib/eb;->a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->d(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lccc71/bmw/lib/ec;->a:Lccc71/bmw/lib/eb;

    invoke-static {v0}, Lccc71/bmw/lib/eb;->a(Lccc71/bmw/lib/eb;)Lccc71/bmw/lib/bmw_status;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->d(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    goto :goto_0

    .line 1272
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
