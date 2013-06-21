.class final Lcom/inisoft/mediaplayer/gj;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gj;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gj;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->l(Lcom/inisoft/mediaplayer/gb;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gj;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->l(Lcom/inisoft/mediaplayer/gb;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
