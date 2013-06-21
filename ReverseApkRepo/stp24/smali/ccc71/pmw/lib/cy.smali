.class final Lccc71/pmw/lib/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backuplist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backuplist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/cy;)Lccc71/pmw/lib/pmw_backuplist;
    .locals 1
    .parameter

    .prologue
    .line 1853
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1858
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1859
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1863
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1865
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1866
    add-int/lit8 v1, v1, -0x1

    .line 1869
    :cond_0
    iget-object v2, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_backuplist;->i(Lccc71/pmw/lib/pmw_backuplist;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1871
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1873
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1874
    div-int/lit8 v0, v1, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 1876
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1911
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->n(Lccc71/pmw/lib/pmw_backuplist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/cz;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/cz;-><init>(Lccc71/pmw/lib/cy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1930
    return-void

    .line 1880
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1885
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1891
    :cond_3
    iget-object v1, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1892
    :goto_1
    if-lt v2, v4, :cond_4

    .line 1905
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1907
    iget-object v0, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1894
    :cond_4
    iget-object v1, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1895
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1896
    div-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 1898
    iget-object v5, p0, Lccc71/pmw/lib/cy;->a:Lccc71/pmw/lib/pmw_backuplist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->o(Lccc71/pmw/lib/pmw_backuplist;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1892
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1902
    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method
