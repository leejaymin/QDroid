.class Landroid/widget/TiVideoView4$1;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 299
    iput-object p1, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$002(Landroid/widget/TiVideoView4;I)I

    .line 302
    iget-object v0, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v0, v1}, Landroid/widget/TiVideoView4;->access$102(Landroid/widget/TiVideoView4;I)I

    .line 303
    iget-object v0, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoWidth:I
    invoke-static {v1}, Landroid/widget/TiVideoView4;->access$000(Landroid/widget/TiVideoView4;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TiVideoView4$1;->this$0:Landroid/widget/TiVideoView4;

    #getter for: Landroid/widget/TiVideoView4;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/TiVideoView4;->access$100(Landroid/widget/TiVideoView4;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 306
    :cond_0
    return-void
.end method
