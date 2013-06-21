.class public Lorg/tf/gl/GLIndexBufferUS;
.super Ljava/lang/Object;
.source "GLIndexBufferUS.java"


# instance fields
.field private m_bound:Z

.field private m_buffer:I

.field private m_data:Ljava/nio/ByteBuffer;

.field private m_mode:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 2
    .parameter "mode"
    .parameter "data"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/tf/gl/GLIndexBufferUS;->m_mode:I

    .line 28
    iput-object p2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    .line 29
    iget-object v0, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    return-void
.end method


# virtual methods
.method public beginRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/tf/gl/GLIndexBufferUS;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 61
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 63
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v2, 0x8893

    iget v3, p0, Lorg/tf/gl/GLIndexBufferUS;->m_buffer:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 65
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const v5, 0x8893

    .line 33
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 35
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    invoke-static {v1}, Lorg/tf/gl/GLHelpers;->generateBuffer(Ljavax/microedition/khronos/opengles/GL11;)I

    move-result v2

    iput v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_buffer:I

    .line 37
    iget v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_buffer:I

    .line 36
    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 40
    iget-object v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    .line 41
    const v4, 0x88e4

    .line 38
    invoke-interface {v1, v5, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 43
    const/4 v2, 0x0

    .line 42
    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 45
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_bound:Z

    .line 46
    return-void
.end method

.method public doRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v5, 0x1403

    .line 68
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 71
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_mode:I

    .line 72
    iget-object v3, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    .line 70
    invoke-interface {v1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 78
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    return-void

    .line 75
    :cond_0
    iget v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_mode:I

    .line 76
    iget-object v3, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/tf/gl/GLIndexBufferUS;->m_data:Ljava/nio/ByteBuffer;

    .line 74
    invoke-interface {p1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public endRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 81
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 83
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v2, 0x8893

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 85
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    return-void
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/tf/gl/GLIndexBufferUS;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/tf/gl/GLIndexBufferUS;->doRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 90
    invoke-virtual {p0, p1}, Lorg/tf/gl/GLIndexBufferUS;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 91
    return-void
.end method

.method public unbind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 49
    iget-boolean v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_bound:Z

    if-nez v2, :cond_0

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 54
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_buffer:I

    invoke-static {v1, v2}, Lorg/tf/gl/GLHelpers;->deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 56
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/tf/gl/GLIndexBufferUS;->m_bound:Z

    goto :goto_0
.end method
