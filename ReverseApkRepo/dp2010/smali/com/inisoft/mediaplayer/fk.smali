.class final Lcom/inisoft/mediaplayer/fk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/gw;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->i(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/VideoView;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->c(Z)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 3

    const/4 v2, 0x3

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->l(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ai()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fk;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
