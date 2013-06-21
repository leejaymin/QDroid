.class public Lcom/spritefish/camera/memory/BufferManager;
.super Ljava/lang/Object;
.source "BufferManager.java"


# static fields
.field public static final NUM_PRESHOT_BUF:I = 0x64

.field public static final PRESHOT_THUMB_DIV:I = 0x8


# instance fields
.field bufferLock:Ljava/util/concurrent/locks/Lock;

.field private freeBufferSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/camera/memory/BufferSet;",
            ">;"
        }
    .end annotation
.end field

.field preshutThumbIndex:I

.field private thumbh:I

.field private thumbw:I


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .parameter "numberOfBufferSets"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/spritefish/camera/memory/BufferManager;->preshutThumbIndex:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 39
    div-int/lit8 v1, p2, 0x8

    iput v1, p0, Lcom/spritefish/camera/memory/BufferManager;->thumbw:I

    .line 40
    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lcom/spritefish/camera/memory/BufferManager;->thumbh:I

    .line 43
    return-void

    .line 36
    :cond_0
    const-string v1, "insta"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allocation of bufferset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    new-instance v2, Lcom/spritefish/camera/memory/BufferSet;

    invoke-direct {v2, p2, p3}, Lcom/spritefish/camera/memory/BufferSet;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBuffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/camera/memory/BufferSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPreshotIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/spritefish/camera/memory/BufferManager;->preshutThumbIndex:I

    return v0
.end method

.method public getFreeBufferSet()Lcom/spritefish/camera/memory/BufferSet;
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/camera/memory/BufferSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .local v0, b:Lcom/spritefish/camera/memory/BufferSet;
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 76
    .end local v0           #b:Lcom/spritefish/camera/memory/BufferSet;
    :catchall_0
    move-exception v1

    .line 77
    iget-object v2, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 78
    throw v1
.end method

.method public getNextPreshotIndex()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/spritefish/camera/memory/BufferManager;->preshutThumbIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/spritefish/camera/memory/BufferManager;->preshutThumbIndex:I

    .line 49
    iget v0, p0, Lcom/spritefish/camera/memory/BufferManager;->preshutThumbIndex:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/spritefish/camera/memory/BufferManager;->thumbh:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/spritefish/camera/memory/BufferManager;->thumbw:I

    return v0
.end method

.method public returnBufferSet(Lcom/spritefish/camera/memory/BufferSet;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/spritefish/camera/memory/BufferManager;->freeBufferSets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/spritefish/camera/memory/BufferManager;->bufferLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    throw v0
.end method
