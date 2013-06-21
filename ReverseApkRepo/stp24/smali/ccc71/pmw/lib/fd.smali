.class final Lccc71/pmw/lib/fd;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/fc;

.field private final synthetic b:Lccc71/pmw/a/ag;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/fc;Lccc71/pmw/a/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fd;->a:Lccc71/pmw/lib/fc;

    iput-object p2, p0, Lccc71/pmw/lib/fd;->b:Lccc71/pmw/a/ag;

    .line 619
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 624
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 626
    iget-object v0, p0, Lccc71/pmw/lib/fd;->b:Lccc71/pmw/a/ag;

    iget-object v1, p0, Lccc71/pmw/lib/fd;->a:Lccc71/pmw/lib/fc;

    invoke-static {v1}, Lccc71/pmw/lib/fc;->a(Lccc71/pmw/lib/fc;)Lccc71/pmw/lib/pmw_easy_apps;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/lib/pmw_easy_apps;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ag;->a(Landroid/os/Handler;)V

    .line 627
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "rm -r /data/data/*/cache/*"

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    .line 628
    return-void
.end method
