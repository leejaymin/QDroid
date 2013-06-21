.class final Lccc71/pmw/lib/aq;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ao;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ao;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    iput p2, p0, Lccc71/pmw/lib/aq;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/aq;->c:Ljava/util/ArrayList;

    .line 1917
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/aq;)Lccc71/pmw/lib/ao;
    .locals 1
    .parameter

    .prologue
    .line 1917
    iget-object v0, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1922
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Ljava/util/ArrayList;)V

    .line 1925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Ljava/util/ArrayList;)V

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Ljava/util/ArrayList;)V

    .line 1927
    iget-object v0, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    move v1, v2

    .line 1928
    :goto_0
    iget v0, p0, Lccc71/pmw/lib/aq;->b:I

    if-lt v1, v0, :cond_0

    .line 1935
    iget-object v0, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/ar;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ar;-><init>(Lccc71/pmw/lib/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1956
    return-void

    .line 1930
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    iget-object v0, p0, Lccc71/pmw/lib/aq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v3, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 1931
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v3}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    iget-object v3, v3, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    iget-object v0, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v0}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v3, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v3}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    iget-object v3, v3, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lccc71/pmw/lib/aq;->a:Lccc71/pmw/lib/ao;

    invoke-static {v4}, Lccc71/pmw/lib/ao;->a(Lccc71/pmw/lib/ao;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_applist;->n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v0, v3, v4, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 1928
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
