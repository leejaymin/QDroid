.class final Lccc71/bmw/lib/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_full_graph;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ap;->a:Lccc71/bmw/lib/bmw_full_graph;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lccc71/bmw/lib/ap;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_full_graph;->registerForContextMenu(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lccc71/bmw/lib/ap;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_full_graph;->openContextMenu(Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lccc71/bmw/lib/ap;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-virtual {v0, p1}, Lccc71/bmw/lib/bmw_full_graph;->unregisterForContextMenu(Landroid/view/View;)V

    .line 329
    const/4 v0, 0x1

    return v0
.end method
