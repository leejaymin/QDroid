.class Lcom/madvil/ms/MusicToPhoneActivity$18;
.super Landroid/os/Handler;
.source "MusicToPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 669
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 675
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_0

    .line 676
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogStreaming:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$16(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Playing"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    .line 678
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    const/4 v8, 0x1

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->started:Z
    invoke-static {v7, v8}, Lcom/madvil/ms/MusicToPhoneActivity;->access$21(Lcom/madvil/ms/MusicToPhoneActivity;Z)V

    .line 698
    :goto_0
    return-void

    .line 679
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 680
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewMP:Landroid/media/MediaPlayer;
    invoke-static {v8}, Lcom/madvil/ms/MusicToPhoneActivity;->access$14(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 681
    .local v1, f:F
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogPB:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$18(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/high16 v8, 0x42c8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 697
    .end local v1           #f:F
    :catch_0
    move-exception v7

    goto :goto_0

    .line 683
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    .line 684
    .local v4, s:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 685
    const/4 v4, 0x0

    .line 688
    :cond_2
    int-to-double v7, v4

    const-wide v9, 0x3f80624dd2f1a9fcL

    mul-double/2addr v7, v9

    iget-object v9, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->showedSimpleSong:Lcom/madvil/core/SimpleSong;
    invoke-static {v9}, Lcom/madvil/ms/MusicToPhoneActivity;->access$12(Lcom/madvil/ms/MusicToPhoneActivity;)Lcom/madvil/core/SimpleSong;

    move-result-object v9

    invoke-virtual {v9}, Lcom/madvil/core/SimpleSong;->getDuration()I

    move-result v9

    int-to-double v9, v9

    div-double v2, v7, v9

    .line 689
    .local v2, kbps:D
    int-to-double v7, v4

    const-wide/high16 v9, 0x4130

    div-double v5, v7, v9

    .line 690
    .local v5, size:D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v0, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, df:Ljava/text/DecimalFormat;
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSizePB:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$22(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/ProgressBar;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 693
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogSize:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$23(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Size: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mb"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v7, p0, Lcom/madvil/ms/MusicToPhoneActivity$18;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogBitrate:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/madvil/ms/MusicToPhoneActivity;->access$24(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bitrate: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/madvil/core/Helper;->parseBitrate(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
