.class public abstract Lorg/jibx/runtime/impl/StreamWriterBase;
.super Lorg/jibx/runtime/impl/XMLWriterBase;
.source "StreamWriterBase.java"


# instance fields
.field protected final m_ampEntityBytes:[B

.field private final m_baseWriter:Lorg/jibx/runtime/impl/StreamWriterBase;

.field protected m_buffer:[B

.field private m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

.field protected final m_cdataEndBytes:[B

.field protected final m_cdataStartBytes:[B

.field private final m_encodingName:Ljava/lang/String;

.field protected m_extensionBytes:[[[B

.field protected m_fillOffset:I

.field protected final m_gtEntityBytes:[B

.field private m_indent:Z

.field private m_indentBase:I

.field private m_indentPerLevel:I

.field private m_indentSequence:[B

.field protected final m_ltEntityBytes:[B

.field protected m_prefixBytes:[[B

.field protected final m_quotEntityBytes:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "enc"
    .parameter "uris"

    .prologue
    .line 95
    invoke-direct {p0, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;-><init>([Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_baseWriter:Lorg/jibx/runtime/impl/StreamWriterBase;

    .line 98
    array-length v1, p2

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    .line 100
    :try_start_0
    const-string v1, "&quot;"

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_quotEntityBytes:[B

    .line 101
    const-string v1, "&amp;"

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ampEntityBytes:[B

    .line 102
    const-string v1, "&gt;"

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_gtEntityBytes:[B

    .line 103
    const-string v1, "&lt;"

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ltEntityBytes:[B

    .line 104
    const-string v1, "<![CDATA["

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataStartBytes:[B

    .line 105
    const-string v1, "]]>"

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataEndBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Internal error - unsupported encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/jibx/runtime/impl/StreamWriterBase;[Ljava/lang/String;)V
    .locals 4
    .parameter "base"
    .parameter "uris"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/XMLWriterBase;-><init>(Lorg/jibx/runtime/impl/XMLWriterBase;[Ljava/lang/String;)V

    .line 123
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_baseWriter:Lorg/jibx/runtime/impl/StreamWriterBase;

    .line 125
    array-length v1, p2

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    .line 126
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    .line 127
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    .line 128
    iget v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    iput v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 129
    iget-boolean v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indent:Z

    iput-boolean v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indent:Z

    .line 130
    iget v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    iput v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    .line 131
    iget v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentPerLevel:I

    iput v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentPerLevel:I

    .line 132
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    .line 133
    iget-object v0, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    .line 134
    .local v0, extbytes:[[[B
    if-eqz v0, :cond_0

    .line 135
    array-length v1, v0

    new-array v1, v1, [[[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    .line 136
    iget-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_0
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_quotEntityBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_quotEntityBytes:[B

    .line 140
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ampEntityBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ampEntityBytes:[B

    .line 141
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_gtEntityBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_gtEntityBytes:[B

    .line 142
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ltEntityBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_ltEntityBytes:[B

    .line 143
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataStartBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataStartBytes:[B

    .line 144
    iget-object v1, p1, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataEndBytes:[B

    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_cdataEndBytes:[B

    .line 145
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->flush()V

    .line 428
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IOutByteBuffer;->finish()V

    .line 429
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->flagContent()V

    .line 412
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    iget v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    invoke-interface {v0, v1}, Lorg/jibx/runtime/impl/IOutByteBuffer;->setOffset(I)V

    .line 413
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IOutByteBuffer;->flush()V

    .line 414
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IOutByteBuffer;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 415
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_baseWriter:Lorg/jibx/runtime/impl/StreamWriterBase;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_baseWriter:Lorg/jibx/runtime/impl/StreamWriterBase;

    iget v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    iput v1, v0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 418
    :cond_0
    return-void
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    return-object v0
.end method

.method public indent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/StreamWriterBase;->indent(I)V

    .line 403
    return-void
.end method

.method public indent(I)V
    .locals 8
    .parameter "bias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 371
    iget-boolean v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indent:Z

    if-eqz v4, :cond_2

    .line 372
    iget v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->getNestingDepth()I

    move-result v5

    add-int/2addr v5, p1

    iget v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentPerLevel:I

    mul-int/2addr v5, v6

    add-int v2, v4, v5

    .line 374
    .local v2, length:I
    if-lez v2, :cond_2

    .line 375
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->flagContent()V

    .line 376
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    array-length v4, v4

    if-le v2, v4, :cond_1

    .line 377
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 379
    .local v3, use:I
    new-array v0, v3, [B

    .line 380
    .local v0, grow:[B
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    iget-object v5, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    array-length v5, v5

    invoke-static {v4, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    array-length v1, v4

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 383
    iget v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    aget-byte v4, v0, v4

    aput-byte v4, v0, v1

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    iput-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    .line 387
    .end local v0           #grow:[B
    .end local v1           #i:I
    .end local v3           #use:I
    :cond_1
    invoke-virtual {p0, v2}, Lorg/jibx/runtime/impl/StreamWriterBase;->makeSpace(I)V

    .line 388
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    iget-object v5, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    iget v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    invoke-static {v4, v7, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iget v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 393
    .end local v2           #length:I
    :cond_2
    return-void
.end method

.method protected makeSpace(I)V
    .locals 2
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    iget v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    invoke-interface {v0, v1}, Lorg/jibx/runtime/impl/IOutByteBuffer;->setOffset(I)V

    .line 250
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    iget v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    invoke-interface {v0, v1, p1}, Lorg/jibx/runtime/impl/IOutByteBuffer;->free(II)V

    .line 251
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IOutByteBuffer;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    .line 252
    iget-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    invoke-interface {v0}, Lorg/jibx/runtime/impl/IOutByteBuffer;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 254
    :cond_0
    return-void
.end method

.method public popExtensionNamespaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 351
    invoke-super {p0}, Lorg/jibx/runtime/impl/XMLWriterBase;->popExtensionNamespaces()V

    .line 352
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    array-length v0, v2

    .line 353
    .local v0, length:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 354
    const/4 v2, 0x0

    check-cast v2, [[[B

    iput-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    .line 360
    :goto_0
    return-void

    .line 356
    :cond_0
    add-int/lit8 v2, v0, -0x1

    new-array v1, v2, [[[B

    .line 357
    .local v1, shrink:[[[B
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    iput-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    goto :goto_0
.end method

.method public pushExtensionNamespaces([Ljava/lang/String;)V
    .locals 5
    .parameter "uris"

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-super {p0, p1}, Lorg/jibx/runtime/impl/XMLWriterBase;->pushExtensionNamespaces([Ljava/lang/String;)V

    .line 334
    array-length v3, p1

    new-array v1, v3, [[B

    .line 335
    .local v1, items:[[B
    iget-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    if-nez v3, :cond_0

    .line 336
    const/4 v3, 0x1

    new-array v3, v3, [[[B

    aput-object v1, v3, v4

    iput-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    .line 344
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    array-length v2, v3

    .line 339
    .local v2, length:I
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [[[B

    .line 340
    .local v0, grow:[[[B
    iget-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    aput-object v1, v0, v2

    .line 342
    iput-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    goto :goto_0
.end method

.method public setBuffer(Lorg/jibx/runtime/impl/IOutByteBuffer;)V
    .locals 1
    .parameter "buff"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_byteBuffer:Lorg/jibx/runtime/impl/IOutByteBuffer;

    .line 154
    invoke-interface {p1}, Lorg/jibx/runtime/impl/IOutByteBuffer;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    .line 155
    invoke-interface {p1}, Lorg/jibx/runtime/impl/IOutByteBuffer;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 156
    return-void
.end method

.method public setIndentSpaces(ILjava/lang/String;C)V
    .locals 9
    .parameter "count"
    .parameter "newline"
    .parameter "indent"

    .prologue
    const/4 v6, 0x0

    .line 209
    if-ltz p1, :cond_2

    .line 211
    if-nez p2, :cond_0

    .line 212
    :try_start_0
    const-string p2, "\n"

    .line 214
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indent:Z

    .line 215
    iget-object v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 216
    .local v0, base:[B
    array-length v6, v0

    iput v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    .line 217
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [C

    const/4 v8, 0x0

    aput-char p3, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iget-object v7, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 219
    .local v5, per:[B
    array-length v6, v5

    mul-int/2addr v6, p1

    iput v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentPerLevel:I

    .line 220
    iget v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    iget v7, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentPerLevel:I

    mul-int/lit8 v7, v7, 0xa

    add-int v4, v6, v7

    .line 221
    .local v4, length:I
    new-array v6, v4, [B

    iput-object v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    .line 222
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 224
    iget-object v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    aget-byte v7, v0, v2

    aput-byte v7, v6, v2

    .line 222
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentBase:I

    sub-int v6, v2, v6

    array-length v7, v5

    rem-int v3, v6, v7

    .line 227
    .local v3, index:I
    iget-object v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indentSequence:[B

    aget-byte v7, v5, v3

    aput-byte v7, v6, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 230
    .end local v0           #base:[B
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #length:I
    .end local v5           #per:[B
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_encodingName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " not recognized by JVM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 235
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iput-boolean v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_indent:Z

    .line 237
    :cond_3
    return-void
.end method

.method public setNamespaceUris([Ljava/lang/String;)V
    .locals 5
    .parameter "uris"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->reset()V

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, diff:Z
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/StreamWriterBase;->getNamespaces()[Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, olds:[Ljava/lang/String;
    array-length v3, v2

    array-length v4, p1

    if-ne v3, v4, :cond_3

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 181
    aget-object v3, p1, v1

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    const/4 v0, 0x1

    .line 189
    .end local v1           #i:I
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StreamWriterBase;->internalSetUris([Ljava/lang/String;)V

    .line 191
    array-length v3, p1

    new-array v3, v3, [[B

    iput-object v3, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    .line 192
    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/jibx/runtime/impl/StreamWriterBase;->defineNamespace(ILjava/lang/String;)V

    .line 193
    const/4 v3, 0x1

    const-string v4, "xml"

    invoke-virtual {p0, v3, v4}, Lorg/jibx/runtime/impl/StreamWriterBase;->defineNamespace(ILjava/lang/String;)V

    .line 195
    :cond_1
    return-void

    .line 180
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1           #i:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected undefineNamespace(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 263
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    aput-object v3, v2, p1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixes:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr p1, v2

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 267
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    aget-object v2, v2, v0

    array-length v1, v2

    .line 268
    .local v1, length:I
    if-ge p1, v1, :cond_2

    .line 269
    iget-object v2, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    aget-object v2, v2, v0

    aput-object v3, v2, p1

    goto :goto_0

    .line 272
    :cond_2
    sub-int/2addr p1, v1

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0           #i:I
    .end local v1           #length:I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Index out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected writeEntity([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 323
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    array-length v2, p1

    invoke-static {p1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    array-length v0, p1

    add-int/2addr v0, p2

    return v0
.end method

.method protected writePrefix(I)V
    .locals 8
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, bytes:[B
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/StreamWriterBase;->translateNamespace(I)I

    move-result p1

    .line 291
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    array-length v4, v4

    if-ge p1, v4, :cond_2

    .line 292
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixBytes:[[B

    aget-object v0, v4, p1

    .line 305
    :cond_0
    :goto_0
    array-length v4, v0

    if-lez v4, :cond_1

    .line 306
    array-length v4, v0

    invoke-virtual {p0, v4}, Lorg/jibx/runtime/impl/StreamWriterBase;->makeSpace(I)V

    .line 307
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_buffer:[B

    iget v6, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    array-length v7, v0

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    array-length v5, v0

    add-int/2addr v4, v5

    iput v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_fillOffset:I

    .line 313
    :cond_1
    return-void

    .line 293
    :cond_2
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_prefixes:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr p1, v4

    .line 295
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 296
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    aget-object v4, v4, v2

    array-length v3, v4

    .line 297
    .local v3, length:I
    if-ge p1, v3, :cond_3

    .line 298
    iget-object v4, p0, Lorg/jibx/runtime/impl/StreamWriterBase;->m_extensionBytes:[[[B

    aget-object v4, v4, v2

    aget-object v0, v4, p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 301
    :cond_3
    sub-int/2addr p1, v3

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v2           #i:I
    .end local v3           #length:I
    :catch_0
    move-exception v1

    .line 311
    .local v1, ex:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Namespace URI has not been declared."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
