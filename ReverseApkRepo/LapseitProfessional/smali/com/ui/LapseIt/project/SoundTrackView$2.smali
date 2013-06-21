.class Lcom/ui/LapseIt/project/SoundTrackView$2;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/SoundTrackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/SoundTrackView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 288
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$4(Lcom/ui/LapseIt/project/SoundTrackView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const/4 v0, 0x0

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 295
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$1(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 300
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->soundWave:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/ui/LapseIt/project/SoundTrackView;->access$5(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->soundWave:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/ui/LapseIt/project/SoundTrackView;->access$5(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    #setter for: Lcom/ui/LapseIt/project/SoundTrackView;->posRatio:D
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->access$6(Lcom/ui/LapseIt/project/SoundTrackView;D)V

    .line 305
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->posRatio:D
    invoke-static {v3}, Lcom/ui/LapseIt/project/SoundTrackView;->access$7(Lcom/ui/LapseIt/project/SoundTrackView;)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    sput v1, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    .line 306
    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/ui/LapseIt/project/SoundTrackView$2;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->posRatio:D
    invoke-static {v4}, Lcom/ui/LapseIt/project/SoundTrackView;->access$7(Lcom/ui/LapseIt/project/SoundTrackView;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
