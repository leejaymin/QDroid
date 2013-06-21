.class final Lccc71/pmw/lib/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 1860
    iget-object v0, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1865
    iget-object v0, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1867
    sput-boolean v7, Lccc71/pmw/lib/pmw_easy_apps;->a:Z

    .line 1868
    sput-boolean v7, Lccc71/pmw/lib/pmw_backuplist;->a:Z

    .line 1870
    if-ne v3, v7, :cond_0

    .line 1872
    new-instance v0, Lccc71/pmw/lib/ap;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ap;-><init>(Lccc71/pmw/lib/ao;)V

    .line 1883
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 1884
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1961
    :goto_0
    return-void

    .line 1888
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1889
    :goto_1
    if-lt v1, v3, :cond_2

    .line 1897
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1899
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v0, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Landroid/app/ProgressDialog;)V

    .line 1900
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v5, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1901
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1902
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v5, Lccc71/pmw/lib/g;->fF:I

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1903
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v5, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    sget v6, Lccc71/pmw/lib/g;->ey:I

    invoke-virtual {v5, v6}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1904
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1905
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v5, Lccc71/pmw/lib/c;->e:I

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1906
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1907
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1908
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1910
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->d()Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1911
    if-eqz v0, :cond_1

    .line 1913
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1914
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 1917
    :cond_1
    new-instance v0, Lccc71/pmw/lib/aq;

    invoke-direct {v0, p0, v1, v4}, Lccc71/pmw/lib/aq;-><init>(Lccc71/pmw/lib/ao;ILjava/util/ArrayList;)V

    .line 1958
    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 1959
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1891
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 1892
    if-ltz v0, :cond_3

    iget-object v5, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1894
    iget-object v5, p0, Lccc71/pmw/lib/ao;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
