.class final Lccc71/pmw/a/e;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    .line 290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lccc71/pmw/a/a;

    .line 292
    iget-boolean v0, v6, Lccc71/pmw/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, v6, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v1, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    if-ne v0, v1, :cond_0

    .line 296
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v6, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lccc71/pmw/a/d;->c:Ljava/lang/String;

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

    sget-object v3, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    const/4 v4, 0x1

    invoke-static {}, Lccc71/pmw/a/d;->c()Landroid/os/Handler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/y;ZLandroid/os/Handler;)V

    .line 300
    :cond_0
    sget-object v0, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 303
    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    sget-object v1, Lccc71/pmw/a/d;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    :cond_1
    return-void
.end method
