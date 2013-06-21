.class final Lccc71/pmw/a/v;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1519
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1524
    aget-object v1, v0, v6

    check-cast v1, Landroid/os/Handler;

    .line 1525
    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/String;

    .line 1527
    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Lccc71/pmw/a/a;

    .line 1529
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1532
    iput-boolean v5, v0, Lccc71/pmw/a/a;->a:Z

    .line 1547
    :cond_0
    :goto_0
    new-instance v3, Lccc71/pmw/a/w;

    invoke-direct {v3, p0, v2, v0}, Lccc71/pmw/a/w;-><init>(Lccc71/pmw/a/v;Ljava/lang/String;Lccc71/pmw/a/a;)V

    .line 1642
    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 1643
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1647
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1648
    iput v6, v2, Landroid/os/Message;->what:I

    .line 1649
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1650
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1651
    return-void

    .line 1536
    :cond_1
    iput-boolean v6, v0, Lccc71/pmw/a/a;->a:Z

    .line 1537
    iget-object v3, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1539
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to backup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 1543
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v5}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method
