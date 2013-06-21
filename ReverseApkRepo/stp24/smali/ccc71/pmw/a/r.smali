.class final Lccc71/pmw/a/r;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1066
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

    .line 1070
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1072
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    iget-object v3, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1074
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    .line 1075
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    sget v1, Lccc71/pmw/lib/g;->db:I

    :goto_0
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1076
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1078
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1080
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1081
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1082
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1266
    :cond_0
    :goto_1
    return-void

    .line 1075
    :cond_1
    sget v1, Lccc71/pmw/lib/g;->fd:I

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1091
    new-instance v1, Lccc71/pmw/a/s;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/a/s;-><init>(Lccc71/pmw/a/r;Lccc71/pmw/a/a;)V

    new-array v0, v4, [Ljava/lang/Void;

    .line 1250
    invoke-virtual {v1, v0}, Lccc71/pmw/a/s;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    goto :goto_1

    .line 1254
    :cond_3
    iput-boolean v4, v0, Lccc71/pmw/a/a;->a:Z

    .line 1255
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    if-nez v1, :cond_4

    sget v1, Lccc71/pmw/lib/g;->da:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1256
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1258
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1260
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1261
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1262
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1255
    :cond_4
    sget v1, Lccc71/pmw/lib/g;->fc:I

    goto :goto_2
.end method
