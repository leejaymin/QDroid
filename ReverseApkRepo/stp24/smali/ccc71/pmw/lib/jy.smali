.class final Lccc71/pmw/lib/jy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/q;->e(Lccc71/pmw/b/p;)V

    .line 197
    iget-object v0, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->W:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->X:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 201
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lccc71/pmw/lib/jy;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fZ:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    sget v1, Lccc71/pmw/lib/c;->L:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 204
    return-void
.end method
