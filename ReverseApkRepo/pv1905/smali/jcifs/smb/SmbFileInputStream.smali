.class public Ljcifs/smb/SmbFileInputStream;
.super Ljava/io/InputStream;
.source "SmbFileInputStream.java"


# instance fields
.field private access:I

.field file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private readSize:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    .line 68
    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;I)V
    .locals 3
    .parameter "file"
    .parameter "openFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 70
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    .line 71
    iput-object p1, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 72
    and-int v0, p2, v1

    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    .line 73
    ushr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    .line 74
    iget v0, p1, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 75
    iget v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 76
    iget v0, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    and-int/lit8 v0, v0, -0x51

    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    .line 80
    :goto_0
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v0, v0, -0x46

    .line 81
    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 v1, v1, -0x46

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    .line 82
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 217
    iget-object v5, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v5, v5, Ljcifs/smb/SmbFile;->type:I

    const/16 v6, 0x10

    if-eq v5, v6, :cond_0

    .line 234
    :goto_0
    return v4

    .line 222
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    check-cast v0, Ljcifs/smb/SmbNamedPipe;

    .line 223
    .local v0, pipe:Ljcifs/smb/SmbNamedPipe;
    iget-object v5, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const/16 v6, 0x20

    iget v7, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/high16 v8, 0xff

    and-int/2addr v7, v8

    const/16 v8, 0x80

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 225
    new-instance v1, Ljcifs/smb/TransPeekNamedPipe;

    iget-object v5, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v5, v5, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v6, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v6, v6, Ljcifs/smb/SmbFile;->fid:I

    invoke-direct {v1, v5, v6}, Ljcifs/smb/TransPeekNamedPipe;-><init>(Ljava/lang/String;I)V

    .line 226
    .local v1, req:Ljcifs/smb/TransPeekNamedPipe;
    new-instance v2, Ljcifs/smb/TransPeekNamedPipeResponse;

    invoke-direct {v2, v0}, Ljcifs/smb/TransPeekNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 228
    .local v2, resp:Ljcifs/smb/TransPeekNamedPipeResponse;
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 229
    iget v5, v2, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 230
    iget v5, v2, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 231
    :cond_1
    iget-object v5, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljcifs/smb/SmbFile;->opened:Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0           #pipe:Ljcifs/smb/SmbNamedPipe;
    .end local v1           #req:Ljcifs/smb/TransPeekNamedPipe;
    .end local v2           #resp:Ljcifs/smb/TransPeekNamedPipeResponse;
    :catch_0
    move-exception v3

    .line 236
    .local v3, se:Ljcifs/smb/SmbException;
    invoke-virtual {p0, v3}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 234
    .end local v3           #se:Ljcifs/smb/SmbException;
    .restart local v0       #pipe:Ljcifs/smb/SmbNamedPipe;
    .restart local v1       #req:Ljcifs/smb/TransPeekNamedPipe;
    .restart local v2       #resp:Ljcifs/smb/TransPeekNamedPipeResponse;
    :cond_2
    :try_start_1
    iget v4, v2, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->close()V

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, se:Ljcifs/smb/SmbException;
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 121
    iget-object v1, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result v0

    return v0
.end method

.method public readDirect([BII)I
    .locals 14
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-gtz p3, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 203
    :goto_0
    return v2

    .line 150
    :cond_0
    move/from16 v0, p2

    int-to-long v2, v0

    iput-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 151
    const/16 p2, 0x0

    .line 153
    iget-wide v10, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 155
    .local v10, start:J
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    if-nez v2, :cond_1

    .line 156
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad file descriptor"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v3, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    iget v4, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    const/16 v6, 0x80

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v4, v6, v12}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 165
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 166
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read: fid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v4, v4, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 168
    :cond_2
    new-instance v8, Ljcifs/smb/SmbComReadAndXResponse;

    move/from16 v0, p2

    invoke-direct {v8, p1, v0}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 170
    .local v8, response:Ljcifs/smb/SmbComReadAndXResponse;
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 171
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->responseTimeout:J

    .line 176
    :cond_3
    iget v2, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    move/from16 v0, p3

    if-le v0, v2, :cond_6

    iget v5, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    .line 178
    .local v5, r:I
    :goto_1
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 179
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read: len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",fp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_4
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbComReadAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v3, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    .line 183
    .local v1, request:Ljcifs/smb/SmbComReadAndX;
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 184
    const/16 v2, 0x400

    iput v2, v1, Ljcifs/smb/SmbComReadAndX;->remaining:I

    iput v2, v1, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    iput v2, v1, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 186
    :cond_5
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v2, v1, v8}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    iget v7, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .local v7, n:I
    if-gtz v7, :cond_9

    .line 195
    iget-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_8

    iget-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    :goto_2
    long-to-int v2, v2

    goto/16 :goto_0

    .end local v1           #request:Ljcifs/smb/SmbComReadAndX;
    .end local v5           #r:I
    .end local v7           #n:I
    :cond_6
    move/from16 v5, p3

    .line 176
    goto :goto_1

    .line 187
    .restart local v5       #r:I
    :catch_0
    move-exception v9

    .line 188
    .local v9, se:Ljcifs/smb/SmbException;
    iget-object v2, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_7

    .line 189
    invoke-virtual {v9}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3ffffeb5

    if-ne v2, v3, :cond_7

    .line 190
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 192
    :cond_7
    invoke-virtual {p0, v9}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 195
    .end local v9           #se:Ljcifs/smb/SmbException;
    .restart local v1       #request:Ljcifs/smb/SmbComReadAndX;
    .restart local v7       #n:I
    :cond_8
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 197
    :cond_9
    iget-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    int-to-long v12, v7

    add-long/2addr v2, v12

    iput-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 198
    sub-int p3, p3, v7

    .line 199
    iget v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v2, v7

    iput v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 201
    if-lez p3, :cond_a

    if-eq v7, v5, :cond_3

    .line 203
    :cond_a
    iget-wide v2, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    sub-long/2addr v2, v10

    long-to-int v2, v2

    goto/16 :goto_0
.end method

.method protected seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;
    .locals 3
    .parameter "se"

    .prologue
    .line 85
    move-object v0, p1

    .line 86
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 87
    .local v1, root:Ljava/lang/Throwable;
    instance-of v2, v1, Ljcifs/util/transport/TransportException;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 88
    check-cast v0, Ljcifs/util/transport/TransportException;

    move-object v2, v0

    .line 89
    check-cast v2, Ljcifs/util/transport/TransportException;

    invoke-virtual {v2}, Ljcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 91
    :cond_0
    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_1

    .line 92
    new-instance v0, Ljava/io/InterruptedIOException;

    .end local v0           #ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v0       #ioe:Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    :cond_1
    return-object v0
.end method

.method public skip(J)J
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 246
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 247
    iget-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 250
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method
