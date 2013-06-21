.class public Lcom/stickycoding/rokon/audio/RokonMusic;
.super Ljava/lang/Object;
.source "RokonMusic.java"


# static fields
.field protected static mediaPlayer:Landroid/media/MediaPlayer;

.field protected static mustResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mustResume:Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mustResume:Z

    goto :goto_0
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    sget-boolean v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mustResume:Z

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mustResume:Z

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public static play()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public static play(Ljava/lang/String;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/stickycoding/rokon/audio/RokonMusic;->play(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public static play(Ljava/lang/String;Z)V
    .locals 8
    .parameter "file"
    .parameter "loop"

    .prologue
    .line 51
    invoke-static {}, Lcom/stickycoding/rokon/audio/RokonMusic;->prepareMediaPlayer()V

    .line 52
    const/4 v6, 0x0

    .line 54
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 62
    :try_start_1
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 63
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 64
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 65
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 66
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 78
    :try_start_2
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 85
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 86
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 56
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried creating RokonMusic with missing asset ... "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    goto :goto_0

    .line 67
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 68
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 69
    const-string v0, "Error setting data source in RokonMusic.play, IO exception"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    goto :goto_0

    .line 72
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 73
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 74
    const-string v0, "Error setting data source in RokonMusic.play, fail ..."

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 80
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v0, "Error preparing MediaPlayer"

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    goto :goto_0
.end method

.method private static prepareMediaPlayer()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonMusic;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0
.end method
