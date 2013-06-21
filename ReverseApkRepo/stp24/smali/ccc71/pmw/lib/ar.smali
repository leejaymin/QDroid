.class final Lccc71/pmw/lib/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/aq;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ar;->a:Lccc71/pmw/lib/aq;

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1940
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1942
    iget-object v0, p0, Lccc71/pmw/lib/ar;->a:Lccc71/pmw/lib/aq;

    invoke-static {v0}, Lccc71/pmw/lib/aq;->a(Lccc71/pmw/lib/aq;)Lccc71/pmw/lib/ao;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1943
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1944
    :goto_0
    if-lt v1, v3, :cond_0

    .line 1953
    iget-object v0, p0, Lccc71/pmw/lib/ar;->a:Lccc71/pmw/lib/aq;

    invoke-static {v0}, Lccc71/pmw/lib/aq;->a(Lccc71/pmw/lib/aq;)Lccc71/pmw/lib/ao;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1954
    return-void

    .line 1946
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1947
    iget-object v5, p0, Lccc71/pmw/lib/ar;->a:Lccc71/pmw/lib/aq;

    invoke-static {v5}, Lccc71/pmw/lib/aq;->a(Lccc71/pmw/lib/aq;)Lccc71/pmw/lib/ao;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1949
    iget-object v5, p0, Lccc71/pmw/lib/ar;->a:Lccc71/pmw/lib/aq;

    invoke-static {v5}, Lccc71/pmw/lib/aq;->a(Lccc71/pmw/lib/aq;)Lccc71/pmw/lib/ao;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1950
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1944
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
