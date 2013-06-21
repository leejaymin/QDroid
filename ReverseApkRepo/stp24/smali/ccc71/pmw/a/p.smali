.class final Lccc71/pmw/a/p;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 459
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lccc71/pmw/a/a;

    .line 461
    iget-boolean v0, v6, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, v6, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    if-ne v0, v1, :cond_2

    .line 465
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lccc71/pmw/a/d;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    const/4 v4, 0x1

    invoke-static {}, Lccc71/pmw/a/d;->e()Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 482
    :cond_0
    :goto_0
    sget-object v0, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 485
    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    sget-object v1, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    :cond_1
    return-void

    .line 467
    :cond_2
    iget-object v0, v6, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v1, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ej:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 475
    :cond_3
    sget-object v0, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->ei:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
