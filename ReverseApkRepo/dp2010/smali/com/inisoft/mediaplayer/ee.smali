.class final Lcom/inisoft/mediaplayer/ee;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPlayer;

.field private b:Lcom/inisoft/mediaplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaPlayer;Lcom/inisoft/mediaplayer/MediaPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mNativeContext:I
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$1(Lcom/inisoft/mediaplayer/MediaPlayer;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MediaPlayer"

    const-string v1, "mediaplayer went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v0, "MediaPlayer"

    const-string v1, "MEDIA_PREPARED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnPreparedListener:Lcom/inisoft/mediaplayer/el;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$2(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnPreparedListener:Lcom/inisoft/mediaplayer/el;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$2(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/el;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v2, v3, v0}, Lcom/inisoft/mediaplayer/el;->a(Lcom/inisoft/mediaplayer/es;I[B)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$3(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$3(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #calls: Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$4(Lcom/inisoft/mediaplayer/MediaPlayer;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$5(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$5(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eh;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/eh;->a(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$6(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/em;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$6(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/em;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$7(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/en;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$7(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/en;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/en;->a()V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "MediaPlayer"

    const-string v1, "MEDIA_SET_VIDEO_SIZE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$8(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$8(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eq;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/eq;->a(Lcom/inisoft/mediaplayer/es;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnErrorListener:Lcom/inisoft/mediaplayer/ej;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$9(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ej;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnErrorListener:Lcom/inisoft/mediaplayer/ej;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$9(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ej;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;
    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$3(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$3(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #calls: Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V
    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$4(Lcom/inisoft/mediaplayer/MediaPlayer;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnInfoListener:Lcom/inisoft/mediaplayer/ek;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$10(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnInfoListener:Lcom/inisoft/mediaplayer/ek;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$10(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ek;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ee;->b:Lcom/inisoft/mediaplayer/MediaPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ek;->a(I)Z

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$7(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/en;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$7(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/en;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/en;->a([B)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoAspectRatioChangedListener:Lcom/inisoft/mediaplayer/ep;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$12(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ep;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ee;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #getter for: Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoAspectRatioChangedListener:Lcom/inisoft/mediaplayer/ep;
    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$12(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ep;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/inisoft/mediaplayer/ep;->a(II)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_7
        0x1b020 -> :sswitch_0
        0x1b147 -> :sswitch_8
        0x1b207 -> :sswitch_9
    .end sparse-switch
.end method
