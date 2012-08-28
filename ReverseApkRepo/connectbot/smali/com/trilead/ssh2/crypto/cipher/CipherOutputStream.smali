.class public Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;
.super Ljava/lang/Object;
.source "CipherOutputStream.java"


# instance fields
.field final BUFF_SIZE:I

.field blockSize:I

.field bo:Ljava/io/OutputStream;

.field buffer:[B

.field currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

.field enc:[B

.field out_buffer:[B

.field out_buffer_pos:I

.field pos:I


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "tc"
    .parameter "bo"

    .prologue
    const/16 v0, 0x800

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->BUFF_SIZE:I

    .line 28
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 33
    iput-object p2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    .line 34
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V

    .line 35
    return-void
.end method

.method private internal_write([BII)V
    .locals 6
    .parameter "src"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 39
    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    .line 56
    return-void

    .line 41
    :cond_1
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    rsub-int v1, v2, 0x800

    .line 42
    .local v1, space:I
    if-le p3, v1, :cond_2

    move v0, v1

    .line 44
    .local v0, copy:I
    :goto_1
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    add-int/2addr p2, v0

    .line 47
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 48
    sub-int/2addr p3, v0

    .line 50
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    if-lt v2, v5, :cond_0

    .line 52
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    iput v4, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    goto :goto_0

    .end local v0           #copy:I
    :cond_2
    move v0, p3

    .line 42
    goto :goto_1
.end method

.method private writeBlock()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    invoke-direct {p0, v1, v6, v2}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    .line 102
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 103
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error while decrypting block."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method


# virtual methods
.method public changeCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;)V
    .locals 1
    .parameter "bc"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->currentCipher:Lcom/trilead/ssh2/crypto/cipher/BlockCipher;

    .line 84
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    .line 85
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    .line 86
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->enc:[B

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 88
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

    .line 70
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FATAL: cannot flush since crypto buffer is not aligned."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer:[B

    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    iput v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->out_buffer_pos:I

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->bo:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 79
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "src"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :cond_0
    :goto_0
    if-gtz p3, :cond_1

    .line 120
    return-void

    .line 109
    :cond_1
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    sub-int v0, v2, v3

    .line 110
    .local v0, avail:I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 112
    .local v1, copy:I
    iget-object v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->buffer:[B

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    .line 114
    add-int/2addr p2, v1

    .line 115
    sub-int/2addr p3, v1

    .line 117
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    iget v3, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->blockSize:I

    if-lt v2, v3, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->writeBlock()V

    goto :goto_0
.end method

.method public writePlain([BII)V
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->pos:I

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write plain since crypto buffer is not aligned."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/cipher/CipherOutputStream;->internal_write([BII)V

    .line 141
    return-void
.end method
