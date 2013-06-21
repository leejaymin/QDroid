.class public Lorg/tf/gl/GLBufferObject;
.super Ljava/lang/Object;
.source "GLBufferObject.java"


# instance fields
.field private m_bound:Z

.field private m_buffer:I

.field private m_data:Ljava/nio/ByteBuffer;

.field private m_dataType:I

.field private m_pointSize:I

.field private m_type:I


# direct methods
.method private constructor <init>(IIILjava/nio/ByteBuffer;)V
    .locals 2
    .parameter "type"
    .parameter "dataType"
    .parameter "pointSize"
    .parameter "data"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/tf/gl/GLBufferObject;->m_type:I

    .line 102
    iput p2, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    .line 103
    iput p3, p0, Lorg/tf/gl/GLBufferObject;->m_pointSize:I

    .line 104
    iput-object p4, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    .line 105
    iget-object v0, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    return-void
.end method

.method public static createNormals(ILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 35
    new-instance v0, Lorg/tf/gl/GLBufferObject;

    const v1, 0x8075

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2, p1}, Lorg/tf/gl/GLBufferObject;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createTexcoords(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;
    .locals 2
    .parameter "size"
    .parameter "type"
    .parameter "data"

    .prologue
    .line 31
    new-instance v0, Lorg/tf/gl/GLBufferObject;

    const v1, 0x8078

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/tf/gl/GLBufferObject;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static createVertices(IILjava/nio/ByteBuffer;)Lorg/tf/gl/GLBufferObject;
    .locals 2
    .parameter "size"
    .parameter "type"
    .parameter "data"

    .prologue
    .line 27
    new-instance v0, Lorg/tf/gl/GLBufferObject;

    const v1, 0x8074

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/tf/gl/GLBufferObject;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const v5, 0x8892

    .line 39
    iget-boolean v2, p0, Lorg/tf/gl/GLBufferObject;->m_bound:Z

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/tf/gl/GLBufferObject;->m_bound:Z

    .line 43
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 45
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    invoke-static {v1}, Lorg/tf/gl/GLHelpers;->generateBuffer(Ljavax/microedition/khronos/opengles/GL11;)I

    move-result v2

    iput v2, p0, Lorg/tf/gl/GLBufferObject;->m_buffer:I

    .line 46
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_buffer:I

    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 47
    iget-object v2, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    const v4, 0x88e4

    invoke-interface {v1, v5, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 48
    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public set(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const v4, 0x8892

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lorg/tf/gl/GLBufferObject;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 68
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 70
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_buffer:I

    invoke-interface {v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 71
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_type:I

    packed-switch v2, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    invoke-interface {v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 96
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :goto_1
    return-void

    .line 73
    .restart local v1       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :pswitch_1
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_pointSize:I

    iget v3, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    invoke-interface {v1, v2, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_pointSize:I

    iget v3, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    invoke-interface {v1, v2, v3, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    goto :goto_0

    .line 79
    :pswitch_3
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    invoke-interface {v1, v2, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    goto :goto_0

    .line 84
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_type:I

    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 86
    :pswitch_5
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_pointSize:I

    iget v3, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    iget-object v4, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    goto :goto_1

    .line 89
    :pswitch_6
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_pointSize:I

    iget v3, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    iget-object v4, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto :goto_1

    .line 92
    :pswitch_7
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_dataType:I

    iget-object v3, p0, Lorg/tf/gl/GLBufferObject;->m_data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x8074
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public unbind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-boolean v2, p0, Lorg/tf/gl/GLBufferObject;->m_bound:Z

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-boolean v3, p0, Lorg/tf/gl/GLBufferObject;->m_bound:Z

    .line 57
    if-eqz p1, :cond_1

    .line 58
    invoke-static {p1}, Lorg/tf/gl/GLHelpers;->hasVBO(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 60
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v2, p0, Lorg/tf/gl/GLBufferObject;->m_buffer:I

    invoke-static {v1, v2}, Lorg/tf/gl/GLHelpers;->deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 63
    .end local v1           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_1
    iput v3, p0, Lorg/tf/gl/GLBufferObject;->m_buffer:I

    goto :goto_0
.end method
