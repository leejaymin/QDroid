.class public Lorg/tf/player/Vorbis2RawConverter;
.super Ljava/lang/Object;
.source "Vorbis2RawConverter.java"


# instance fields
.field private m_finishError:Ljava/lang/Exception;

.field private m_pauseEvent:Ljava/lang/Object;

.field private m_paused:Z

.field private m_progress:I

.field private m_raw:Ljava/io/FileOutputStream;

.field private m_rawFile:Ljava/io/File;

.field private volatile m_running:Z

.field private m_thread:Ljava/lang/Thread;

.field private m_threadPriority:I

.field private m_vorbis:Lorg/tf/player/VorbisDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tf/player/Vorbis2RawConverter;->setPriority(I)V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lorg/tf/player/Vorbis2RawConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/tf/player/Vorbis2RawConverter;->threadRun()V

    return-void
.end method

.method private close(Z)V
    .locals 2
    .parameter "delete"

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 178
    iput-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    .line 179
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 181
    iput-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;

    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_rawFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 186
    :cond_0
    return-void
.end method

.method public static isConvertedFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .parameter "vorbisFile"
    .parameter "rawFile"

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v8

    .line 119
    :goto_0
    return v4

    .line 107
    :cond_1
    :try_start_0
    new-instance v1, Lorg/tf/player/VorbisDecoder;

    invoke-direct {v1}, Lorg/tf/player/VorbisDecoder;-><init>()V

    .line 108
    .local v1, decoder:Lorg/tf/player/VorbisDecoder;
    invoke-virtual {v1, p0}, Lorg/tf/player/VorbisDecoder;->open(Ljava/io/File;)V

    .line 109
    invoke-virtual {v1}, Lorg/tf/player/VorbisDecoder;->getTimeLength()I

    move-result v3

    .line 110
    .local v3, timeLength:I
    rem-int/lit8 v4, v3, 0x64

    sub-int/2addr v3, v4

    .line 112
    invoke-virtual {v1}, Lorg/tf/player/VorbisDecoder;->getTimeLength()I

    move-result v4

    .line 113
    invoke-virtual {v1}, Lorg/tf/player/VorbisDecoder;->getRate()I

    move-result v5

    .line 114
    invoke-virtual {v1}, Lorg/tf/player/VorbisDecoder;->getChannels()I

    move-result v6

    .line 111
    invoke-static {v4, v5, v6}, Lorg/tf/player/RawDecoder;->getFileSize(III)I

    move-result v0

    .line 115
    .local v0, decodedSize:I
    invoke-virtual {v1}, Lorg/tf/player/VorbisDecoder;->close()V

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_0

    .line 118
    .end local v0           #decodedSize:I
    .end local v1           #decoder:Lorg/tf/player/VorbisDecoder;
    .end local v3           #timeLength:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Ljava/io/IOException;
    move v4, v8

    .line 119
    goto :goto_0
.end method

.method private startThread()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lorg/tf/player/Vorbis2RawConverter$1;

    invoke-direct {v0, p0}, Lorg/tf/player/Vorbis2RawConverter$1;-><init>(Lorg/tf/player/Vorbis2RawConverter;)V

    iput-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_thread:Ljava/lang/Thread;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z

    .line 132
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method private stopThread()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z

    .line 137
    invoke-virtual {p0}, Lorg/tf/player/Vorbis2RawConverter;->resume()V

    .line 138
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_thread:Ljava/lang/Thread;

    invoke-static {v0}, Lskiba/util/Simply;->join(Ljava/lang/Thread;)Z

    .line 139
    return-void
.end method

.method private threadRun()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 142
    iget v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_threadPriority:I

    invoke-static {v6}, Lskiba/util/Simply;->setThreadPriority(I)V

    .line 143
    const/4 v2, 0x0

    .line 146
    .local v2, error:Ljava/lang/Exception;
    :try_start_0
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;

    .line 147
    iget-object v7, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-virtual {v7}, Lorg/tf/player/VorbisDecoder;->getRate()I

    move-result v7

    .line 148
    iget-object v8, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-virtual {v8}, Lorg/tf/player/VorbisDecoder;->getChannels()I

    move-result v8

    .line 145
    invoke-static {v6, v7, v8}, Lorg/tf/player/RawDecoder;->writeHeader(Ljava/io/OutputStream;II)V

    .line 149
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-virtual {v6}, Lorg/tf/player/VorbisDecoder;->getTimeLength()I

    move-result v4

    .line 150
    .local v4, progressTotal:I
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 151
    .local v0, buffer:[B
    :goto_0
    iget-boolean v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    .line 171
    .end local v0           #buffer:[B
    .end local v4           #progressTotal:I
    :cond_0
    :goto_1
    iput-object v2, p0, Lorg/tf/player/Vorbis2RawConverter;->m_finishError:Ljava/lang/Exception;

    .line 172
    iput-boolean v9, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z

    .line 173
    if-eqz v2, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, v6}, Lorg/tf/player/Vorbis2RawConverter;->close(Z)V

    .line 174
    return-void

    .line 152
    .restart local v0       #buffer:[B
    .restart local v4       #progressTotal:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v6, v0, v7, v8}, Lorg/tf/player/VorbisDecoder;->read([BII)I

    move-result v5

    .line 153
    .local v5, read:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 156
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 158
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-virtual {v6}, Lorg/tf/player/VorbisDecoder;->getTimePosition()I

    move-result v3

    .line 159
    .local v3, progressCurrent:I
    mul-int/lit8 v6, v3, 0x64

    div-int/2addr v6, v4

    iput v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_progress:I

    .line 161
    iget-object v6, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :try_start_2
    iget-boolean v7, p0, Lorg/tf/player/Vorbis2RawConverter;->m_paused:Z

    if-eqz v7, :cond_2

    .line 163
    iget-object v7, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    invoke-static {v7}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 168
    .end local v0           #buffer:[B
    .end local v3           #progressCurrent:I
    .end local v4           #progressTotal:I
    .end local v5           #read:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 169
    .local v1, e:Ljava/io/IOException;
    move-object v2, v1

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    move v6, v9

    .line 173
    goto :goto_2
.end method


# virtual methods
.method public getFinishError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_finishError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_progress:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_paused:Z

    monitor-exit v0

    return v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_running:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_paused:Z

    .line 67
    monitor-exit v0

    .line 70
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_paused:Z

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_paused:Z

    .line 76
    iget-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_pauseEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 73
    :cond_0
    monitor-exit v0

    .line 79
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 34
    iput p1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_threadPriority:I

    .line 35
    return-void
.end method

.method public start(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "vorbisFile"
    .parameter "rawFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lorg/tf/player/Vorbis2RawConverter;->stop()V

    .line 40
    :try_start_0
    new-instance v1, Lorg/tf/player/VorbisDecoder;

    invoke-direct {v1, p1}, Lorg/tf/player/VorbisDecoder;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    .line 41
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_raw:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iput-object p2, p0, Lorg/tf/player/Vorbis2RawConverter;->m_rawFile:Ljava/io/File;

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_progress:I

    .line 50
    iput-object v2, p0, Lorg/tf/player/Vorbis2RawConverter;->m_finishError:Ljava/lang/Exception;

    .line 51
    invoke-direct {p0}, Lorg/tf/player/Vorbis2RawConverter;->startThread()V

    .line 52
    return-void

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    invoke-static {v1}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 45
    iput-object v2, p0, Lorg/tf/player/Vorbis2RawConverter;->m_vorbis:Lorg/tf/player/VorbisDecoder;

    .line 46
    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter;->m_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lorg/tf/player/Vorbis2RawConverter;->stopThread()V

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/player/Vorbis2RawConverter;->close(Z)V

    goto :goto_0
.end method
