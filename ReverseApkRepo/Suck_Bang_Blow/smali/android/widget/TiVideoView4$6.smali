.class Landroid/widget/TiVideoView4$6;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TiVideoView4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TiVideoView4;


# direct methods
.method constructor <init>(Landroid/widget/TiVideoView4;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSurfaceWidth:I
    invoke-static {v0, p3}, Landroid/widget/TiVideoView4;->access$602(Landroid/widget/TiVideoView4;I)I

    .line 475
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSurfaceHeight:I
    invoke-static {v0, p4}, Landroid/widget/TiVideoView4;->access$702(Landroid/widget/TiVideoView4;I)I

    .line 476
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mIsPrepared:Z
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$200(Landroid/widget/TiVideoView4;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-ne v0, p4, :cond_2

    .line 477
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 479
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$802(Landroid/widget/TiVideoView4;I)I

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mIsPlaybackCompleted:Z
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1000(Landroid/widget/TiVideoView4;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->start()V

    .line 484
    :cond_1
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 488
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/widget/TiVideoView4;->access$1502(Landroid/widget/TiVideoView4;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 493
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #calls: Landroid/widget/TiVideoView4;->openVideo()V
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1600(Landroid/widget/TiVideoView4;)V

    .line 494
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$1502(Landroid/widget/TiVideoView4;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 500
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 501
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 503
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 504
    iget-object v0, p0, Landroid/widget/TiVideoView4$6;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$402(Landroid/widget/TiVideoView4;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 506
    :cond_1
    return-void
.end method
