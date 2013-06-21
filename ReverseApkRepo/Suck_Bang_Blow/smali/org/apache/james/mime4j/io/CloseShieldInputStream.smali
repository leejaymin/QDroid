.class public Lorg/apache/james/mime4j/io/CloseShieldInputStream;
.super Ljava/io/FilterInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 64
    return-void
.end method

.method public getUnderlyingStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

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
    .line 111
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 112
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 95
    invoke-direct {p0}, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->checkIfClosed()V

    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/io/CloseShieldInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
