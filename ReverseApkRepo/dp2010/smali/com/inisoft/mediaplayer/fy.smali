.class final Lcom/inisoft/mediaplayer/fy;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/fx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fx;->a(Lcom/inisoft/mediaplayer/fx;)I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/fx;->b(Lcom/inisoft/mediaplayer/fx;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/fx;->c(Lcom/inisoft/mediaplayer/fx;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fy;->a:Lcom/inisoft/mediaplayer/fx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/fx;->d(Lcom/inisoft/mediaplayer/fx;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/inisoft/mediaplayer/fy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/inisoft/mediaplayer/fy;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
