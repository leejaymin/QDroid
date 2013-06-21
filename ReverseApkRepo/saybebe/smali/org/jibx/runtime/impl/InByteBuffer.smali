.class public Lorg/jibx/runtime/impl/InByteBuffer;
.super Ljava/lang/Object;
.source "InByteBuffer.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IInByteBuffer;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private m_buffer:[B

.field private m_isEnd:Z

.field private m_limit:I

.field private m_offset:I

.field private m_stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/InByteBuffer;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    .line 67
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 10
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    iget-boolean v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_isEnd:Z

    if-eqz v7, :cond_0

    .line 120
    :goto_0
    return v5

    .line 95
    :cond_0
    iget-object v3, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    .line 96
    .local v3, oldbuf:[B
    iget-object v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    array-length v7, v7

    if-ge v7, p1, :cond_1

    .line 97
    iget-object v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v2, v7, [B

    .line 98
    .local v2, newbuf:[B
    iput-object v2, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    .line 102
    .end local v2           #newbuf:[B
    :cond_1
    iget v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    iget v8, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    sub-int v4, v7, v8

    .line 103
    .local v4, rem:I
    if-lez v4, :cond_3

    iget v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    if-gtz v7, :cond_2

    iget-object v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    if-eq v7, v3, :cond_3

    .line 104
    :cond_2
    iget v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    iget-object v8, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    invoke-static {v3, v7, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    :cond_3
    iput v5, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    .line 109
    iput v4, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    .line 110
    :goto_1
    iget v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    if-ge v7, p1, :cond_5

    .line 111
    iget-object v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    array-length v7, v7

    iget v8, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    sub-int v1, v7, v8

    .line 112
    .local v1, max:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    iget-object v8, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    iget v9, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    invoke-virtual {v7, v8, v9, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 113
    .local v0, actual:I
    if-ltz v0, :cond_4

    .line 114
    iget v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    add-int/2addr v7, v0

    iput v7, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    goto :goto_1

    .line 116
    :cond_4
    iput-boolean v6, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_isEnd:Z

    goto :goto_0

    .end local v0           #actual:I
    .end local v1           #max:I
    :cond_5
    move v5, v6

    .line 120
    goto :goto_0
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
    .line 221
    iget-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    .line 225
    :cond_0
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_buffer:[B

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    return v0
.end method

.method public require(I)Z
    .locals 2
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    iget v1, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/InByteBuffer;->fillBuffer(I)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_isEnd:Z

    .line 129
    iput v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_limit:I

    .line 130
    iput v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    .line 132
    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/InByteBuffer;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/InByteBuffer;->reset()V

    .line 146
    iput-object p1, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_stream:Ljava/io/InputStream;

    .line 147
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 179
    iput p1, p0, Lorg/jibx/runtime/impl/InByteBuffer;->m_offset:I

    .line 180
    return-void
.end method
