.class final Lccc71/pmw/lib/il;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory_tweak;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory_tweak;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/il;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lccc71/pmw/lib/il;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_memory_tweak;->registerForContextMenu(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lccc71/pmw/lib/il;->a:Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_memory_tweak;->openContextMenu(Landroid/view/View;)V

    .line 125
    return-void
.end method
