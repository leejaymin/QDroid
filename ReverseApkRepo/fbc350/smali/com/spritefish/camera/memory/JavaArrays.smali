.class public Lcom/spritefish/camera/memory/JavaArrays;
.super Ljava/lang/Object;
.source "JavaArrays.java"

# interfaces
.implements Lcom/spritefish/camera/memory/BAMInterface;


# instance fields
.field arraylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dropMemory()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method public getCopyBuffer()[B
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData(I[B)[B
    .locals 1
    .parameter "bufferId"
    .parameter "data"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public initialize(IIIZIZ)I
    .locals 15
    .parameter "width"
    .parameter "height"
    .parameter "maxBuffers"
    .parameter "blackWhite"
    .parameter "memModifier"
    .parameter "highRes"

    .prologue
    .line 14
    if-eqz p4, :cond_4

    const/4 v2, 0x1

    .line 15
    .local v2, bytesPrPixel:I
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 18
    const/16 v11, -0x64

    move/from16 v0, p5

    if-ne v0, v11, :cond_0

    .line 19
    const/16 p3, 0x3e8

    .line 20
    :cond_0
    if-eqz p6, :cond_5

    const/16 v9, 0xa

    .line 21
    .local v9, needFreeNum:I
    :goto_1
    add-int/lit8 v9, p5, 0xa

    .line 22
    const/4 v7, 0x0

    .line 23
    .local v7, memOut:Z
    const/4 v8, 0x0

    .line 24
    .local v8, memSafeOut:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    .line 25
    mul-int v11, p1, p2

    mul-int v10, v11, v2

    .line 26
    .local v10, singleSize:I
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    iget-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v0, p3

    if-lt v11, v0, :cond_6

    .line 43
    :cond_2
    if-eqz v7, :cond_3

    .line 44
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    const/4 v11, 0x4

    if-lt v4, v11, :cond_9

    .line 51
    .end local v4           #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 53
    iget-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    return v11

    .line 14
    .end local v2           #bytesPrPixel:I
    .end local v7           #memOut:Z
    .end local v8           #memSafeOut:Z
    .end local v9           #needFreeNum:I
    .end local v10           #singleSize:I
    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    .line 20
    .restart local v2       #bytesPrPixel:I
    :cond_5
    const/16 v9, 0xa

    goto :goto_1

    .line 28
    .restart local v7       #memOut:Z
    .restart local v8       #memSafeOut:Z
    .restart local v9       #needFreeNum:I
    .restart local v10       #singleSize:I
    :cond_6
    :try_start_0
    new-array v1, v10, [B

    .line 29
    .local v1, buffer:[B
    iget-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v11, "instaburst"

    const-string v12, "allocated picture"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v11, "instaburst"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Memory tot:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " free:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " max:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    sub-long v5, v11, v13

    .line 33
    .local v5, leftMem:J
    mul-int v11, v9, v10

    int-to-long v11, v11

    cmp-long v11, v5, v11

    if-ltz v11, :cond_7

    const-wide/32 v11, 0xa00000

    cmp-long v11, v5, v11

    if-gez v11, :cond_8

    .line 34
    :cond_7
    const/4 v8, 0x1

    .line 35
    :cond_8
    const/16 v11, -0x64

    move/from16 v0, p5

    if-ne v0, v11, :cond_1

    const-wide/32 v11, 0x1400000

    cmp-long v11, v5, v11

    if-gez v11, :cond_1

    .line 36
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 37
    .end local v1           #buffer:[B
    .end local v5           #leftMem:J
    :catch_0
    move-exception v3

    .line 38
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v11, "instaburst"

    const-string v12, "failed allocation - start release cycle"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 45
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #i:I
    :cond_9
    iget-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 46
    iget-object v11, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method public putData(I[B)V
    .locals 3
    .parameter "bufferId"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/spritefish/camera/memory/JavaArrays;->arraylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 60
    .local v0, dest:[B
    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-void
.end method
