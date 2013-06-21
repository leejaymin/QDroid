.class final Lccc71/pmw/lib/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 1712
    iget-object v0, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->cM:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1715
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1722
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1719
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->registerForContextMenu(Landroid/view/View;)V

    .line 1720
    iget-object v0, p0, Lccc71/pmw/lib/cn;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, p1}, Lccc71/pmw/lib/pmw_applist;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method
