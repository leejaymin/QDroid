.class final Lccc71/pmw/lib/bn;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bl;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bl;ILjava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    iput p2, p0, Lccc71/pmw/lib/bn;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/bn;->c:Ljava/util/ArrayList;

    iput p4, p0, Lccc71/pmw/lib/bn;->d:I

    .line 1384
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/bn;)Lccc71/pmw/lib/bl;
    .locals 1
    .parameter

    .prologue
    .line 1384
    iget-object v0, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1389
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Ljava/util/ArrayList;)V

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Ljava/util/ArrayList;)V

    .line 1393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Ljava/util/ArrayList;)V

    .line 1394
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/bn;->b:I

    if-lt v1, v0, :cond_0

    .line 1401
    iget-object v0, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/bo;

    iget v2, p0, Lccc71/pmw/lib/bn;->d:I

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/bo;-><init>(Lccc71/pmw/lib/bn;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1421
    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/bn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 1397
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v2}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    iget-object v0, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v0}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v2}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lccc71/pmw/lib/bn;->a:Lccc71/pmw/lib/bl;

    invoke-static {v3}, Lccc71/pmw/lib/bl;->a(Lccc71/pmw/lib/bl;)Lccc71/pmw/lib/bk;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/bk;->a(Lccc71/pmw/lib/bk;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->d(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccc71/pmw/a/d;->d(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1394
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
