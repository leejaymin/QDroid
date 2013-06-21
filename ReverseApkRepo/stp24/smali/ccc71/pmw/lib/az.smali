.class final Lccc71/pmw/lib/az;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ay;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ay;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    iput p2, p0, Lccc71/pmw/lib/az;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/az;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lccc71/pmw/lib/az;->d:Ljava/util/ArrayList;

    .line 2156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/az;)Lccc71/pmw/lib/ay;
    .locals 1
    .parameter

    .prologue
    .line 2156
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2161
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Ljava/util/ArrayList;)V

    .line 2164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Ljava/util/ArrayList;)V

    .line 2165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Ljava/util/ArrayList;)V

    .line 2166
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Lccc71/pmw/a/b;)V

    .line 2167
    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Z)V

    move v1, v2

    .line 2168
    :goto_0
    iget v0, p0, Lccc71/pmw/lib/az;->b:I

    if-lt v1, v0, :cond_0

    .line 2177
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->e(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/ba;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/ba;-><init>(Lccc71/pmw/lib/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2198
    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/az;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 2171
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    iget-object v0, p0, Lccc71/pmw/lib/az;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v5, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2173
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v5}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    iget-object v5, v5, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2174
    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v5

    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v6, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lccc71/pmw/lib/az;->a:Lccc71/pmw/lib/ay;

    invoke-static {v0}, Lccc71/pmw/lib/ay;->a(Lccc71/pmw/lib/ay;)Lccc71/pmw/lib/av;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/av;->a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->n(Lccc71/pmw/lib/pmw_applist;)Landroid/os/Handler;

    move-result-object v7

    if-gtz v3, :cond_2

    move v0, v4

    :goto_2
    invoke-static {v5, v6, v7, v0}, Lccc71/pmw/a/d;->b(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 2168
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    move v3, v4

    .line 2170
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2174
    goto :goto_2
.end method
