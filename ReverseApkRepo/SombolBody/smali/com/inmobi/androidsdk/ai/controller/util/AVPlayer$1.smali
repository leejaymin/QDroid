.class Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;
.super Landroid/os/Handler;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 474
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    .line 486
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V

    .line 489
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V

    .line 490
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 483
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 498
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 500
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v2, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;II)V

    .line 501
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
