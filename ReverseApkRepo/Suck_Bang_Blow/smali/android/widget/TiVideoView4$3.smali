.class Landroid/widget/TiVideoView4$3;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 362
    iput-object p1, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 364
    iget-object v0, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    const/4 v1, 0x1

    #setter for: Landroid/widget/TiVideoView4;->mIsPlaybackCompleted:Z
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$1002(Landroid/widget/TiVideoView4;Z)Z

    .line 365
    iget-object v0, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1100(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1100(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$3;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 371
    :cond_1
    return-void
.end method
