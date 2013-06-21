.class public Lcom/redlynx/drawrace2/DrawRace2Audio;
.super Ljava/lang/Object;
.source "DrawRace2Audio.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MINIMUM_BUFFER_SIZE:I = 0x1000

.field private static final STREAM_RATE:I = 0x5622

.field private static smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;


# instance fields
.field private isReleased:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mIsPlaying:Z

.field private mMinSize:I

.field private mSoundData:[S

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x5622

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    .line 79
    :goto_0
    iget v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 80
    iget v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mSoundData:[S

    .line 86
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 88
    return-void
.end method

.method private final begin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    .line 96
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    iput-boolean v2, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    .line 100
    iput-boolean v2, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->isReleased:Z

    .line 101
    return-void
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->stop()V

    .line 43
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->release()V

    .line 44
    :goto_0
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;-><init>()V

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    .line 32
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->begin()V

    .line 33
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->play()V

    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->setAudioPlaying(Z)V

    .line 37
    :cond_0
    return-void
.end method

.method private isReleased()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->isReleased:Z

    return v0
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->stop()V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->setAudioPlaying(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->setAudioPlaying(Z)V

    .line 67
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Audio;->smAudio:Lcom/redlynx/drawrace2/DrawRace2Audio;

    invoke-direct {v0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->play()V

    .line 70
    :cond_0
    return-void
.end method

.method private play()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->stop()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final declared-synchronized release()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    .line 122
    return-void
.end method

.method private stream()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mSoundData:[S

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->requestAudioBufferFill([S)V

    .line 171
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mSoundData:[S

    const/4 v2, 0x0

    iget v3, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 172
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 130
    :goto_0
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 138
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 143
    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    iput-boolean v8, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->isReleased:Z

    .line 167
    return-void

    .line 147
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5622

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mMinSize:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 154
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/redlynx/drawrace2/DrawRace2Audio;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 159
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Audio;->stream()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    :cond_5
    :goto_2
    :try_start_6
    monitor-exit p0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v7

    .line 162
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 134
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
