.class final Lccc71/pmw/a/q;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1038
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1042
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1044
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    iget-object v3, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1046
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    .line 1047
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    sget v1, Lccc71/pmw/lib/g;->dP:I

    :goto_0
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1048
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1057
    :goto_1
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1059
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1060
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1061
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    :cond_0
    return-void

    .line 1047
    :cond_1
    sget v1, Lccc71/pmw/lib/g;->fb:I

    goto :goto_0

    .line 1052
    :cond_2
    iput-boolean v4, v0, Lccc71/pmw/a/a;->a:Z

    .line 1053
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    sget v1, Lccc71/pmw/lib/g;->dO:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1053
    :cond_3
    sget v1, Lccc71/pmw/lib/g;->fa:I

    goto :goto_2
.end method
