.class public Lorg/apache/james/mime4j/io/LimitedInputStream;
.super Lorg/apache/james/mime4j/io/PositionInputStream;
.source "LimitedInputStream.java"


# instance fields
.field private final limit:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .parameter "instream"
    .parameter "limit"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/io/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Limit may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-wide p2, p0, Lorg/apache/james/mime4j/io/LimitedInputStream;->limit:J

    .line 35
    return-void
.end method

.method private enforceLimit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/LimitedInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/LimitedInputStream;->limit:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input stream limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method private getBytesLeft()I
    .locals 6

    .prologue
    .line 61
    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lorg/apache/james/mime4j/io/LimitedInputStream;->limit:J

    iget-wide v4, p0, Lorg/apache/james/mime4j/io/LimitedInputStream;->position:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/LimitedInputStream;->enforceLimit()V

    .line 45
    invoke-super {p0}, Lorg/apache/james/mime4j/io/PositionInputStream;->read()I

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
    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/LimitedInputStream;->enforceLimit()V

    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/LimitedInputStream;->getBytesLeft()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 51
    invoke-super {p0, p1, p2, p3}, Lorg/apache/james/mime4j/io/PositionInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/LimitedInputStream;->enforceLimit()V

    .line 56
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/LimitedInputStream;->getBytesLeft()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 57
    invoke-super {p0, p1, p2}, Lorg/apache/james/mime4j/io/PositionInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method