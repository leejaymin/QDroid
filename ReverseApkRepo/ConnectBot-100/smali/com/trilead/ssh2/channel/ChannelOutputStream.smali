.class public final Lcom/trilead/ssh2/channel/ChannelOutputStream;
.super Ljava/io/OutputStream;
.source "ChannelOutputStream.java"


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field isClosed:Z


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 21
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    .line 37
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->sendEOF(Lcom/trilead/ssh2/channel/Channel;)V

    .line 39
    :cond_0
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
    .line 43
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [B

    .line 27
    .local v0, buff:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 29
    invoke-virtual {p0, v0, v2, v3}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    .line 30
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/channel/ChannelOutputStream;->write([BII)V

    .line 69
    return-void
.end method

.method public write([BII)V
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
    .line 51
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This OutputStream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    array-length v0, p1

    if-le p2, v0, :cond_3

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 60
    :cond_3
    if-nez p3, :cond_4

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelOutputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V

    goto :goto_0
.end method
