.class public Lorg/tf/player/RawDecoder;
.super Ljava/lang/Object;
.source "RawDecoder.java"

# interfaces
.implements Lorg/tf/player/PCMDecoder;


# static fields
.field private static final FILE_SIGNATURE:I = 0x52415721

.field private static final HEADER_SIZE:I = 0xc

.field private static final SAMPLE_BYTES:I = 0x2


# instance fields
.field private m_channels:I

.field private m_file:Ljava/io/RandomAccessFile;

.field private m_rate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/tf/player/RawDecoder;->open(Ljava/io/File;)V

    .line 34
    return-void
.end method

.method public static getFileSize(III)I
    .locals 1
    .parameter "timeLength"
    .parameter "rate"
    .parameter "channels"

    .prologue
    .line 94
    invoke-static {p0, p1, p2}, Lorg/tf/player/RawDecoder;->timeToOffset(III)I

    move-result v0

    return v0
.end method

.method private readHeader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    iget-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 102
    .local v0, signature:I
    const v1, 0x52415721

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v1, Ljava/io/IOException;

    .line 104
    const-string v2, "Invalid signature (%08X)."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p0, Lorg/tf/player/RawDecoder;->m_rate:I

    .line 108
    iget-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p0, Lorg/tf/player/RawDecoder;->m_channels:I

    .line 109
    return-void
.end method

.method private static timeToOffset(III)I
    .locals 6
    .parameter "time"
    .parameter "rate"
    .parameter "channels"

    .prologue
    .line 112
    int-to-long v2, p1

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    int-to-long v4, p0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 113
    .local v0, offset:J
    mul-int/lit8 v2, p2, 0x2

    int-to-long v2, v2

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    .line 114
    const-wide/16 v2, 0xc

    add-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public static writeHeader(Ljava/io/OutputStream;II)V
    .locals 2
    .parameter "stream"
    .parameter "rate"
    .parameter "channels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 88
    .local v0, dataStream:Ljava/io/DataOutputStream;
    const v1, 0x52415721

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    .line 53
    return-void
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/tf/player/RawDecoder;->m_channels:I

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/tf/player/RawDecoder;->m_rate:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public open(Ljava/io/File;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/tf/player/RawDecoder;->close()V

    .line 39
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    .line 40
    invoke-direct {p0}, Lorg/tf/player/RawDecoder;->readHeader()V

    .line 41
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lorg/tf/player/RawDecoder;->seekToTime(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    .line 46
    throw v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public seekToTime(I)V
    .locals 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    if-gez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/tf/player/RawDecoder;->m_file:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/tf/player/RawDecoder;->m_rate:I

    iget v2, p0, Lorg/tf/player/RawDecoder;->m_channels:I

    invoke-static {p1, v1, v2}, Lorg/tf/player/RawDecoder;->timeToOffset(III)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 76
    return-void
.end method
