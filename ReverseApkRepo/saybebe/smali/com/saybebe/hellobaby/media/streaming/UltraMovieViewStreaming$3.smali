.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;
.super Landroid/os/Handler;
.source "UltraMovieViewStreaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 634
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const-wide v9, 0x40ac200000000000L

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 637
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$4(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 639
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_CHANGE_TITLE:I

    if-ne v2, v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_DURATION:I

    if-ne v2, v3, :cond_2

    .line 643
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-virtual {v2, v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setPlayerState(Z)V

    .line 645
    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v3, v4, v5}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$5(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V

    .line 647
    const-string v2, "UltraMovieView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COMMAND_SET_DURATION "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v2, "%02d:%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    double-to-int v4, v4

    .line 650
    div-int/lit16 v4, v4, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    .line 649
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, durationStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTotalPlayTimeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$7(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$8(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v3}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 653
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mBottomPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$9(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v2, v2, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 655
    .end local v0           #durationStr:Ljava/lang/String;
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_PROGRESS:I

    if-ne v2, v3, :cond_3

    .line 657
    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v3, v4, v5}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$2(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V

    .line 659
    const-string v2, "UltraMovieView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "COMMAND_SET_PROGRESS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v2, "%02d:%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    .line 662
    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    div-double/2addr v4, v9

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    rem-double/2addr v4, v9

    const-wide/high16 v6, 0x404e

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 663
    iget-object v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v4

    double-to-int v4, v4

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    .line 661
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, progressStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPlayTimeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$11(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$8(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v3}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 666
    .end local v1           #progressStr:Ljava/lang/String;
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SEEKING_END:I

    if-ne v2, v3, :cond_4

    .line 668
    const-string v2, "UltraMovieView"

    const-string v3, "COMMAND_SEEKING_END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$8(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 671
    invoke-static {v6}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$3(Z)V

    goto/16 :goto_0

    .line 672
    :cond_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    sget v3, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_MOVIE_END:I

    if-ne v2, v3, :cond_0

    .line 674
    const-string v2, "UltraMovieView"

    const-string v3, "COMMAND_MOVIE_END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D
    invoke-static {v3}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D

    move-result-wide v3

    #setter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D
    invoke-static {v2, v3, v4}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$2(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V

    .line 678
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    invoke-virtual {v2, v6}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setPlayerState(Z)V

    goto/16 :goto_0
.end method
