.class final Lccc71/bmw/lib/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/q;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_full_graph;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->c(Lccc71/bmw/lib/bmw_full_graph;)V

    .line 360
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0, p2}, Lccc71/bmw/lib/bmw_settings;->a(Landroid/content/Context;F)V

    .line 353
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->c(Lccc71/bmw/lib/bmw_full_graph;)V

    .line 354
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->b(Lccc71/bmw/lib/bmw_full_graph;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->b(Lccc71/bmw/lib/bmw_full_graph;)Lccc71/utils/ccc71_graph_view;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/utils/ccc71_graph_view;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/bi;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/av;->c(Landroid/app/Activity;)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/aq;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/av;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
