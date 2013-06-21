.class public Lcom/stickycoding/rokon/BufferObject;
.super Ljava/lang/Object;
.source "BufferObject.java"


# instance fields
.field protected byteBuffer:Ljava/nio/ByteBuffer;

.field protected size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "3"

    if-ne v0, v1, :cond_0

    .line 36
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    iput p1, p0, Lcom/stickycoding/rokon/BufferObject;->size:I

    .line 41
    return-void

    .line 38
    :cond_0
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public constructor <init>([F)V
    .locals 2
    .parameter "floats"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "3"

    if-ne v0, v1, :cond_0

    .line 50
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/BufferObject;->updateRaw([F)V

    .line 55
    array-length v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/BufferObject;->size:I

    .line 56
    return-void

    .line 52
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public free()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/stickycoding/rokon/BufferObject;->size:I

    return v0
.end method

.method public update(FFFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-float v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 97
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-float v1, p2, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 99
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-float v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    add-float v1, p2, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v0, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    return-void
.end method

.method public updateRaw([F)V
    .locals 4
    .parameter "floats"

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/BufferObject;->byteBuffer:Ljava/nio/ByteBuffer;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
