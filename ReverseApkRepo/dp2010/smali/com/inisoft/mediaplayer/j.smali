.class final Lcom/inisoft/mediaplayer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/e;->k(Lcom/inisoft/mediaplayer/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->c()V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->m(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/et;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->m(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/et;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;Lcom/inisoft/mediaplayer/et;)V

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->n(Lcom/inisoft/mediaplayer/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/e;->n(Lcom/inisoft/mediaplayer/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->n(Lcom/inisoft/mediaplayer/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/e;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->a:Lcom/inisoft/mediaplayer/bs;

    sget-object v3, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/e;->l(Lcom/inisoft/mediaplayer/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, La/d/w;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->c()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->c()V

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/j;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->j(Lcom/inisoft/mediaplayer/e;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bx;->c()V

    :cond_4
    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method
