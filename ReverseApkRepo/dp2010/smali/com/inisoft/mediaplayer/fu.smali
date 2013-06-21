.class final Lcom/inisoft/mediaplayer/fu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/ft;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/ft;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ft;->a(Lcom/inisoft/mediaplayer/ft;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/ft;->a(Lcom/inisoft/mediaplayer/ft;Landroid/os/Messenger;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ft;->b(Lcom/inisoft/mediaplayer/ft;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ft;->c(Lcom/inisoft/mediaplayer/ft;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/ft;->a(Lcom/inisoft/mediaplayer/ft;Landroid/os/Messenger;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fu;->a:Lcom/inisoft/mediaplayer/ft;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ft;->c(Lcom/inisoft/mediaplayer/ft;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
