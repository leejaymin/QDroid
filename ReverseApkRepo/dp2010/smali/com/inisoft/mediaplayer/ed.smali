.class final Lcom/inisoft/mediaplayer/ed;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/inisoft/mediaplayer/ax;->a([BI)I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->customReadCompete([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->customReadCompete([BI)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    packed-switch v2, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/ax;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->customSeekCompete(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-virtual {v0, v5, v6}, Lcom/inisoft/mediaplayer/MediaPlayer;->customSeekCompete(J)V

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/inisoft/mediaplayer/ax;->a(J)J

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/ax;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/inisoft/mediaplayer/ax;->a(J)J

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ed;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;
    invoke-static {v3}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/ax;->a()J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/inisoft/mediaplayer/ax;->a(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1d589
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
