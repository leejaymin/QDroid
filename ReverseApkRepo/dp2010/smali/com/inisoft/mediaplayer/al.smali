.class final Lcom/inisoft/mediaplayer/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/al;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v2, 0x66

    iget-object v0, p0, Lcom/inisoft/mediaplayer/al;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->u(Lcom/inisoft/mediaplayer/CommonListActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/al;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/al;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/al;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
