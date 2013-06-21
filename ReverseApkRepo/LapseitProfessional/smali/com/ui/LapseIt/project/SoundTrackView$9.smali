.class Lcom/ui/LapseIt/project/SoundTrackView$9;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/SoundTrackView;->playHandler()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 618
    const/4 v5, 0x1

    const/high16 v6, 0x41a0

    iget-object v7, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {v7}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 620
    .local v2, margin:F
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$4(Lcom/ui/LapseIt/project/SoundTrackView;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_2

    .line 638
    :cond_1
    return-void

    .line 622
    :cond_2
    :try_start_0
    sget v5, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    iget-object v6, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F
    invoke-static {v6}, Lcom/ui/LapseIt/project/SoundTrackView;->access$20(Lcom/ui/LapseIt/project/SoundTrackView;)F

    move-result v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 624
    .local v3, maxPosition:I
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v6}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 626
    .local v4, posPerc:F
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    mul-float v1, v5, v4

    .line 628
    .local v1, linePos:F
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->lineParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$11(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    float-to-int v6, v1

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 629
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    iget-object v6, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->updateLineHandler:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/ui/LapseIt/project/SoundTrackView;->access$21(Lcom/ui/LapseIt/project/SoundTrackView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ui/LapseIt/project/SoundTrackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    if-lt v5, v3, :cond_0

    .line 632
    iget-object v5, p0, Lcom/ui/LapseIt/project/SoundTrackView$9;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Lcom/ui/LapseIt/project/SoundTrackView;->access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;

    move-result-object v5

    sget v6, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v1           #linePos:F
    .end local v3           #maxPosition:I
    .end local v4           #posPerc:F
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
