.class final Lccc71/pmw/lib/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ch;

.field private final synthetic b:Lccc71/pmw/a/y;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ch;Lccc71/pmw/a/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    iput-object p2, p0, Lccc71/pmw/lib/ci;->b:Lccc71/pmw/a/y;

    .line 1624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1629
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    invoke-static {v0}, Lccc71/pmw/lib/ch;->a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ci;->b:Lccc71/pmw/a/y;

    sget-object v3, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ci;->b:Lccc71/pmw/a/y;

    sget-object v3, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1630
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1632
    iget-object v0, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    invoke-static {v0}, Lccc71/pmw/lib/ch;->a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1633
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1634
    :goto_1
    if-lt v1, v3, :cond_2

    .line 1643
    iget-object v0, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    invoke-static {v0}, Lccc71/pmw/lib/ch;->a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1644
    return-void

    .line 1629
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1636
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1637
    iget-object v5, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    invoke-static {v5}, Lccc71/pmw/lib/ch;->a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1639
    iget-object v5, p0, Lccc71/pmw/lib/ci;->a:Lccc71/pmw/lib/ch;

    invoke-static {v5}, Lccc71/pmw/lib/ch;->a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1640
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1634
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
