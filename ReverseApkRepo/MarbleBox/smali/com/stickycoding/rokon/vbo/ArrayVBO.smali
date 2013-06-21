.class public Lcom/stickycoding/rokon/vbo/ArrayVBO;
.super Lcom/stickycoding/rokon/vbo/VBO;
.source "ArrayVBO.java"


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/BufferObject;I)V
    .locals 0
    .parameter "bufferObject"
    .parameter "drawType"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/stickycoding/rokon/vbo/VBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 26
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 27
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v2, v4, [I

    .line 28
    .local v2, nameArray:[I
    invoke-interface {v1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 29
    aget v3, v2, v3

    iput v3, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->bufferIndex:I

    .line 30
    iget v3, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->bufferIndex:I

    invoke-static {v3, v4}, Lcom/stickycoding/rokon/GLHelper;->bindBuffer(IZ)V

    .line 31
    const v3, 0x8892

    iget-object v4, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v5}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget v6, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->drawType:I

    invoke-interface {v1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 32
    iget v3, p0, Lcom/stickycoding/rokon/vbo/ArrayVBO;->bufferIndex:I

    invoke-virtual {p0, v3}, Lcom/stickycoding/rokon/vbo/ArrayVBO;->setLoaded(I)V

    .line 33
    invoke-static {p0}, Lcom/stickycoding/rokon/VBOManager;->add(Lcom/stickycoding/rokon/vbo/VBO;)V

    .line 34
    return-void
.end method
