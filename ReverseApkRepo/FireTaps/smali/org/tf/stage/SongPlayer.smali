.class public Lorg/tf/stage/SongPlayer;
.super Ljava/lang/Object;
.source "SongPlayer.java"

# interfaces
.implements Lorg/tf/player/PCMPlayer$Callback;


# instance fields
.field private m_finishError:Ljava/lang/Exception;

.field private m_finishLock:Ljava/lang/Object;

.field private m_finished:Z

.field private m_guitarPlayer:Lorg/tf/player/PCMPlayer;

.field private m_lastPosition:I

.field private m_muted:Z

.field private m_opened:Z

.field private m_playSynchronizer:Lorg/tf/player/Synchronizer;

.field private m_songPlayer:Lorg/tf/player/PCMPlayer;

.field private m_totalDifference:I

.field private m_totalDifferenceCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/tf/player/PCMPlayer;

    invoke-direct {v0}, Lorg/tf/player/PCMPlayer;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    .line 36
    new-instance v0, Lorg/tf/player/PCMPlayer;

    invoke-direct {v0}, Lorg/tf/player/PCMPlayer;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    .line 37
    new-instance v0, Lorg/tf/player/Synchronizer;

    invoke-direct {v0}, Lorg/tf/player/Synchronizer;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/SongPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/SongPlayer;->m_finishLock:Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, p0}, Lorg/tf/player/PCMPlayer;->setCallback(Lorg/tf/player/PCMPlayer$Callback;)V

    .line 40
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, p0}, Lorg/tf/player/PCMPlayer;->setCallback(Lorg/tf/player/PCMPlayer$Callback;)V

    .line 41
    return-void
.end method

.method private applyMute()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v1, p0, Lorg/tf/stage/SongPlayer;->m_muted:Z

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x0

    move v0, v1

    .line 171
    .local v0, volume:F
    :goto_0
    iget-object v1, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v1}, Lorg/tf/player/PCMPlayer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v1, v0}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    .line 176
    :cond_0
    :goto_1
    return-void

    .line 170
    .end local v0           #volume:F
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 173
    .restart local v0       #volume:F
    :cond_2
    iget-object v1, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v1}, Lorg/tf/player/PCMPlayer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v1, v0}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    goto :goto_1
.end method

.method private static createDecoder(Ljava/io/File;)Lorg/tf/player/PCMDecoder;
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 207
    .local v0, dot:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 208
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, extension:Ljava/lang/String;
    const-string v3, "ogg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    new-instance v3, Lorg/tf/player/VorbisDecoder;

    invoke-direct {v3, p0}, Lorg/tf/player/VorbisDecoder;-><init>(Ljava/io/File;)V

    .line 212
    :goto_0
    return-object v3

    .line 211
    :cond_0
    const-string v3, "raw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    new-instance v3, Lorg/tf/player/RawDecoder;

    invoke-direct {v3, p0}, Lorg/tf/player/RawDecoder;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 215
    .end local v1           #extension:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No decoder for \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getRawFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "vorbisFileName"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetFinishState()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_finishLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/stage/SongPlayer;->m_finished:Z

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/tf/stage/SongPlayer;->m_finishError:Ljava/lang/Exception;

    .line 198
    monitor-exit v0

    .line 202
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-boolean v0, p0, Lorg/tf/stage/SongPlayer;->m_opened:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0}, Lorg/tf/player/PCMPlayer;->close()V

    .line 68
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0}, Lorg/tf/player/PCMPlayer;->close()V

    .line 69
    iput-boolean v1, p0, Lorg/tf/stage/SongPlayer;->m_muted:Z

    .line 70
    iput v1, p0, Lorg/tf/stage/SongPlayer;->m_lastPosition:I

    .line 71
    iput-boolean v1, p0, Lorg/tf/stage/SongPlayer;->m_opened:Z

    .line 72
    invoke-direct {p0}, Lorg/tf/stage/SongPlayer;->resetFinishState()V

    goto :goto_0
.end method

.method public getFinishError()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_finishLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/tf/stage/SongPlayer;->m_finishError:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPosition()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    iget v1, p0, Lorg/tf/stage/SongPlayer;->m_lastPosition:I

    .line 113
    .local v1, position:I
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->getPosition()I

    move-result v1

    .line 116
    :cond_0
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->getPosition()I

    move-result v2

    .line 118
    .local v2, songPosition:I
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    sub-int v0, v1, v2

    .line 120
    .local v0, difference:I
    iget v3, p0, Lorg/tf/stage/SongPlayer;->m_totalDifference:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/tf/stage/SongPlayer;->m_totalDifference:I

    .line 121
    iget v3, p0, Lorg/tf/stage/SongPlayer;->m_totalDifferenceCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/tf/stage/SongPlayer;->m_totalDifferenceCounter:I

    .line 122
    iget v3, p0, Lorg/tf/stage/SongPlayer;->m_totalDifferenceCounter:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 124
    iput v5, p0, Lorg/tf/stage/SongPlayer;->m_totalDifference:I

    .line 125
    iput v5, p0, Lorg/tf/stage/SongPlayer;->m_totalDifferenceCounter:I

    .line 127
    :cond_1
    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    .line 132
    .end local v0           #difference:I
    .end local v2           #songPosition:I
    :cond_2
    :goto_0
    iput v1, p0, Lorg/tf/stage/SongPlayer;->m_lastPosition:I

    .line 133
    return v1

    .line 129
    .restart local v2       #songPosition:I
    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_finishLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/stage/SongPlayer;->m_finished:Z

    monitor-exit v0

    return v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public mute(Z)V
    .locals 1
    .parameter "mute"

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/tf/stage/SongPlayer;->m_muted:Z

    if-ne v0, p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-boolean p1, p0, Lorg/tf/stage/SongPlayer;->m_muted:Z

    .line 147
    invoke-direct {p0}, Lorg/tf/stage/SongPlayer;->applyMute()V

    goto :goto_0
.end method

.method public onFinished(Lorg/tf/player/PCMPlayer;Ljava/lang/Exception;)V
    .locals 5
    .parameter "player"
    .parameter "error"

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v2}, Lorg/tf/player/PCMPlayer;->isPlaying()Z

    move-result v1

    .line 180
    .local v1, songPlaying:Z
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v2}, Lorg/tf/player/PCMPlayer;->isPlaying()Z

    move-result v0

    .line 181
    .local v0, guitarPlaying:Z
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_finishLock:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_0
    iget-boolean v3, p0, Lorg/tf/stage/SongPlayer;->m_finished:Z

    if-eqz v3, :cond_1

    .line 183
    monitor-exit v2

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-eqz p2, :cond_2

    .line 186
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/tf/stage/SongPlayer;->m_finished:Z

    .line 187
    iput-object p2, p0, Lorg/tf/stage/SongPlayer;->m_finishError:Ljava/lang/Exception;

    .line 181
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/tf/stage/SongPlayer;->stop()V

    goto :goto_0

    .line 189
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    move v3, v4

    :goto_2
    :try_start_1
    iput-boolean v3, p0, Lorg/tf/stage/SongPlayer;->m_finished:Z

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 189
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public open(Lorg/tf/song/SongConfig;)V
    .locals 4
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/song/InvalidSongException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/tf/stage/SongPlayer;->close()V

    .line 46
    :try_start_0
    invoke-interface {p1}, Lorg/tf/song/SongConfig;->getSongFile()Ljava/io/File;

    move-result-object v1

    .line 47
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-static {v1}, Lorg/tf/stage/SongPlayer;->createDecoder(Ljava/io/File;)Lorg/tf/player/PCMDecoder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/tf/player/PCMPlayer;->open(Lorg/tf/player/PCMDecoder;)Z

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/tf/song/SongConfig;->getGuitarFile()Ljava/io/File;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-static {v1}, Lorg/tf/stage/SongPlayer;->createDecoder(Ljava/io/File;)Lorg/tf/player/PCMDecoder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/tf/player/PCMPlayer;->open(Lorg/tf/player/PCMDecoder;)Z

    .line 54
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/tf/stage/SongPlayer;->m_opened:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 56
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v2}, Lorg/tf/player/PCMPlayer;->close()V

    .line 58
    iget-object v2, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v2}, Lorg/tf/player/PCMPlayer;->close()V

    .line 59
    new-instance v2, Lorg/tf/song/InvalidSongException;

    invoke-direct {v2, v0}, Lorg/tf/song/InvalidSongException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p0}, Lorg/tf/stage/SongPlayer;->stop()V

    .line 77
    invoke-direct {p0}, Lorg/tf/stage/SongPlayer;->resetFinishState()V

    .line 78
    invoke-virtual {p0}, Lorg/tf/stage/SongPlayer;->getPosition()I

    move-result v1

    .line 79
    .local v1, position:I
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3, v1}, Lorg/tf/player/PCMPlayer;->setPosition(I)Z

    .line 80
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3, v1}, Lorg/tf/player/PCMPlayer;->setPosition(I)Z

    .line 82
    iput v4, p0, Lorg/tf/stage/SongPlayer;->m_totalDifference:I

    .line 83
    iput v4, p0, Lorg/tf/stage/SongPlayer;->m_totalDifferenceCounter:I

    .line 85
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    invoke-virtual {v3}, Lorg/tf/player/Synchronizer;->register()Lorg/tf/player/Synchronizer$Handle;

    move-result-object v2

    .line 87
    .local v2, shandle:Lorg/tf/player/Synchronizer$Handle;
    :try_start_0
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    iget-object v4, p0, Lorg/tf/stage/SongPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    invoke-virtual {v3, v4}, Lorg/tf/player/PCMPlayer;->prepare(Lorg/tf/player/Synchronizer;)Z

    .line 88
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    iget-object v4, p0, Lorg/tf/stage/SongPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    invoke-virtual {v3, v4}, Lorg/tf/player/PCMPlayer;->prepare(Lorg/tf/player/Synchronizer;)Z

    .line 89
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->play()Z

    .line 90
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v3}, Lorg/tf/player/PCMPlayer;->play()Z

    .line 91
    invoke-virtual {v2}, Lorg/tf/player/Synchronizer$Handle;->synchronize()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-virtual {v2}, Lorg/tf/player/Synchronizer$Handle;->unregister()V

    .line 99
    :goto_0
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    .line 100
    iget-object v3, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    .line 101
    invoke-direct {p0}, Lorg/tf/stage/SongPlayer;->applyMute()V

    .line 102
    return-void

    .line 93
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 94
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v0}, Lorg/tf/stage/SongPlayer;->onFinished(Lorg/tf/player/PCMPlayer;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {v2}, Lorg/tf/player/Synchronizer$Handle;->unregister()V

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 97
    invoke-virtual {v2}, Lorg/tf/player/Synchronizer$Handle;->unregister()V

    .line 98
    throw v3
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, p1}, Lorg/tf/player/PCMPlayer;->setPosition(I)Z

    .line 138
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, p1}, Lorg/tf/player/PCMPlayer;->setPosition(I)Z

    .line 139
    iput p1, p0, Lorg/tf/stage/SongPlayer;->m_lastPosition:I

    .line 140
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, v1}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    .line 106
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0, v1}, Lorg/tf/player/PCMPlayer;->setVolume(F)Z

    .line 107
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_songPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0}, Lorg/tf/player/PCMPlayer;->stop()Z

    .line 108
    iget-object v0, p0, Lorg/tf/stage/SongPlayer;->m_guitarPlayer:Lorg/tf/player/PCMPlayer;

    invoke-virtual {v0}, Lorg/tf/player/PCMPlayer;->stop()Z

    .line 109
    return-void
.end method
