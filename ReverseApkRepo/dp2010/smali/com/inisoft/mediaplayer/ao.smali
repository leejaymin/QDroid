.class final Lcom/inisoft/mediaplayer/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x65

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/a;->a()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->d(Lcom/inisoft/mediaplayer/CommonListActivity;)Lcom/inisoft/mediaplayer/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/a;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ao;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->n(Lcom/inisoft/mediaplayer/CommonListActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
