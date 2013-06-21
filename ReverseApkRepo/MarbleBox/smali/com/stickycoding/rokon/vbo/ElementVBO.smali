.class public Lcom/stickycoding/rokon/vbo/ElementVBO;
.super Lcom/stickycoding/rokon/vbo/VBO;
.source "ElementVBO.java"


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/BufferObject;I)V
    .locals 0
    .parameter "bufferObject"
    .parameter "drawType"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/stickycoding/rokon/vbo/VBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 28
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v2, v4, [I

    .line 29
    .local v2, nameArray:[I
    invoke-interface {v1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 30
    aget v3, v2, v3

    iput v3, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->bufferIndex:I

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding new element VBO idx="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->bufferIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 32
    iget v3, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->bufferIndex:I

    invoke-static {v3}, Lcom/stickycoding/rokon/GLHelper;->bindElementBuffer(I)V

    .line 33
    const v3, 0x8893

    iget-object v4, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v5}, Lcom/stickycoding/rokon/BufferObject;->get()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget v6, p0, Lcom/stickycoding/rokon/vbo/ElementVBO;->drawType:I

    invoke-interface {v1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 34
    const-string v3, "Element VBO Added"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 35
    return-void
.end method
