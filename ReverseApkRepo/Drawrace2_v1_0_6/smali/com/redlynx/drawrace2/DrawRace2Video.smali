.class public Lcom/redlynx/drawrace2/DrawRace2Video;
.super Landroid/app/Activity;
.source "DrawRace2Video.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawRace2Video"

.field private static final VIDEO_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static instance:Lcom/redlynx/drawrace2/DrawRace2Video;

.field private static smActivity:Landroid/app/Activity;

.field private static smAssetPath:Ljava/lang/String;

.field private static smFullScreenHeight:I

.field private static smFullScreenWidth:I

.field private static smIsOpen:Z

.field private static smIsPaused:Z

.field private static smIsScreenOn:Z

.field private static smIsStopped:Z

.field private static smPath:Ljava/lang/String;


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreview:Landroid/view/SurfaceView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoSizeKnown:Z

    .line 37
    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoReadyToBePlayed:Z

    return-void
.end method

.method private static close()V
    .locals 1

    .prologue
    .line 304
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    goto :goto_0
.end method

.method private closeVideo()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Video;->close()V

    .line 86
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->releaseMediaPlayer()V

    .line 87
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->doCleanUp()V

    .line 88
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->finish()V

    .line 89
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->overridePendingTransition(II)V

    .line 90
    return-void
.end method

.method private doCleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mVideoWidth:I

    .line 260
    iput v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mVideoHeight:I

    .line 261
    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoReadyToBePlayed:Z

    .line 262
    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoSizeKnown:Z

    .line 263
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 323
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Video;->smActivity:Landroid/app/Activity;

    .line 324
    return-void
.end method

.method public static isPlaying()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    return v0
.end method

.method private static open(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 274
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Video;->smPath:Ljava/lang/String;

    .line 275
    sget-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    if-eqz v1, :cond_0

    .line 276
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Video;->close()V

    .line 277
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smActivity:Landroid/app/Activity;

    const-string v2, "com.redlynx.drawrace2.DrawRace2Video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    const/4 v1, 0x1

    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsOpen:Z

    .line 281
    return-void
.end method

.method private playVideo()V
    .locals 7

    .prologue
    .line 93
    const/4 v2, 0x0

    .local v2, pass:I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 95
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Video;->close()V

    .line 96
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->releaseMediaPlayer()V

    .line 97
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->doCleanUp()V

    .line 101
    :try_start_0
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Video;->smPath:Ljava/lang/String;

    .line 102
    .local v3, path:Ljava/lang/String;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 103
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, k:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_lowres"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v1           #k:I
    :cond_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 115
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 116
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 117
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 119
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 120
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DrawRace2Video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not play video (pass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "DrawRace2Video"

    const-string v5, "Could not play video -- all passes failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->closeVideo()V

    goto :goto_1
.end method

.method public static playVideo(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Video;->smAssetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Video;->open(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 256
    :cond_0
    return-void
.end method

.method public static screenOffAction()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsScreenOn:Z

    .line 301
    return-void
.end method

.method public static setAssetPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 319
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Video;->smAssetPath:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public static setScreenSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 327
    sput p0, Lcom/redlynx/drawrace2/DrawRace2Video;->smFullScreenWidth:I

    .line 328
    sput p1, Lcom/redlynx/drawrace2/DrawRace2Video;->smFullScreenHeight:I

    .line 329
    return-void
.end method

.method private startVideoPlayback()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mHolder:Landroid/view/SurfaceHolder;

    sget v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smFullScreenWidth:I

    sget v2, Lcom/redlynx/drawrace2/DrawRace2Video;->smFullScreenHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 270
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 271
    return-void
.end method

.method public static unpause()V
    .locals 3

    .prologue
    .line 284
    const/4 v1, 0x1

    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsScreenOn:Z

    .line 285
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    invoke-virtual {v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 286
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smPath:Ljava/lang/String;

    .line 287
    .local v0, path:Ljava/lang/String;
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->closeVideo()V

    .line 288
    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Video;->open(Ljava/lang/String;)V

    .line 290
    :cond_0
    sget-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsPaused:Z

    if-eqz v1, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->unpauseMediaPlayer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->doCleanUp()V

    .line 295
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->closeVideo()V

    goto :goto_0
.end method

.method private unpauseMediaPlayer()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .parameter "arg0"
    .parameter "percent"

    .prologue
    .line 137
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->closeVideo()V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v3, 0x400

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/redlynx/drawrace2/DrawRace2Video;->overridePendingTransition(II)V

    .line 62
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 65
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mediaplayer"

    const-string v3, "layout"

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->setContentView(I)V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lutil/VideoScreenReceiver;

    invoke-direct {v1}, Lutil/VideoScreenReceiver;-><init>()V

    iput-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/redlynx/drawrace2/DrawRace2Video;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "surface"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/redlynx/drawrace2/DrawRace2Video;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mPreview:Landroid/view/SurfaceView;

    .line 74
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mHolder:Landroid/view/SurfaceHolder;

    .line 75
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 78
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2Video;->instance:Lcom/redlynx/drawrace2/DrawRace2Video;

    .line 79
    sput-boolean v5, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsPaused:Z

    .line 80
    sput-boolean v6, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsScreenOn:Z

    .line 81
    sput-boolean v5, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsStopped:Z

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/redlynx/drawrace2/DrawRace2Video;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 247
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->releaseMediaPlayer()V

    .line 248
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->doCleanUp()V

    .line 249
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 234
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 193
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    const/4 v0, 0x1

    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsPaused:Z

    .line 197
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mediaplayer"

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoReadyToBePlayed:Z

    .line 163
    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->startVideoPlayback()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsPaused:Z

    .line 213
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsScreenOn:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsStopped:Z

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->releaseMediaPlayer()V

    .line 215
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->doCleanUp()V

    .line 219
    :cond_0
    :goto_0
    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsStopped:Z

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 221
    return-void

    .line 216
    :cond_1
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsScreenOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsStopped:Z

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->unpauseMediaPlayer()Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2Video;->smIsStopped:Z

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 205
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 147
    :cond_0
    const-string v0, "DrawRace2Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid video width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoSizeKnown:Z

    .line 151
    iput p2, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mVideoWidth:I

    .line 152
    iput p3, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mVideoHeight:I

    .line 153
    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->startVideoPlayback()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "surfaceholder"
    .parameter "i"
    .parameter "j"
    .parameter "k"

    .prologue
    .line 171
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->playVideo()V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Video;->unpause()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceholder"

    .prologue
    .line 175
    return-void
.end method
