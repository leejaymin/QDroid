.class public Lorg/connectbot/service/Relay;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bridge:Lorg/connectbot/service/TerminalBridge;

.field private buffer:Lde/mud/terminal/vt320;

.field private byteArray:[B

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charArray:[C

.field private charBuffer:Ljava/nio/CharBuffer;

.field private currentCharset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private transport:Lorg/connectbot/transport/AbsTransport;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/transport/AbsTransport;Lde/mud/terminal/vt320;Ljava/lang/String;)V
    .locals 0
    .parameter "bridge"
    .parameter "transport"
    .parameter "buffer"
    .parameter "encoding"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p4}, Lorg/connectbot/service/Relay;->setCharset(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lorg/connectbot/service/Relay;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 61
    iput-object p2, p0, Lorg/connectbot/service/Relay;->transport:Lorg/connectbot/transport/AbsTransport;

    .line 62
    iput-object p3, p0, Lorg/connectbot/service/Relay;->buffer:Lde/mud/terminal/vt320;

    .line 63
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/connectbot/service/Relay;->currentCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v5, 0x1000

    const/4 v2, 0x0

    .line 92
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 93
    invoke-static {v5}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    .line 96
    new-array v4, v5, [B

    .line 98
    .local v4, wideAttribute:[B
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/Relay;->byteArray:[B

    .line 99
    iget-object v1, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/Relay;->charArray:[C

    .line 103
    const/4 v7, 0x0

    .line 104
    .local v7, bytesRead:I
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    invoke-static {}, Lorg/connectbot/util/EastAsianWidth;->getInstance()Lorg/connectbot/util/EastAsianWidth;

    move-result-object v0

    .line 113
    .local v0, measurer:Lorg/connectbot/util/EastAsianWidth;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/Relay;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v6, v1, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 114
    .local v6, charWidth:I
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v8, v1, v2

    .line 115
    .local v8, bytesToRead:I
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v3, v1, v2

    .line 116
    .local v3, offset:I
    iget-object v1, p0, Lorg/connectbot/service/Relay;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteArray:[B

    invoke-virtual {v1, v2, v3, v8}, Lorg/connectbot/transport/AbsTransport;->read([BII)I

    move-result v7

    .line 118
    if-lez v7, :cond_0

    .line 119
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v1, p0, Lorg/connectbot/service/Relay;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v5, v11}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v10

    .line 121
    .local v10, result:Ljava/nio/charset/CoderResult;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    invoke-virtual {v10}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 127
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 128
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 129
    iget-object v1, p0, Lorg/connectbot/service/Relay;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    :cond_1
    iget-object v1, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 134
    iget-object v1, p0, Lorg/connectbot/service/Relay;->charArray:[C

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/connectbot/service/Relay;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v5, v5, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v6}, Lorg/connectbot/util/EastAsianWidth;->measure([CII[BLandroid/graphics/Paint;I)V

    .line 135
    iget-object v1, p0, Lorg/connectbot/service/Relay;->buffer:Lde/mud/terminal/vt320;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->charArray:[C

    const/4 v5, 0x0

    iget-object v11, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v11}, Ljava/nio/CharBuffer;->position()I

    move-result v11

    invoke-virtual {v1, v2, v4, v5, v11}, Lde/mud/terminal/vt320;->putString([C[BII)V

    .line 136
    iget-object v1, p0, Lorg/connectbot/service/Relay;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, p0, Lorg/connectbot/service/Relay;->charArray:[C

    iget-object v5, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/connectbot/service/TerminalBridge;->propagateConsoleText([CI)V

    .line 137
    iget-object v1, p0, Lorg/connectbot/service/Relay;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    iget-object v1, p0, Lorg/connectbot/service/Relay;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->redraw()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 141
    .end local v3           #offset:I
    .end local v6           #charWidth:I
    .end local v8           #bytesToRead:I
    .end local v10           #result:Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v9

    .line 142
    .local v9, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.Relay"

    const-string v2, "Problem while handling incoming data in relay thread"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return-void

    .line 121
    .end local v9           #e:Ljava/io/IOException;
    .restart local v3       #offset:I
    .restart local v6       #charWidth:I
    .restart local v8       #bytesToRead:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 6
    .parameter "encoding"

    .prologue
    .line 66
    const-string v2, "ConnectBot.Relay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changing charset to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "CP437"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v0, Lorg/apache/harmony/niochar/charset/additional/IBM437;

    const-string v2, "IBM437"

    .line 70
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "IBM437"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "CP437"

    aput-object v5, v3, v4

    .line 69
    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/niochar/charset/additional/IBM437;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 74
    .local v0, charset:Ljava/nio/charset/Charset;
    :goto_0
    iget-object v2, p0, Lorg/connectbot/service/Relay;->currentCharset:Ljava/nio/charset/Charset;

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 85
    :cond_0
    :goto_1
    return-void

    .line 72
    .end local v0           #charset:Ljava/nio/charset/Charset;
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .restart local v0       #charset:Ljava/nio/charset/Charset;
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 78
    .local v1, newCd:Ljava/nio/charset/CharsetDecoder;
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 79
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 81
    iput-object v0, p0, Lorg/connectbot/service/Relay;->currentCharset:Ljava/nio/charset/Charset;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iput-object v1, p0, Lorg/connectbot/service/Relay;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 82
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
