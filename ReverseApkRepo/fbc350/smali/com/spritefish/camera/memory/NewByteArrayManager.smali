.class public Lcom/spritefish/camera/memory/NewByteArrayManager;
.super Ljava/lang/Object;
.source "NewByteArrayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;
    }
.end annotation


# static fields
.field private static final MAX_BUFS:I = 0x64

.field static final THUMB_DIV:I = 0x8


# instance fields
.field private bami:Lcom/spritefish/camera/memory/BAMInterface;

.field private byteArrays:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private preshotQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private preshotQueueSize:I

.field private thumbh:I

.field private thumbw:I


# direct methods
.method public constructor <init>(Lcom/spritefish/camera/memory/BAMInterface;)V
    .locals 2
    .parameter "bami"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->maxSize:I

    .line 81
    iput-object p1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    .line 82
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    .line 84
    return-void
.end method

.method private getOldestPreshot()Lcom/spritefish/camera/memory/ByteArray;
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addRecordedPreshot(Lcom/spritefish/camera/memory/ByteArray;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v1

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public allocateArrays(IIZZI)V
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "blackWhite"
    .parameter "highRes"
    .parameter "memModifier"

    .prologue
    .line 100
    const-wide/32 v0, 0x5f5e100

    mul-int v2, p1, p2

    int-to-long v2, v2

    div-long v7, v0, v2

    .line 101
    .local v7, arrays:J
    const-wide/16 v0, 0x64

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 102
    const-wide/16 v7, 0x64

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    long-to-int v3, v7

    move v1, p1

    move v2, p2

    move v4, p3

    move/from16 v5, p5

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/spritefish/camera/memory/BAMInterface;->initialize(IIIZIZ)I

    .line 105
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    invoke-interface {v0}, Lcom/spritefish/camera/memory/BAMInterface;->getSize()I

    move-result v0

    iput v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->maxSize:I

    .line 106
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    .line 107
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbw:I

    .line 108
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbh:I

    .line 109
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbw:I

    iget v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbh:I

    mul-int v10, v0, v1

    .line 111
    .local v10, thumbsize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->maxSize:I

    if-lt v9, v0, :cond_1

    .line 116
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    new-instance v1, Lcom/spritefish/camera/memory/ByteArray;

    iget-object v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    invoke-direct {v1, v9, v2, v10}, Lcom/spritefish/camera/memory/ByteArray;-><init>(ILcom/spritefish/camera/memory/BAMInterface;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public cancelPreshotBuffers()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 161
    monitor-exit v2

    .line 167
    return-void

    .line 162
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    .line 163
    .local v0, arr:Lcom/spritefish/camera/memory/ByteArray;
    invoke-virtual {p0, v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V

    goto :goto_0

    .line 161
    .end local v0           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deallocateArrays()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    invoke-interface {v0}, Lcom/spritefish/camera/memory/BAMInterface;->dropMemory()V

    .line 121
    invoke-virtual {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->releaseArrays()V

    .line 122
    return-void
.end method

.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getFreeBuffer()Lcom/spritefish/camera/memory/ByteArray;
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    monitor-exit v1

    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    monitor-exit v1

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->maxSize:I

    return v0
.end method

.method public getNextPreshotBuffer()Lcom/spritefish/camera/memory/ByteArray;
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v3, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    if-lt v1, v3, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getOldestPreshot()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v0

    monitor-exit v2

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 188
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getFreeBuffer()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v0

    .line 195
    .local v0, res:Lcom/spritefish/camera/memory/ByteArray;
    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getOldestPreshot()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v0

    goto :goto_0

    .line 188
    .end local v0           #res:Lcom/spritefish/camera/memory/ByteArray;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPreshotQueueSize()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    return v0
.end method

.method public getPreshotStats()Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;
    .locals 11

    .prologue
    .line 56
    new-instance v6, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;

    invoke-direct {v6, p0}, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;-><init>(Lcom/spritefish/camera/memory/NewByteArrayManager;)V

    .line 57
    .local v6, r:Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;
    iget-object v8, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v8

    .line 58
    :try_start_0
    iget-object v7, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    const/4 v9, 0x1

    if-gt v7, v9, :cond_0

    .line 59
    monitor-exit v8

    .line 76
    :goto_0
    return-object v6

    .line 61
    :cond_0
    const-wide/high16 v2, -0x8000

    .line 62
    .local v2, maxtime:J
    const-wide v4, 0x7fffffffffffffffL

    .line 63
    .local v4, mintime:J
    iget-object v7, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    int-to-long v9, v7

    iput-wide v9, v6, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->shots:J

    .line 64
    iget-object v7, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/spritefish/camera/memory/ByteArray;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    sub-long v9, v2, v4

    iput-wide v9, v6, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->milliseconds:J

    .line 57
    monitor-exit v8

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/spritefish/camera/memory/ByteArray;>;"
    .end local v2           #maxtime:J
    .end local v4           #mintime:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 67
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/spritefish/camera/memory/ByteArray;>;"
    .restart local v2       #maxtime:J
    .restart local v4       #mintime:J
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    .line 68
    .local v0, ba:Lcom/spritefish/camera/memory/ByteArray;
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v9

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    .line 69
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v2

    .line 70
    :cond_3
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-lez v7, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->getTimestamp()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    goto :goto_1
.end method

.method public getPreshotThumbs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, result:Ljava/util/List;,"Ljava/util/List<[I>;"
    iget-object v3, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/spritefish/camera/memory/ByteArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 37
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 49
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 51
    :cond_1
    return-object v1

    .line 42
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spritefish/camera/memory/ByteArray;

    invoke-virtual {v2}, Lcom/spritefish/camera/memory/ByteArray;->getThumbnailPixels()[I

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/spritefish/camera/memory/ByteArray;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStats()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbh:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->thumbw:I

    return v0
.end method

.method public hasFreeBuffer()Z
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public movePreRecordsToWriteQueue(Ljava/util/concurrent/BlockingQueue;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, writeQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/spritefish/camera/memory/ByteArray;>;"
    iget-object v4, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v4

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, ar:Lcom/spritefish/camera/memory/ByteArray;
    const/4 v2, 0x0

    .line 222
    .local v2, result:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    move-object v1, v0

    if-nez v1, :cond_0

    .line 227
    monitor-exit v4

    return v2

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 225
    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public releaseArrays()V
    .locals 4

    .prologue
    .line 89
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "releasing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte arrays"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 90
    monitor-exit v2

    .line 96
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    .line 92
    .local v0, arr:Lcom/spritefish/camera/memory/ByteArray;
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->release()V

    goto :goto_0

    .line 90
    .end local v0           #arr:Lcom/spritefish/camera/memory/ByteArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V
    .locals 2
    .parameter "arr"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v1

    .line 143
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreshotQueueSize(I)V
    .locals 3
    .parameter "sz"

    .prologue
    .line 171
    iput p1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    .line 172
    iget v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    invoke-virtual {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v0

    iput v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 176
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v2, p0, Lcom/spritefish/camera/memory/NewByteArrayManager;->preshotQueueSize:I

    if-gt v0, v2, :cond_1

    .line 175
    monitor-exit v1

    .line 180
    return-void

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getOldestPreshot()Lcom/spritefish/camera/memory/ByteArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spritefish/camera/memory/NewByteArrayManager;->returnBuffer(Lcom/spritefish/camera/memory/ByteArray;)V

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
