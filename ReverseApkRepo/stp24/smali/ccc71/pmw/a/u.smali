.class final Lccc71/pmw/a/u;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1386
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1390
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1392
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1395
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    .line 1402
    :goto_0
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1404
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1405
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1406
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1421
    :goto_1
    return-void

    .line 1399
    :cond_0
    iput-boolean v3, v0, Lccc71/pmw/a/a;->a:Z

    goto :goto_0

    .line 1410
    :cond_1
    iget-boolean v0, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 1412
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ds:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1413
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1417
    :cond_2
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->dr:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
