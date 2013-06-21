.class final Lccc71/pmw/a/h;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1831
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 1835
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1837
    invoke-static {}, Lccc71/pmw/a/d;->h()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1838
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/a/d;->a(Landroid/content/pm/PackageManager;)V

    .line 1840
    :cond_0
    new-instance v1, Lccc71/pmw/a/i;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/a/i;-><init>(Lccc71/pmw/a/h;Lccc71/pmw/a/a;)V

    .line 1974
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 1975
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1976
    return-void
.end method
