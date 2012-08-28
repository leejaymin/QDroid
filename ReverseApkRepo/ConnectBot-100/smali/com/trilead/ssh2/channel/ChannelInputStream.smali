.class public final Lcom/trilead/ssh2/channel/ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelInputStream.java"


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field extendedFlag:Z

.field isClosed:Z

.field isEOF:Z


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;Z)V
    .locals 1
    .parameter "c"
    .parameter "isExtended"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isClosed:Z

    .line 18
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    .line 19
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    .line 23
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 24
    iput-boolean p2, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    .line 25
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 29
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    if-eqz v1, :cond_0

    move v1, v4

    .line 36
    :goto_0
    return v1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v1, v1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-boolean v3, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->getAvailable(Lcom/trilead/ssh2/channel/Channel;Z)I

    move-result v0

    .line 36
    .local v0, avail:I
    if-lez v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isClosed:Z

    .line 42
    return-void
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

    const/4 v2, 0x1

    .line 77
    new-array v0, v2, [B

    .line 79
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    move-result v1

    .line 81
    .local v1, ret:I
    if-eq v1, v2, :cond_0

    .line 82
    const/4 v2, -0x1

    .line 84
    :goto_0
    return v2

    :cond_0
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

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
    .line 70
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 52
    :cond_2
    if-nez p3, :cond_3

    .line 53
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 55
    :cond_3
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    if-eqz v0, :cond_4

    move v0, v7

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-boolean v2, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->extendedFlag:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I

    move-result v6

    .line 60
    .local v6, ret:I
    if-ne v6, v7, :cond_5

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelInputStream;->isEOF:Z

    :cond_5
    move v0, v6

    .line 65
    goto :goto_0
.end method
