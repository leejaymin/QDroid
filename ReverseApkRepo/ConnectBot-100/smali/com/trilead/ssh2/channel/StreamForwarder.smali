.class public Lcom/trilead/ssh2/channel/StreamForwarder;
.super Ljava/lang/Thread;
.source "StreamForwarder.java"


# instance fields
.field buffer:[B

.field c:Lcom/trilead/ssh2/channel/Channel;

.field is:Ljava/io/InputStream;

.field mode:Ljava/lang/String;

.field os:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;

.field sibling:Lcom/trilead/ssh2/channel/StreamForwarder;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "sibling"
    .parameter "s"
    .parameter "is"
    .parameter "os"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/16 v0, 0x7530

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    .line 31
    iput-object p4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    .line 32
    iput-object p5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    .line 33
    iput-object p6, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 35
    iput-object p2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 36
    iput-object p3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v2, "StreamForwarder ("

    const-string v2, ") is cleaning up the connection"

    .line 45
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    .local v1, len:I
    if-gtz v1, :cond_1

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 74
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 80
    :goto_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v2, :cond_0

    .line 82
    :goto_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 95
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StreamForwarder ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is cleaning up the connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 103
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 111
    .end local v1           #len:I
    :cond_0
    :goto_5
    return-void

    .line 48
    .restart local v1       #len:I
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 52
    .end local v1           #len:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, ignore:Ljava/io/IOException;
    :try_start_6
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closed due to exception in StreamForwarder ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 56
    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    .line 67
    :goto_6
    :try_start_7
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 74
    :goto_7
    :try_start_8
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 80
    :goto_8
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v2, :cond_0

    .line 82
    :goto_9
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    :try_start_9
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StreamForwarder ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is cleaning up the connection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 103
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 106
    :catch_1
    move-exception v2

    goto :goto_5

    .line 86
    :cond_2
    :try_start_b
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_9

    .line 88
    :catch_2
    move-exception v2

    goto :goto_9

    .line 64
    .end local v0           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 67
    :try_start_c
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 74
    :goto_b
    :try_start_d
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 80
    :goto_c
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    if-eqz v3, :cond_3

    .line 82
    :goto_d
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    :try_start_e
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v4, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "StreamForwarder ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->mode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is cleaning up the connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 103
    :goto_e
    :try_start_f
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    if-eqz v3, :cond_3

    .line 104
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 110
    :cond_3
    :goto_f
    throw v2

    .line 86
    :cond_4
    :try_start_10
    iget-object v3, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_d

    .line 88
    :catch_3
    move-exception v3

    goto :goto_d

    .line 86
    .restart local v1       #len:I
    :cond_5
    :try_start_11
    iget-object v2, p0, Lcom/trilead/ssh2/channel/StreamForwarder;->sibling:Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_3

    .line 88
    :catch_4
    move-exception v2

    goto/16 :goto_3

    .line 106
    :catch_5
    move-exception v2

    goto/16 :goto_5

    .line 97
    :catch_6
    move-exception v2

    goto/16 :goto_4

    .line 76
    :catch_7
    move-exception v2

    goto/16 :goto_2

    .line 69
    :catch_8
    move-exception v2

    goto/16 :goto_1

    .line 106
    .end local v1           #len:I
    :catch_9
    move-exception v3

    goto :goto_f

    .line 97
    :catch_a
    move-exception v3

    goto :goto_e

    .line 76
    :catch_b
    move-exception v3

    goto :goto_c

    .line 69
    :catch_c
    move-exception v3

    goto :goto_b

    .line 97
    .restart local v0       #ignore:Ljava/io/IOException;
    :catch_d
    move-exception v2

    goto :goto_a

    .line 76
    :catch_e
    move-exception v2

    goto/16 :goto_8

    .line 69
    :catch_f
    move-exception v2

    goto/16 :goto_7

    .line 59
    :catch_10
    move-exception v2

    goto/16 :goto_6
.end method
