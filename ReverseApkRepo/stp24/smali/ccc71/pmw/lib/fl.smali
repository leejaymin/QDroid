.class final Lccc71/pmw/lib/fl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/fk;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:I

.field private final synthetic f:I

.field private final synthetic g:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/fk;IILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    iput p2, p0, Lccc71/pmw/lib/fl;->b:I

    iput p3, p0, Lccc71/pmw/lib/fl;->c:I

    iput-object p4, p0, Lccc71/pmw/lib/fl;->d:Ljava/util/ArrayList;

    iput p5, p0, Lccc71/pmw/lib/fl;->e:I

    iput p6, p0, Lccc71/pmw/lib/fl;->f:I

    iput-object p7, p0, Lccc71/pmw/lib/fl;->g:Ljava/util/ArrayList;

    .line 821
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/fl;)Lccc71/pmw/lib/fk;
    .locals 1
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 828
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lccc71/pmw/lib/pmw_easy_apps;->a(Ljava/util/ArrayList;)V

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->b(Ljava/util/ArrayList;)V

    .line 830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->c(Ljava/util/ArrayList;)V

    move v1, v2

    .line 831
    :goto_0
    iget v0, p0, Lccc71/pmw/lib/fl;->b:I

    iget v4, p0, Lccc71/pmw/lib/fl;->c:I

    add-int/2addr v0, v4

    if-lt v1, v0, :cond_0

    .line 837
    :goto_1
    iget v0, p0, Lccc71/pmw/lib/fl;->e:I

    iget v1, p0, Lccc71/pmw/lib/fl;->f:I

    add-int/2addr v0, v1

    if-lt v2, v0, :cond_1

    .line 844
    iget-object v0, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    invoke-static {v0}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->k(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/fm;

    invoke-direct {v1, p0, v3}, Lccc71/pmw/lib/fm;-><init>(Lccc71/pmw/lib/fl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/fl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 834
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v4, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    invoke-static {v4}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v4

    iget-object v5, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    invoke-static {v5}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_easy_apps;->p(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v4, v0, v5, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 831
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 839
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/fl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 840
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v1, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    invoke-static {v1}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v1

    iget-object v4, p0, Lccc71/pmw/lib/fl;->a:Lccc71/pmw/lib/fk;

    invoke-static {v4}, Lccc71/pmw/lib/fk;->a(Lccc71/pmw/lib/fk;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v4

    invoke-static {v4}, Lccc71/pmw/lib/pmw_easy_apps;->p(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v0, v4, v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
