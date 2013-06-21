.class final Lccc71/bmw/lib/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/q;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->e(Lccc71/bmw/lib/bmw_status;)V

    .line 1434
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1413
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0, p2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;F)V

    .line 1415
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v1, :cond_1

    .line 1419
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    sget v1, Lccc71/bmw/lib/d;->bN:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 1420
    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    .line 1428
    :cond_0
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->e(Lccc71/bmw/lib/bmw_status;)V

    .line 1429
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    sget v1, Lccc71/bmw/lib/d;->bM:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 1425
    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_graph_view;->setZoomFactor(F)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1388
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v1, :cond_2

    .line 1392
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    sget v1, Lccc71/bmw/lib/d;->bN:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 1393
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    .line 1402
    :cond_0
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->c(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->c(Lccc71/bmw/lib/bmw_status;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1403
    :cond_1
    invoke-static {}, Lccc71/bmw/lib/bi;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1404
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->c(Landroid/app/Activity;)V

    .line 1408
    :goto_1
    return-void

    .line 1397
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    sget v1, Lccc71/bmw/lib/d;->bM:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_status;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 1398
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_graph_view;->c(F)F

    goto :goto_0

    .line 1406
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/dj;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/av;->b(Landroid/app/Activity;)V

    goto :goto_1
.end method
