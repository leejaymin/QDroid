.class public Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;
.super Lorg/apache/james/mime4j/io/LineReaderInputStream;
.source "LineReaderInputStreamAdaptor.java"


# instance fields
.field private final bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

.field private eof:Z

.field private final maxLineLen:I

.field private used:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 54
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "is"
    .parameter "maxLineLen"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 44
    instance-of v0, p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lorg/apache/james/mime4j/io/LineReaderInputStream;

    .end local p1
    iput-object p1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    .line 49
    :goto_0
    iput p2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    .line 50
    return-void

    .line 47
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    goto :goto_0
.end method

.method private doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 5
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxLineLimitException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, total:I
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    if-eq v0, v2, :cond_2

    .line 92
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    iget v3, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    iget v4, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->maxLineLen:I

    if-lt v3, v4, :cond_1

    .line 95
    new-instance v2, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v3, "Maximum line length limit exceeded"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 101
    :cond_2
    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    move v1, v2

    .line 104
    .end local v1           #total:I
    :cond_3
    return v1
.end method


# virtual methods
.method public eof()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 61
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 62
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 69
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 70
    return v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .locals 3
    .parameter "dst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxLineLimitException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 77
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    .line 82
    .local v0, i:I
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 83
    iput-boolean v2, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 84
    return v0

    .line 80
    .end local v0           #i:I
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->doReadLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v0

    .restart local v0       #i:I
    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public skip(J)J
    .locals 9
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 132
    cmp-long v7, p1, v5

    if-gtz v7, :cond_1

    move-wide v3, v5

    .line 146
    :cond_0
    return-wide v3

    .line 135
    :cond_1
    const-wide/16 v7, 0x2000

    cmp-long v7, p1, v7

    if-lez v7, :cond_2

    const/16 v1, 0x2000

    .line 136
    .local v1, bufferSize:I
    :goto_0
    new-array v0, v1, [B

    .line 137
    .local v0, buffer:[B
    const-wide/16 v3, 0x0

    .line 138
    .local v3, result:J
    :goto_1
    cmp-long v7, p1, v5

    if-lez v7, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->read([B)I

    move-result v2

    .line 140
    .local v2, res:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 143
    int-to-long v7, v2

    add-long/2addr v3, v7

    .line 144
    int-to-long v7, v2

    sub-long/2addr p1, v7

    .line 145
    goto :goto_1

    .line 135
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #res:I
    .end local v3           #result:J
    :cond_2
    long-to-int v1, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LineReaderInputStreamAdaptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unread(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Z
    .locals 1
    .parameter "buf"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->bis:Lorg/apache/james/mime4j/io/LineReaderInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->unread(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
