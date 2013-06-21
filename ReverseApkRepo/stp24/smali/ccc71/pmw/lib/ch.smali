.class final Lccc71/pmw/lib/ch;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/cf;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Lccc71/pmw/a/y;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/cf;ILjava/util/ArrayList;Lccc71/pmw/a/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    iput p2, p0, Lccc71/pmw/lib/ch;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/ch;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/ch;->d:Lccc71/pmw/a/y;

    .line 1588
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/ch;)Lccc71/pmw/lib/cf;
    .locals 1
    .parameter

    .prologue
    .line 1588
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1593
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Ljava/util/ArrayList;)V

    .line 1596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Ljava/util/ArrayList;)V

    .line 1597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Ljava/util/ArrayList;)V

    .line 1598
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/ch;->b:I

    if-lt v1, v0, :cond_0

    .line 1622
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1624
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/ci;

    iget-object v2, p0, Lccc71/pmw/lib/ch;->d:Lccc71/pmw/a/y;

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/ci;-><init>(Lccc71/pmw/lib/ch;Lccc71/pmw/a/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1658
    :goto_1
    return-void

    .line 1600
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v0, p0, Lccc71/pmw/lib/ch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 1602
    iget-object v0, p0, Lccc71/pmw/lib/ch;->d:Lccc71/pmw/a/y;

    sget-object v2, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1604
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1605
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v3}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1606
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 1608
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ch;->d:Lccc71/pmw/a/y;

    sget-object v2, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1610
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/b;->k:Lccc71/pmw/a/b;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1611
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v3}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccc71/pmw/a/d;->c(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1612
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1614
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/ch;->d:Lccc71/pmw/a/y;

    sget-object v2, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1616
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    invoke-static {v0, v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 1617
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v3}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 1618
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v2}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1649
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/ch;->a:Lccc71/pmw/lib/cf;

    invoke-static {v0}, Lccc71/pmw/lib/cf;->a(Lccc71/pmw/lib/cf;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/cj;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/cj;-><init>(Lccc71/pmw/lib/ch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
