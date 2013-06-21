.class final Lccc71/pmw/lib/cg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/cf;

.field private final synthetic b:Lccc71/pmw/a/y;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/cf;Lccc71/pmw/a/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    iput-object p2, p0, Lccc71/pmw/lib/cg;->b:Lccc71/pmw/a/y;

    .line 1537
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1542
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1544
    iget-object v0, p0, Lccc71/pmw/lib/cg;->b:Lccc71/pmw/a/y;

    sget-object v1, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne v0, v1, :cond_2

    .line 1546
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1547
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v1}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1562
    :cond_1
    :goto_0
    return-void

    .line 1550
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/cg;->b:Lccc71/pmw/a/y;

    sget-object v1, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-ne v0, v1, :cond_3

    .line 1552
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->k:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1553
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1554
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v1}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->c(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 1556
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/cg;->b:Lccc71/pmw/a/y;

    sget-object v1, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    if-ne v0, v1, :cond_1

    .line 1558
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1559
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1560
    iget-object v0, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v1}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/cg;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->m(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    goto :goto_0
.end method
