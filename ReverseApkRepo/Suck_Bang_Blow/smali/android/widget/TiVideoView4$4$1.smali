.class Landroid/widget/TiVideoView4$4$1;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TiVideoView4$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TiVideoView4$4;


# direct methods
.method constructor <init>(Landroid/widget/TiVideoView4$4;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Landroid/widget/TiVideoView4$4$1;->this$1:Landroid/widget/TiVideoView4$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 415
    iget-object v0, p0, Landroid/widget/TiVideoView4$4$1;->this$1:Landroid/widget/TiVideoView4$4;

    iget-object v0, v0, Landroid/widget/TiVideoView4$4;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1100(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/widget/TiVideoView4$4$1;->this$1:Landroid/widget/TiVideoView4$4;

    iget-object v0, v0, Landroid/widget/TiVideoView4$4;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$1100(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$4$1;->this$1:Landroid/widget/TiVideoView4$4;

    iget-object v1, v1, Landroid/widget/TiVideoView4$4;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 418
    :cond_0
    return-void
.end method
