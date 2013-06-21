.class Landroid/widget/TiVideoView4$2;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 309
    iput-object p1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mIsPrepared:Z
    invoke-static {v0, v2}, Landroid/widget/TiVideoView4;->access$202(Landroid/widget/TiVideoView4;Z)Z

    .line 313
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$300(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$300(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 319
    :cond_1
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$002(Landroid/widget/TiVideoView4;I)I

    .line 320
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$102(Landroid/widget/TiVideoView4;I)I

    .line 321
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 324
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSurfaceWidth:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$600(Landroid/widget/TiVideoView4;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSurfaceHeight:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$700(Landroid/widget/TiVideoView4;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 328
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 330
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0, v3}, Landroid/widget/TiVideoView4;->access$802(Landroid/widget/TiVideoView4;I)I

    .line 332
    :cond_2
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$900(Landroid/widget/TiVideoView4;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->start()V

    .line 334
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z
    invoke-static {v0, v3}, Landroid/widget/TiVideoView4;->access$902(Landroid/widget/TiVideoView4;Z)Z

    .line 335
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 358
    :cond_3
    :goto_0
    return-void

    .line 338
    :cond_4
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    .line 340
    :cond_5
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 349
    :cond_6
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$800(Landroid/widget/TiVideoView4;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 351
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I
    invoke-static {v0, v3}, Landroid/widget/TiVideoView4;->access$802(Landroid/widget/TiVideoView4;I)I

    .line 353
    :cond_7
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$900(Landroid/widget/TiVideoView4;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->start()V

    .line 355
    iget-object v0, p0, Landroid/widget/TiVideoView4$2;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z
    invoke-static {v0, v3}, Landroid/widget/TiVideoView4;->access$902(Landroid/widget/TiVideoView4;Z)Z

    goto :goto_0
.end method
