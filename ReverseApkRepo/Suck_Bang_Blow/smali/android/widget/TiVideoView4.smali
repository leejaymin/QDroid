.class public Landroid/widget/TiVideoView4;
.super Landroid/view/SurfaceView;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mIsPlaybackCompleted:Z

.field private mIsPrepared:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iput-object v1, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 298
    new-instance v0, Landroid/widget/TiVideoView4$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$1;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 309
    new-instance v0, Landroid/widget/TiVideoView4$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$2;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 361
    new-instance v0, Landroid/widget/TiVideoView4$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$3;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 374
    new-instance v0, Landroid/widget/TiVideoView4$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$4;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 427
    new-instance v0, Landroid/widget/TiVideoView4$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$5;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 469
    new-instance v0, Landroid/widget/TiVideoView4$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$6;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 78
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->initVideoView()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TiVideoView4;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->initVideoView()V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iput-object v1, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 298
    new-instance v0, Landroid/widget/TiVideoView4$1;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$1;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 309
    new-instance v0, Landroid/widget/TiVideoView4$2;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$2;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 361
    new-instance v0, Landroid/widget/TiVideoView4$3;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$3;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 374
    new-instance v0, Landroid/widget/TiVideoView4$4;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$4;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 427
    new-instance v0, Landroid/widget/TiVideoView4$5;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$5;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 469
    new-instance v0, Landroid/widget/TiVideoView4$6;

    invoke-direct {v0, p0}, Landroid/widget/TiVideoView4$6;-><init>(Landroid/widget/TiVideoView4;)V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 89
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->initVideoView()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/widget/TiVideoView4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TiVideoView4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/TiVideoView4;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPlaybackCompleted:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/TiVideoView4;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/TiVideoView4;->mIsPlaybackCompleted:Z

    return p1
.end method

.method static synthetic access$102(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/TiVideoView4;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1502(Landroid/widget/TiVideoView4;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/TiVideoView4;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TiVideoView4;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TiVideoView4;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TiVideoView4;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/TiVideoView4;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Landroid/widget/TiVideoView4;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TiVideoView4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TiVideoView4;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/TiVideoView4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TiVideoView4;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/TiVideoView4;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/TiVideoView4;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/TiVideoView4;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$902(Landroid/widget/TiVideoView4;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 293
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 294
    iget-object v1, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v2, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 296
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 291
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    .line 145
    iput v0, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    .line 146
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 147
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 148
    invoke-virtual {p0, v2}, Landroid/widget/TiVideoView4;->setFocusable(Z)V

    .line 149
    invoke-virtual {p0, v2}, Landroid/widget/TiVideoView4;->setFocusableInTouchMode(Z)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->requestFocus()Z

    .line 151
    return-void
.end method

.method private openVideo()V
    .locals 11

    .prologue
    const-string v10, "Unable to open content: "

    .line 226
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v8, i:Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 238
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 243
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 244
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    .line 246
    iget-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    const-string v1, "reset duration to -1 in openVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    .line 248
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 249
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 250
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TiVideoView4;->mCurrentBufferPercentage:I

    .line 252
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    const/4 v6, 0x0

    .line 255
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 257
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v6, :cond_3

    .line 260
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 266
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #path:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/TiVideoView4;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 267
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 268
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 269
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 270
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->attachMediaController()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 271
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 272
    .local v7, ex:Ljava/io/IOException;
    iget-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 259
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 260
    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 274
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 275
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Landroid/widget/TiVideoView4;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 264
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :cond_5
    :try_start_4
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->setDataSource()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private setDataSource()V
    .locals 11

    .prologue
    .line 178
    :try_start_0
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rtsp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    :cond_1
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 223
    :goto_1
    return-void

    .line 184
    :cond_2
    new-instance v7, Ljava/net/URL;

    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 186
    .local v1, cn:Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 187
    const-string v8, "Location"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, location:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 189
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, host:Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 191
    .local v5, port:I
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, scheme:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    .line 193
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 195
    if-nez v6, :cond_3

    .line 196
    const-string v6, "http"

    .line 198
    :cond_3
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    move-object v0, v3

    .line 199
    .local v0, authority:Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 207
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #cn:Ljava/net/HttpURLConnection;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #port:I
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 209
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 198
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v1       #cn:Ljava/net/HttpURLConnection;
    .restart local v3       #host:Ljava/lang/String;
    .restart local v4       #location:Ljava/lang/String;
    .restart local v5       #port:I
    .restart local v6       #scheme:Ljava/lang/String;
    .restart local v7       #url:Ljava/net/URL;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    move-object v0, v8

    goto :goto_2

    .line 210
    .end local v1           #cn:Ljava/net/HttpURLConnection;
    .end local v3           #host:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #port:I
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 212
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 215
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1

    .line 216
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 218
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 219
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v8

    move-object v2, v8

    .line 221
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 622
    iget v0, p0, Landroid/widget/TiVideoView4;->mCurrentBufferPercentage:I

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 588
    iget v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    if-lez v0, :cond_0

    .line 589
    iget v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    .line 595
    :goto_0
    return v0

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    .line 592
    iget v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    .line 595
    iget v0, p0, Landroid/widget/TiVideoView4;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 537
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->pause()V

    .line 541
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 546
    :goto_0
    const/4 v0, 0x1

    .line 556
    :goto_1
    return v0

    .line 543
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->start()V

    .line 544
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 547
    :cond_2
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->pause()V

    .line 550
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 556
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 552
    :cond_4
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 95
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    invoke-static {v2, p1}, Landroid/widget/TiVideoView4;->getDefaultSize(II)I

    move-result v1

    .line 96
    .local v1, width:I
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    invoke-static {v2, p2}, Landroid/widget/TiVideoView4;->getDefaultSize(II)I

    move-result v0

    .line 97
    .local v0, height:I
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 98
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 100
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    div-int v0, v2, v3

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/TiVideoView4;->setMeasuredDimension(II)V

    .line 112
    return-void

    .line 101
    :cond_1
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 103
    iget v2, p0, Landroid/widget/TiVideoView4;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Landroid/widget/TiVideoView4;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->toggleMediaControlsVisiblity()V

    .line 514
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 519
    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->toggleMediaControlsVisiblity()V

    .line 522
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 583
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    .line 584
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 115
    move v0, p1

    .line 116
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 117
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 119
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 140
    :goto_0
    return v0

    .line 124
    :sswitch_0
    move v0, p1

    .line 125
    goto :goto_0

    .line 132
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    goto :goto_0

    .line 137
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 606
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    iput p1, p0, Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 284
    :cond_0
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mMediaController:Landroid/widget/MediaController;

    .line 285
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->attachMediaController()V

    .line 286
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 453
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 454
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 466
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 467
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 442
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 443
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TiVideoView4;->setVideoURI(Landroid/net/Uri;)V

    .line 155
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Landroid/widget/TiVideoView4;->mUri:Landroid/net/Uri;

    .line 159
    iput-boolean v0, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    .line 160
    iput v0, p0, Landroid/widget/TiVideoView4;->mSeekWhenPrepared:I

    .line 161
    invoke-direct {p0}, Landroid/widget/TiVideoView4;->openVideo()V

    .line 162
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->requestLayout()V

    .line 163
    invoke-virtual {p0}, Landroid/widget/TiVideoView4;->invalidate()V

    .line 164
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    iput-boolean v1, p0, Landroid/widget/TiVideoView4;->mIsPlaybackCompleted:Z

    .line 569
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TiVideoView4;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 571
    iput-boolean v1, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TiVideoView4;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 169
    iget-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TiVideoView4;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 172
    :cond_0
    return-void
.end method
