.class public Lcom/spritefish/camera/memory/ByteArrayManager;
.super Ljava/lang/Object;
.source "ByteArrayManager.java"


# instance fields
.field byteArrays:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/spritefish/camera/memory/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field maxSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->maxSize:I

    .line 14
    return-void
.end method


# virtual methods
.method public allocateArrays(IIZZI)I
    .locals 17
    .parameter "width"
    .parameter "height"
    .parameter "blackWhite"
    .parameter "highRes"
    .parameter "memModifier"

    .prologue
    .line 30
    if-eqz p3, :cond_4

    const/4 v2, 0x1

    .line 31
    .local v2, bytesPrPixel:I
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 33
    if-eqz p3, :cond_5

    const/16 v7, 0x32

    .line 34
    .local v7, maxBuffers:I
    :goto_1
    const/16 v13, -0x64

    move/from16 v0, p5

    if-ne v0, v13, :cond_0

    .line 35
    const/16 v7, 0x3e8

    .line 36
    :cond_0
    if-eqz p4, :cond_6

    const/16 v10, 0xa

    .line 37
    .local v10, needFreeNum:I
    :goto_2
    add-int/lit8 v10, p5, 0xa

    .line 38
    const/4 v8, 0x0

    .line 39
    .local v8, memOut:Z
    const/4 v9, 0x0

    .line 40
    .local v9, memSafeOut:Z
    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    .line 41
    mul-int v13, p1, p2

    mul-int v11, v13, v2

    .line 42
    .local v11, singleSize:I
    :cond_1
    :goto_3
    if-nez v9, :cond_2

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    if-lt v13, v7, :cond_7

    .line 61
    :cond_2
    if-eqz v8, :cond_3

    .line 62
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/4 v13, 0x4

    if-lt v4, v13, :cond_a

    .line 66
    .end local v4           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->maxSize:I

    .line 69
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    return v13

    .line 30
    .end local v2           #bytesPrPixel:I
    .end local v7           #maxBuffers:I
    .end local v8           #memOut:Z
    .end local v9           #memSafeOut:Z
    .end local v10           #needFreeNum:I
    .end local v11           #singleSize:I
    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    .line 33
    .restart local v2       #bytesPrPixel:I
    :cond_5
    const/16 v7, 0x14

    goto :goto_1

    .line 36
    .restart local v7       #maxBuffers:I
    :cond_6
    const/16 v10, 0xa

    goto :goto_2

    .line 44
    .restart local v8       #memOut:Z
    .restart local v9       #memSafeOut:Z
    .restart local v10       #needFreeNum:I
    .restart local v11       #singleSize:I
    :cond_7
    :try_start_0
    div-int/lit8 v13, p1, 0x8

    div-int/lit8 v14, p2, 0x8

    mul-int v12, v13, v14

    .line 46
    .local v12, thumbsize:I
    new-instance v1, Lcom/spritefish/camera/memory/ByteArray;

    const/4 v13, 0x0

    invoke-direct {v1, v11, v13, v12}, Lcom/spritefish/camera/memory/ByteArray;-><init>(ILcom/spritefish/camera/memory/BAMInterface;I)V

    .line 47
    .local v1, arr:Lcom/spritefish/camera/memory/ByteArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v13, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v13, "instaburst"

    const-string v14, "allocated picture"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v13, "instaburst"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Memory tot:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " free:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " max:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    sub-long v5, v13, v15

    .line 51
    .local v5, leftMem:J
    mul-int v13, v10, v11

    int-to-long v13, v13

    cmp-long v13, v5, v13

    if-ltz v13, :cond_8

    const-wide/32 v13, 0xa00000

    cmp-long v13, v5, v13

    if-gez v13, :cond_9

    .line 52
    :cond_8
    const/4 v9, 0x1

    .line 53
    :cond_9
    const/16 v13, -0x64

    move/from16 v0, p5

    if-ne v0, v13, :cond_1

    const-wide/32 v13, 0x1400000

    cmp-long v13, v5, v13

    if-gez v13, :cond_1

    .line 54
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 55
    .end local v1           #arr:Lcom/spritefish/camera/memory/ByteArray;
    .end local v5           #leftMem:J
    .end local v12           #thumbsize:I
    :catch_0
    move-exception v3

    .line 56
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v13, "instaburst"

    const-string v14, "failed allocation - start release cycle"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 63
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 62
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method public getCurrentSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getFreeBuffer()Lcom/spritefish/camera/memory/ByteArray;
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    monitor-exit v1

    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    monitor-exit v1

    goto :goto_0

    .line 77
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
    .line 98
    iget v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->maxSize:I

    return v0
.end method

.method public getStats()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFreeBuffer()Z
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

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

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseArrays()V
    .locals 4

    .prologue
    .line 19
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "releasing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

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

    .line 20
    iget-object v2, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 24
    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 20
    monitor-exit v2

    .line 26
    return-void

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/ByteArray;

    .line 22
    .local v0, arr:Lcom/spritefish/camera/memory/ByteArray;
    invoke-virtual {v0}, Lcom/spritefish/camera/memory/ByteArray;->release()V

    goto :goto_0

    .line 20
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
    .line 91
    iget-object v1, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArrayManager;->byteArrays:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v1

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
