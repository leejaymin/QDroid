.class final Lccc71/pmw/lib/ov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_sysctl;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_sysctl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ov;->a:Lccc71/pmw/lib/pmw_sysctl;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pb;

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 383
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 385
    iget-object v3, p0, Lccc71/pmw/lib/ov;->a:Lccc71/pmw/lib/pmw_sysctl;

    iget-object v4, v0, Lccc71/pmw/lib/pb;->d:Ljava/lang/String;

    invoke-static {v3, v2, v0, v4}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/view/View;Lccc71/pmw/lib/pb;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lccc71/pmw/lib/ov;->a:Lccc71/pmw/lib/pmw_sysctl;

    invoke-static {v2, v1, v0}, Lccc71/pmw/lib/pmw_sysctl;->a(Lccc71/pmw/lib/pmw_sysctl;Landroid/widget/TableRow;Lccc71/pmw/lib/pb;)V

    .line 387
    return-void
.end method
