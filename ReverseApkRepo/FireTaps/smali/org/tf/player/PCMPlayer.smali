.class public Lorg/tf/player/PCMPlayer;
.super Ljava/lang/Object;
.source "PCMPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/player/PCMPlayer$Callback;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PLAYING_LAST:I = 0x4

.field private static final STATE_READING:I = 0x2

.field private static final STATE_STOPPED:I = 0x1

.field private static m_instanceCounter:I


# instance fields
.field private m_audioBufferLength:I

.field private m_basePosition:I

.field private m_callback:Lorg/tf/player/PCMPlayer$Callback;

.field private m_decoder:Lorg/tf/player/PCMDecoder;

.field private m_lock:Ljava/lang/Object;

.field private m_playSynchronizer:Lorg/tf/player/Synchronizer;

.field private m_playerBuffer:[B

.field private m_playerBufferLength:I

.field private m_playerBufferPosition:I

.field private m_playerThread:Ljava/lang/Thread;

.field private m_readerBuffer:[B

.field private m_readerBufferLength:I

.field private m_readerThread:Ljava/lang/Thread;

.field private m_reportFinishedCallback:Lorg/tf/player/PCMPlayer$Callback;

.field private m_reportFinishedError:Ljava/lang/Exception;

.field private m_reportFinishedLock:Ljava/lang/Object;

.field private volatile m_state:I

.field private m_track:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    sput v0, Lorg/tf/player/PCMPlayer;->m_instanceCounter:I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedLock:Ljava/lang/Object;

    .line 32
    iput v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    .line 33
    iput v1, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lorg/tf/player/PCMPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->readerThreadRun()V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/player/PCMPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->playerThreadRun()V

    return-void
.end method

.method private allocateBuffers(I)V
    .locals 1
    .parameter "minLength"

    .prologue
    .line 373
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 374
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    .line 376
    :cond_1
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 377
    :cond_2
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    .line 379
    :cond_3
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->resetBuffers()V

    .line 380
    return-void
.end method

.method private finish(Ljava/lang/Exception;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 338
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 341
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_callback:Lorg/tf/player/PCMPlayer$Callback;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_callback:Lorg/tf/player/PCMPlayer$Callback;

    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedCallback:Lorg/tf/player/PCMPlayer$Callback;

    .line 344
    iput-object p1, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedError:Ljava/lang/Exception;

    .line 342
    monitor-exit v0

    .line 347
    :cond_0
    return-void

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 432
    const-string v0, "TOF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private playerThreadRun()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, shandle:Lorg/tf/player/Synchronizer$Handle;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->reportFinished()V

    .line 258
    iget-object v2, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 259
    :try_start_0
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-nez v3, :cond_2

    .line 260
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lorg/tf/player/Synchronizer$Handle;->unregister()V

    .line 263
    const/4 v0, 0x0

    .line 266
    :cond_1
    monitor-exit v2

    .line 330
    return-void

    .line 268
    :cond_2
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v3, v9, :cond_4

    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v3, v8, :cond_4

    .line 270
    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {v0}, Lorg/tf/player/Synchronizer$Handle;->unregister()V

    .line 273
    const/4 v0, 0x0

    .line 275
    :cond_3
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-static {v3}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v2

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 278
    :cond_4
    :try_start_1
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    if-ne v3, v4, :cond_7

    .line 280
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-ne v3, v8, :cond_5

    .line 282
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/tf/player/PCMPlayer;->finish(Ljava/lang/Exception;)V

    .line 283
    monitor-exit v2

    goto :goto_0

    .line 285
    :cond_5
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    if-nez v3, :cond_6

    .line 287
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-static {v3}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v2

    goto :goto_0

    .line 290
    :cond_6
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->swapBuffers()V

    .line 291
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 292
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    if-gtz v3, :cond_7

    .line 294
    const/4 v3, 0x0

    iput v3, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    .line 295
    monitor-exit v2

    goto :goto_0

    .line 298
    :cond_7
    if-nez v0, :cond_8

    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    if-eqz v3, :cond_8

    .line 300
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    invoke-virtual {v3}, Lorg/tf/player/Synchronizer;->register()Lorg/tf/player/Synchronizer$Handle;

    move-result-object v0

    .line 258
    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v0, :cond_9

    .line 305
    invoke-virtual {v0}, Lorg/tf/player/Synchronizer$Handle;->synchronize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    :cond_9
    iget-object v2, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    .line 312
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    .line 313
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    .line 314
    iget v5, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    iget v6, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    sub-int/2addr v5, v6

    .line 311
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 317
    .local v1, written:I
    if-gez v1, :cond_c

    .line 318
    iget-object v2, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_2
    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v3, v9, :cond_a

    iget v3, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-ne v3, v8, :cond_b

    .line 321
    :cond_a
    new-instance v3, Ljava/io/IOException;

    .line 322
    const-string v4, "Audio failed to play (%d)."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v3}, Lorg/tf/player/PCMPlayer;->finish(Ljava/lang/Exception;)V

    .line 318
    :cond_b
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 327
    :cond_c
    iget v2, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    goto/16 :goto_0
.end method

.method private readerThreadRun()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 211
    :goto_0
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->reportFinished()V

    .line 212
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 213
    :try_start_0
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-nez v4, :cond_0

    .line 215
    monitor-exit v3

    .line 252
    return-void

    .line 217
    :cond_0
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    if-nez v4, :cond_1

    .line 218
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v4, v8, :cond_2

    .line 221
    :cond_1
    iget-object v4, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-static {v4}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v3

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, read:I
    const/4 v1, 0x0

    .line 228
    .local v1, error:Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_decoder:Lorg/tf/player/PCMDecoder;

    iget-object v4, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    array-length v6, v6

    invoke-interface {v3, v4, v5, v6}, Lorg/tf/player/PCMDecoder;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 234
    :goto_1
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_3
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v4, v8, :cond_3

    .line 237
    monitor-exit v3

    goto :goto_0

    .line 234
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 231
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 232
    .local v0, e:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_1

    .line 239
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    if-eqz v1, :cond_4

    .line 240
    :try_start_4
    invoke-direct {p0, v1}, Lorg/tf/player/PCMPlayer;->finish(Ljava/lang/Exception;)V

    .line 241
    monitor-exit v3

    goto :goto_0

    .line 243
    :cond_4
    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v4, v7, :cond_5

    .line 245
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 246
    monitor-exit v3

    goto :goto_0

    .line 248
    :cond_5
    iput v2, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    .line 249
    iget-object v4, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private reportFinished()V
    .locals 4

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, callback:Lorg/tf/player/PCMPlayer$Callback;
    const/4 v1, 0x0

    .line 352
    .local v1, error:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedLock:Ljava/lang/Object;

    monitor-enter v2

    .line 353
    :try_start_0
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedCallback:Lorg/tf/player/PCMPlayer$Callback;

    if-eqz v3, :cond_0

    .line 354
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedCallback:Lorg/tf/player/PCMPlayer$Callback;

    .line 355
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedError:Ljava/lang/Exception;

    .line 356
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedCallback:Lorg/tf/player/PCMPlayer$Callback;

    .line 357
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tf/player/PCMPlayer;->m_reportFinishedError:Ljava/lang/Exception;

    .line 352
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v0, p0, v1}, Lorg/tf/player/PCMPlayer$Callback;->onFinished(Lorg/tf/player/PCMPlayer;Ljava/lang/Exception;)V

    .line 363
    :cond_1
    return-void

    .line 352
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private resetBuffers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 383
    iput v0, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    .line 384
    iput v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    .line 385
    iput v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    .line 386
    return-void
.end method

.method private setStateNotify(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 366
    iput p1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    .line 367
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 368
    return-void
.end method

.method private startThreads()V
    .locals 4

    .prologue
    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/tf/player/PCMPlayer;->m_instanceCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, name:Ljava/lang/String;
    sget v1, Lorg/tf/player/PCMPlayer;->m_instanceCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/tf/player/PCMPlayer;->m_instanceCounter:I

    .line 407
    new-instance v1, Lorg/tf/player/PCMPlayer$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Reader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/tf/player/PCMPlayer$1;-><init>(Lorg/tf/player/PCMPlayer;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_readerThread:Ljava/lang/Thread;

    .line 412
    new-instance v1, Lorg/tf/player/PCMPlayer$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Player"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/tf/player/PCMPlayer$2;-><init>(Lorg/tf/player/PCMPlayer;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_playerThread:Ljava/lang/Thread;

    .line 417
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_readerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 418
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_playerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 419
    return-void
.end method

.method private stopThreads()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-static {v0}, Lskiba/util/Simply;->notifyAll(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_readerThread:Ljava/lang/Thread;

    invoke-static {v0}, Lskiba/util/Simply;->join(Ljava/lang/Thread;)Z

    .line 424
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_playerThread:Ljava/lang/Thread;

    invoke-static {v0}, Lskiba/util/Simply;->join(Ljava/lang/Thread;)Z

    .line 425
    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_readerThread:Ljava/lang/Thread;

    .line 426
    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_playerThread:Ljava/lang/Thread;

    .line 427
    return-void
.end method

.method private swapBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    .line 391
    .local v0, buffer:[B
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    iput-object v1, p0, Lorg/tf/player/PCMPlayer;->m_readerBuffer:[B

    .line 392
    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_playerBuffer:[B

    .line 394
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    iput v1, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferLength:I

    .line 395
    iput v2, p0, Lorg/tf/player/PCMPlayer;->m_playerBufferPosition:I

    .line 396
    iput v2, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    .line 397
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lorg/tf/player/PCMPlayer;->stop()Z

    .line 81
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-nez v1, :cond_0

    .line 83
    monitor-exit v0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->stopThreads()V

    .line 88
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_decoder:Lorg/tf/player/PCMDecoder;

    invoke-interface {v0}, Lorg/tf/player/PCMDecoder;->close()V

    .line 89
    iput-object v3, p0, Lorg/tf/player/PCMPlayer;->m_decoder:Lorg/tf/player/PCMDecoder;

    .line 90
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 91
    iput-object v3, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    .line 92
    iput v2, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPosition()I
    .locals 8

    .prologue
    .line 174
    iget-object v3, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, position:I
    :try_start_0
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 177
    :cond_0
    iget-object v4, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v2

    .line 178
    .local v2, rate:I
    iget-object v4, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    .line 179
    .local v0, headPosition:I
    const-wide/16 v4, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    int-to-long v6, v2

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 181
    .end local v0           #headPosition:I
    .end local v2           #rate:I
    :cond_1
    iget v4, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    add-int/2addr v4, v1

    monitor-exit v3

    return v4

    .line 174
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isOpened()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 159
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 158
    :goto_0
    monitor-exit v0

    return v1

    .line 159
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public open(Lorg/tf/player/PCMDecoder;)Z
    .locals 11
    .parameter "decoder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v10, 0x1

    .line 37
    invoke-virtual {p0}, Lorg/tf/player/PCMPlayer;->close()V

    .line 38
    invoke-interface {p1}, Lorg/tf/player/PCMDecoder;->getRate()I

    move-result v2

    .line 39
    .local v2, rate:I
    invoke-interface {p1}, Lorg/tf/player/PCMDecoder;->getChannels()I

    move-result v3

    .line 40
    .local v3, channelConfig:I
    if-ne v3, v10, :cond_0

    .line 41
    const/4 v3, 0x2

    .line 49
    :goto_0
    invoke-interface {p1}, Lorg/tf/player/PCMDecoder;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not seekable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-ne v3, v1, :cond_1

    .line 43
    const/4 v3, 0x3

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 46
    const-string v1, "Invalid number of channels (%d)."

    new-array v4, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    .line 45
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    invoke-static {v2, v3, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 56
    .local v7, audioBufferLength:I
    mul-int/lit8 v5, v7, 0x4

    .line 58
    .local v5, bufferLength:I
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    .line 59
    const/4 v1, 0x3

    .line 62
    const/4 v4, 0x2

    .line 64
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 58
    iput-object v0, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iput-object p1, p0, Lorg/tf/player/PCMPlayer;->m_decoder:Lorg/tf/player/PCMDecoder;

    .line 72
    iput v10, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    .line 73
    iput v7, p0, Lorg/tf/player/PCMPlayer;->m_audioBufferLength:I

    .line 74
    invoke-direct {p0, v5}, Lorg/tf/player/PCMPlayer;->allocateBuffers(I)V

    .line 75
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->startThreads()V

    .line 76
    return v10

    .line 66
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 67
    .local v8, e:Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    const-string v0, "Failed to initialize audio."

    invoke-direct {v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .local v9, ioe:Ljava/io/IOException;
    invoke-virtual {v9, v8}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    throw v9
.end method

.method public play()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 130
    monitor-exit v0

    move v0, v3

    .line 138
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    invoke-virtual {p0, v1}, Lorg/tf/player/PCMPlayer;->prepare(Lorg/tf/player/Synchronizer;)Z

    .line 133
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 134
    :goto_1
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 137
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 138
    monitor-exit v0

    move v0, v4

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lskiba/util/Simply;->waitSleep(I)Z

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepare()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/tf/player/PCMPlayer;->prepare(Lorg/tf/player/Synchronizer;)Z

    move-result v0

    return v0
.end method

.method public prepare(Lorg/tf/player/Synchronizer;)Z
    .locals 5
    .parameter "playSynchronizer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v3, :cond_0

    .line 108
    monitor-exit v0

    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    .line 110
    :cond_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-ne v1, v4, :cond_1

    .line 111
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_decoder:Lorg/tf/player/PCMDecoder;

    iget v2, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    invoke-interface {v1, v2}, Lorg/tf/player/PCMDecoder;->seekToTime(I)V

    .line 114
    iput-object p1, p0, Lorg/tf/player/PCMPlayer;->m_playSynchronizer:Lorg/tf/player/Synchronizer;

    .line 115
    invoke-direct {p0}, Lorg/tf/player/PCMPlayer;->resetBuffers()V

    .line 116
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 118
    :goto_1
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_readerBufferLength:I

    if-nez v1, :cond_2

    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v4, :cond_3

    .line 123
    :cond_2
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    invoke-static {v1}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallback(Lorg/tf/player/PCMPlayer$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 202
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iput-object p1, p0, Lorg/tf/player/PCMPlayer;->m_callback:Lorg/tf/player/PCMPlayer$Callback;

    .line 202
    monitor-exit v0

    .line 205
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v2, :cond_0

    .line 166
    monitor-exit v0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 168
    :cond_0
    iput p1, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    .line 169
    monitor-exit v0

    move v0, v2

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVolume(F)Z
    .locals 2
    .parameter "volume"

    .prologue
    .line 186
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-nez v1, :cond_0

    .line 188
    monitor-exit v0

    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 191
    monitor-exit v0

    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 143
    iget-object v0, p0, Lorg/tf/player/PCMPlayer;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v4, :cond_0

    .line 145
    monitor-exit v0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lorg/tf/player/PCMPlayer;->m_state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/tf/player/PCMPlayer;->getPosition()I

    move-result v1

    iput v1, p0, Lorg/tf/player/PCMPlayer;->m_basePosition:I

    .line 149
    iget-object v1, p0, Lorg/tf/player/PCMPlayer;->m_track:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 151
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/tf/player/PCMPlayer;->setStateNotify(I)V

    .line 152
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
