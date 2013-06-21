.class final Lccc71/pmw/lib/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jc;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 996
    iget-object v0, p0, Lccc71/pmw/lib/jc;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_monitor;->registerForContextMenu(Landroid/view/View;)V

    .line 997
    iget-object v0, p0, Lccc71/pmw/lib/jc;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_monitor;->openContextMenu(Landroid/view/View;)V

    .line 998
    return-void
.end method
