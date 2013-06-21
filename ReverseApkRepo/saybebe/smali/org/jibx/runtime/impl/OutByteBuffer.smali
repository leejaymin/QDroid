.class public Lorg/jibx/runtime/impl/OutByteBuffer;
.super Ljava/lang/Object;
.source "OutByteBuffer.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IOutByteBuffer;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private m_buffer:[B

.field private m_offset:I

.field private m_stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/OutByteBuffer;-><init>(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    .line 61
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/OutByteBuffer;->flush()V

    .line 202
    iget-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    .line 205
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    iget v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    iget v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    iput v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    .line 189
    :cond_0
    return-void
.end method

.method public free(II)V
    .locals 6
    .parameter "reserve"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_0

    .line 145
    iget v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    if-ge p1, v2, :cond_2

    .line 148
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    invoke-virtual {v2, v3, v5, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    iget v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    sub-int/2addr v2, p1

    iput v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    .line 150
    add-int v0, p1, p2

    .line 151
    .local v0, need:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v1, v2, [B

    .line 155
    .local v1, newbuf:[B
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    iget v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    invoke-static {v2, p1, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object v1, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    .line 176
    .end local v0           #need:I
    .end local v1           #newbuf:[B
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0       #need:I
    :cond_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    iget-object v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    iget v4, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    invoke-static {v2, p1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 168
    .end local v0           #need:I
    :cond_2
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    iget v4, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    array-length v2, v2

    if-le p2, v2, :cond_3

    .line 170
    iget-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    .line 172
    :cond_3
    iput v5, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    goto :goto_0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_buffer:[B

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    .line 76
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 123
    iput p1, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_offset:I

    .line 124
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/OutByteBuffer;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/OutByteBuffer;->reset()V

    .line 90
    iput-object p1, p0, Lorg/jibx/runtime/impl/OutByteBuffer;->m_stream:Ljava/io/OutputStream;

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
