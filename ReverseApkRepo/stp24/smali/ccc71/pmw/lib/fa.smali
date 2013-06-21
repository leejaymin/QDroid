.class final Lccc71/pmw/lib/fa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ez;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ez;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    iput p2, p0, Lccc71/pmw/lib/fa;->b:I

    iput p3, p0, Lccc71/pmw/lib/fa;->c:I

    .line 576
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/fa;)Lccc71/pmw/lib/ez;
    .locals 1
    .parameter

    .prologue
    .line 576
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 581
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    move v6, v7

    .line 583
    :goto_0
    iget v0, p0, Lccc71/pmw/lib/fa;->b:I

    if-lt v6, v0, :cond_0

    .line 591
    :goto_1
    iget v0, p0, Lccc71/pmw/lib/fa;->c:I

    if-lt v7, v0, :cond_1

    .line 598
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->k(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/pmw/lib/fb;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/fb;-><init>(Lccc71/pmw/lib/fa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->g(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->i(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    sget-object v3, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    iget-object v5, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v5}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_easy_apps;->j(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 583
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->h(Lccc71/pmw/lib/pmw_easy_apps;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v0}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v0

    sget-object v2, Lccc71/pmw/a/d;->c:Ljava/lang/String;

    sget-object v3, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    iget-object v5, p0, Lccc71/pmw/lib/fa;->a:Lccc71/pmw/lib/ez;

    invoke-static {v5}, Lccc71/pmw/lib/ez;->a(Lccc71/pmw/lib/ez;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_easy_apps;->j(Lccc71/pmw/lib/pmw_easy_apps;)Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 591
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
