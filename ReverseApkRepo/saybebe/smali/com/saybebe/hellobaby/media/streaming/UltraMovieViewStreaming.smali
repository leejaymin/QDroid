.class public Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;
.super Landroid/app/Activity;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;
    }
.end annotation


# static fields
.field static COMMAND_CHANGE_TITLE:I = 0x0

.field static COMMAND_MOVIE_END:I = 0x0

.field static COMMAND_SEEKING_END:I = 0x0

.field static COMMAND_SET_DURATION:I = 0x0

.field static COMMAND_SET_PROGRESS:I = 0x0

.field private static final EXTENTION:Ljava/lang/String; = ".wmv"

.field private static final TAG:Ljava/lang/String; = "UltraMovieView"

.field private static final VIDEO_DIRECTORY:Ljava/lang/String; = "saybebe"

.field private static buf:Ljava/lang/Object;

.field private static mAudioThread:Ljava/lang/Thread;

.field private static mAudioTrack:Landroid/media/AudioTrack;

.field private static mSeeking:Z

.field private static mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

.field private static mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;


# instance fields
.field commandHandler:Landroid/os/Handler;

.field private conn:Ljava/net/HttpURLConnection;

.field private downThread:Ljava/lang/Thread;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private isRunning:Z

.field protected mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

.field protected mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBottomPanel:Landroid/view/View;

.field private mControlPanelShowing:Z

.field private mCurrentPlayTimeTextView:Landroid/widget/TextView;

.field private mCurrentPos:D

.field private mDuration:D

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMaximized:Z

.field private mMovieCurrentTime:I

.field private mMovieDuration:I

.field private mMoviePlaying:Z

.field private mMovieProgressBar:Landroid/widget/SeekBar;

.field private mMovieTimeFormat:Ljava/text/SimpleDateFormat;

.field private mNextButton:Landroid/widget/ImageView;

.field private mPlayBtn:Landroid/widget/ImageButton;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPrevButton:Landroid/widget/ImageView;

.field private mStarted:Z

.field protected mTimerTask:Ljava/util/TimerTask;

.field private mTotalPlayTimeTextView:Landroid/widget/TextView;

.field private progressChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private videoSize:I

.field private videoUrl:Ljava/lang/String;

.field private volumeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private waitDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-string v0, "SDL"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 133
    const-string v0, "sbplayer-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    sput v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_CHANGE_TITLE:I

    .line 628
    const/4 v0, 0x2

    sput v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_DURATION:I

    .line 629
    const/4 v0, 0x3

    sput v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_PROGRESS:I

    .line 630
    const/4 v0, 0x4

    sput v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SEEKING_END:I

    .line 631
    const/4 v0, 0x5

    sput v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_MOVIE_END:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z

    .line 118
    iput-wide v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D

    .line 119
    iput-wide v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D

    .line 122
    iput-boolean v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mStarted:Z

    .line 430
    new-instance v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$1;

    invoke-direct {v0, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$1;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->volumeChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 444
    new-instance v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;

    invoke-direct {v0, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$2;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->progressChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 634
    new-instance v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;

    invoke-direct {v0, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$3;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->commandHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSeeking:Z

    return v0
.end method

.method static synthetic access$10(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D

    return-wide v0
.end method

.method static synthetic access$11(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPlayTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z

    return v0
.end method

.method static synthetic access$13(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z

    return-void
.end method

.method static synthetic access$14(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    return-void
.end method

.method static synthetic access$15(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->initConnection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$18(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$19(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z

    return v0
.end method

.method static synthetic access$2(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D

    return-void
.end method

.method static synthetic access$20()Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$3(Z)V
    .locals 0
    .parameter

    .prologue
    .line 115
    sput-boolean p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSeeking:Z

    return-void
.end method

.method static synthetic access$4(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->waitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D

    return-void
.end method

.method static synthetic access$6(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)D
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D

    return-wide v0
.end method

.method static synthetic access$7(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTotalPlayTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method public static audioInit(IZZI)Ljava/lang/Object;
    .locals 10
    .parameter "sampleRate"
    .parameter "is16Bit"
    .parameter "isStereo"
    .parameter "desiredFrames"

    .prologue
    const/high16 v9, 0x447a

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 770
    if-eqz p2, :cond_0

    move v3, v1

    .line 772
    .local v3, channelConfig:I
    :goto_0
    if-eqz p1, :cond_1

    move v4, v8

    .line 774
    .local v4, audioFormat:I
    :goto_1
    if-eqz p2, :cond_2

    move v2, v8

    :goto_2
    if-eqz p1, :cond_3

    move v0, v8

    :goto_3
    mul-int v7, v2, v0

    .line 776
    .local v7, frameSize:I
    const-string v2, "UltraMovieView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "SDL audio: wanted "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string v0, "stereo"

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    const-string v0, "16-bit"

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 778
    int-to-float v5, p0

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 779
    const-string v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v7

    .line 784
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 790
    new-instance v0, Landroid/media/AudioTrack;

    .line 791
    mul-int v5, p3, v7

    move v2, p0

    .line 790
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    .line 794
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->audioStartThread()V

    .line 796
    const-string v1, "UltraMovieView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "SDL audio: got "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-lt v0, v8, :cond_6

    const-string v0, "stereo"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 799
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 800
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v8, :cond_7

    const-string v0, "16-bit"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 801
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 802
    sget-object v2, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    const-string v2, "kHz, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frames buffer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-eqz p1, :cond_9

    .line 806
    if-eqz p2, :cond_8

    :goto_8
    mul-int v0, p3, v8

    new-array v0, v0, [S

    sput-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->buf:Ljava/lang/Object;

    .line 810
    :goto_9
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->buf:Ljava/lang/Object;

    return-object v0

    .end local v3           #channelConfig:I
    .end local v4           #audioFormat:I
    .end local v7           #frameSize:I
    :cond_0
    move v3, v8

    .line 771
    goto/16 :goto_0

    .restart local v3       #channelConfig:I
    :cond_1
    move v4, v1

    .line 773
    goto/16 :goto_1

    .restart local v4       #audioFormat:I
    :cond_2
    move v2, v6

    .line 774
    goto/16 :goto_2

    :cond_3
    move v0, v6

    goto/16 :goto_3

    .line 776
    .restart local v7       #frameSize:I
    :cond_4
    const-string v0, "mono"

    goto/16 :goto_4

    .line 777
    :cond_5
    const-string v0, "8-bit"

    goto/16 :goto_5

    .line 798
    :cond_6
    const-string v0, "mono"

    goto :goto_6

    .line 801
    :cond_7
    const-string v0, "8-bit"

    goto :goto_7

    :cond_8
    move v8, v6

    .line 806
    goto :goto_8

    .line 808
    :cond_9
    if-eqz p2, :cond_a

    :goto_a
    mul-int v0, p3, v8

    new-array v0, v0, [B

    sput-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->buf:Ljava/lang/Object;

    goto :goto_9

    :cond_a
    move v8, v6

    goto :goto_a
.end method

.method public static audioQuit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    const-string v1, "UltraMovieView"

    const-string v2, "audioQuit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-object v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const-string v1, "UltraMovieView"

    const-string v2, "audio thread is alive"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :try_start_0
    sget-object v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    sput-object v4, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    .line 874
    const-string v1, "UltraMovieView"

    const-string v2, "Finished waiting for audio thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    sget-object v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 878
    const-string v1, "UltraMovieView"

    const-string v2, "before Audio Track stopping"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    sget-object v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 880
    sput-object v4, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    .line 881
    const-string v1, "UltraMovieView"

    const-string v2, "Audio Track Stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    return-void

    .line 869
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 870
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "UltraMovieView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem stopping audio thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static audioStartThread()V
    .locals 2

    .prologue
    .line 814
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$8;

    invoke-direct {v1}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$8;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    .line 822
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 823
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 824
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 845
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 860
    :goto_1
    return-void

    .line 846
    :cond_0
    sget-object v2, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 847
    .local v1, result:I
    if-lez v1, :cond_1

    .line 848
    add-int/2addr v0, v1

    goto :goto_0

    .line 849
    :cond_1
    if-nez v1, :cond_2

    .line 851
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 852
    :catch_0
    move-exception v2

    goto :goto_0

    .line 856
    :cond_2
    const-string v2, "UltraMovieView"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 827
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 842
    :goto_1
    return-void

    .line 828
    :cond_0
    sget-object v2, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 829
    .local v1, result:I
    if-lez v1, :cond_1

    .line 830
    add-int/2addr v0, v1

    goto :goto_0

    .line 831
    :cond_1
    if-nez v1, :cond_2

    .line 833
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 834
    :catch_0
    move-exception v2

    goto :goto_0

    .line 838
    :cond_2
    const-string v2, "UltraMovieView"

    const-string v3, "SDL audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized closeConnection()V
    .locals 2

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "UltraMovieView"

    const-string v1, "disconnect conn."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createGLContext(II)Z
    .locals 1
    .parameter "majorVersion"
    .parameter "minorVersion"

    .prologue
    .line 730
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    invoke-virtual {v0, p0, p1}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->initEGL(II)Z

    move-result v0

    return v0
.end method

.method private downloadMovieFile()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    const-string v6, "UltraMovieView"

    const-string v7, "No External Storage. Play directly from the server."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    .line 421
    :goto_0
    return v5

    .line 334
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "saybebe"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v0, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->filename:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 339
    const-string v6, "UltraMovieView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to mkdir("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "). Play directly from the server."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 346
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 347
    .local v2, length:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    iget v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    .line 348
    const-string v5, "UltraMovieView"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " is already downloaded. use it!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    .line 351
    const/4 v5, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const-string v6, "UltraMovieView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incomplete download size = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete it!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 360
    .end local v2           #length:J
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const-string v6, "UltraMovieView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Download file to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Play directly from the server."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 373
    const-string v6, "UltraMovieView"

    const-string v7, "Download thread is still alive.. waiting to finish"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_1
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    .line 380
    const-string v6, "UltraMovieView"

    const-string v7, "Download thread finished... "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;

    invoke-direct {v7, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    .line 419
    iget-object v6, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, e:Ljava/io/IOException;
    const-string v6, "UltraMovieView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to create file("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "). Play directly from the server."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v6, "UltraMovieView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " exceptin = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    goto/16 :goto_0

    .line 376
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UltraMovieView"

    const-string v7, "Problem in waiting "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static flipBuffers()V
    .locals 1

    .prologue
    .line 734
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->flipEGL()V

    .line 735
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 762
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    return-object v0
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, ret:I
    invoke-direct {p0, p1}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->initConnection(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 310
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    const-string v2, "content-length"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    .line 314
    :cond_0
    return v0
.end method

.method private initConnection(Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, mUrl:Ljava/net/URL;
    const-string v1, "UltraMovieView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initConnection "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    .line 297
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 299
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 301
    :cond_0
    return-void
.end method

.method private makeMovieFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "date"
    .parameter "place"

    .prologue
    const/4 v5, 0x0

    .line 276
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, " ,\n:"

    invoke-direct {v1, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    .local v1, dateToken:Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \\(,\\)"

    invoke-direct {v3, p2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    .local v3, palceToken:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, bulider:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    const-string v4, ".wmv"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, name:Ljava/lang/String;
    const-string v4, "UltraMovieView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filename = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v2

    .line 280
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static movieEnd()V
    .locals 3

    .prologue
    .line 758
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    sget v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_MOVIE_END:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->sendCommand(ILjava/lang/Object;)V

    .line 759
    return-void
.end method

.method public static native nativeInit(Ljava/lang/String;)V
.end method

.method public static native nativePause()V
.end method

.method public static native nativePlay()V
.end method

.method public static native nativeQuit()V
.end method

.method public static native nativeRunAudioThread()V
.end method

.method public static native nativeSeek(I)V
.end method

.method public static native nativeSeekToPos(I)V
.end method

.method public static native nativeTogglePlay()V
.end method

.method public static native onNativeAccel(FFF)V
.end method

.method public static native onNativeKeyDown(I)V
.end method

.method public static native onNativeKeyUp(I)V
.end method

.method public static native onNativeResize(III)V
.end method

.method public static native onNativeToggleSize(III)V
.end method

.method public static native onNativeTouch(IIIFFF)V
.end method

.method public static seekingEnd()V
    .locals 3

    .prologue
    .line 754
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    sget v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SEEKING_END:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->sendCommand(ILjava/lang/Object;)V

    .line 755
    return-void
.end method

.method public static setActivityTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 740
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    sget v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_CHANGE_TITLE:I

    invoke-virtual {v0, v1, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->sendCommand(ILjava/lang/Object;)V

    .line 741
    return-void
.end method

.method public static setMovieDuration(D)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 744
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    sget v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_DURATION:I

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->sendCommand(ILjava/lang/Object;)V

    .line 745
    return-void
.end method

.method public static setMovieProgress(D)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 748
    sget-boolean v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSeeking:Z

    if-nez v0, :cond_0

    .line 749
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    sget v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->COMMAND_SET_PROGRESS:I

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->sendCommand(ILjava/lang/Object;)V

    .line 751
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 582
    iget-object v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_3

    .line 583
    iget-wide v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPos:D

    iget-wide v4, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mDuration:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 584
    const-string v2, "UltraMovieView"

    const-string v3, "seek to 0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeSeekToPos(I)V

    .line 588
    :cond_0
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeTogglePlay()V

    .line 589
    iget-boolean v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMoviePlaying:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setPlayerState(Z)V

    .line 597
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 589
    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPrevButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 591
    sput-boolean v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSeeking:Z

    .line 592
    const/4 v0, -0x5

    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeSeek(I)V

    goto :goto_1

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mNextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 594
    sput-boolean v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSeeking:Z

    .line 595
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativeSeek(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 165
    const-string v0, "UltraMovieView"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    sput-object p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSingleton:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMaximized:Z

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->requestWindowFeature(I)Z

    .line 172
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 173
    const/16 v2, 0x400

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 175
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setContentView(I)V

    .line 176
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    sput-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    .line 180
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mBottomPanel:Landroid/view/View;

    .line 182
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    .line 183
    .local v10, holder:Landroid/view/SurfaceHolder;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 185
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$SimpleGestureListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mGestureDetector:Landroid/view/GestureDetector;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mControlPanelShowing:Z

    .line 190
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;

    .line 200
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->progressChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTotalPlayTimeTextView:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mCurrentPlayTimeTextView:Landroid/widget/TextView;

    .line 205
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 206
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 207
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 205
    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

    .line 208
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 209
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 210
    const/4 v5, 0x2

    const/high16 v6, 0x3f80

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 208
    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

    .line 212
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 213
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 214
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 216
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 217
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 218
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 220
    new-instance v13, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$4;

    invoke-direct {v13, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$4;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    .line 232
    .local v13, touchListener:Landroid/view/View$OnTouchListener;
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPrevButton:Landroid/widget/ImageView;

    .line 237
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPrevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mNextButton:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;

    invoke-direct {v0, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$5;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mTimerTask:Ljava/util/TimerTask;

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setPlayerState(Z)V

    .line 256
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:MM:SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMovieTimeFormat:Ljava/text/SimpleDateFormat;

    .line 266
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 267
    .local v11, i:Landroid/content/Intent;
    const-string v0, "url"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoUrl:Ljava/lang/String;

    .line 268
    const-string v0, "date"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, date:Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, title:Ljava/lang/String;
    invoke-direct {p0, v9, v12}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->makeMovieFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->filename:Ljava/lang/String;

    .line 272
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 517
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 518
    const-string v0, "UltraMovieView"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 494
    const-string v0, "UltraMovieView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 498
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativePause()V

    .line 499
    invoke-virtual {p0, v2}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->setPlayerState(Z)V

    .line 500
    iput-boolean v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z

    .line 502
    const-string v0, "UltraMovieView"

    const-string v1, "Destroy activity for now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->finish()V

    .line 504
    return-void
.end method

.method public onResize(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 600
    const-string v3, "UltraMovieView"

    const-string v4, "onResize"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 603
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 605
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 606
    .local v0, height:I
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 608
    .local v2, width:I
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->onNativeResize(III)V

    .line 619
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 523
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 524
    const-string v0, "UltraMovieView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-boolean v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z

    .line 528
    iget v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    if-nez v0, :cond_0

    .line 529
    const-string v1, ""

    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    new-instance v5, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$7;

    invoke-direct {v5, p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$7;-><init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    move-object v0, p0

    move v4, v3

    .line 529
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->waitDialog:Landroid/app/ProgressDialog;

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->getFileSize(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    .line 538
    const-string v0, "UltraMovieView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_0
    :goto_0
    iget v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoSize:I

    if-lez v0, :cond_3

    .line 546
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downloadMovieFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->setMovieUrl(Ljava/lang/String;)V

    .line 552
    :goto_1
    iget-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mStarted:Z

    if-nez v0, :cond_2

    .line 553
    invoke-static {}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->nativePlay()V

    .line 554
    iput-boolean v3, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mStarted:Z

    .line 563
    :goto_2
    return-void

    .line 539
    :catch_0
    move-exception v6

    .line 540
    .local v6, e:Ljava/io/IOException;
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 541
    const-string v0, "UltraMovieView"

    const-string v1, "failed to get videoSize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    .end local v6           #e:Ljava/io/IOException;
    :cond_1
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->setMovieUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 556
    :cond_2
    sget-object v0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mSurface:Lcom/saybebe/hellobaby/media/streaming/SDLSurface;

    invoke-virtual {v0}, Lcom/saybebe/hellobaby/media/streaming/SDLSurface;->invalidate()V

    goto :goto_2

    .line 560
    :cond_3
    const-string v0, "\ub124\ud2b8\uc6cc\ud06c \uc624\ub958\uc785\ub2c8\ub2e4. \uc7a0\uc2dc\ud6c4 \uc7ac\uc2dc\ub3c4\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    invoke-virtual {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->finish()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 508
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 510
    const-string v0, "UltraMovieView"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z

    .line 513
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 622
    const-string v0, "UltraMovieView"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method sendCommand(ILjava/lang/Object;)V
    .locals 2
    .parameter "command"
    .parameter "data"

    .prologue
    .line 689
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 690
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 691
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->commandHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 693
    return-void
.end method

.method public setPlayerState(Z)V
    .locals 2
    .parameter "playing"

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mMoviePlaying:Z

    .line 569
    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected slideInBottomPanel()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    return-void
.end method

.method protected slideOutBottomPanel()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->mAnimationSlideOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    return-void
.end method
