.class final Lcom/inisoft/mediaplayer/ga;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/fx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ga;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ga;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fx;->e(Lcom/inisoft/mediaplayer/fx;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ga;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/fx;->e(Lcom/inisoft/mediaplayer/fx;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
