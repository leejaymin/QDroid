.class final Lccc71/pmw/lib/pc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_terminal;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_terminal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/pc;->a:Lccc71/pmw/lib/pmw_terminal;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lccc71/pmw/lib/pc;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_terminal;->registerForContextMenu(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lccc71/pmw/lib/pc;->a:Lccc71/pmw/lib/pmw_terminal;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_terminal;->openContextMenu(Landroid/view/View;)V

    .line 165
    return-void
.end method
