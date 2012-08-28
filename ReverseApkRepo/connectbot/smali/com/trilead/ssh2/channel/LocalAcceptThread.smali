.class public Lcom/trilead/ssh2/channel/LocalAcceptThread;
.super Ljava/lang/Thread;
.source "LocalAcceptThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field port_to_connect:I

.field final ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 1
    .parameter "cm"
    .parameter "localAddress"
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 37
    iput-object p3, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 40
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 41
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    const/4 v3, 0x0

    .line 62
    .local v3, s:Ljava/net/Socket;
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, cn:Lcom/trilead/ssh2/channel/Channel;
    const/4 v12, 0x0

    .line 72
    .local v12, r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    const/4 v4, 0x0

    .line 78
    .local v4, l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v5, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    iget v6, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v8

    .line 78
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 99
    :try_start_3
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    const/4 v2, 0x0

    iget-object v4, v1, Lcom/trilead/ssh2/channel/Channel;->stdoutStream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .end local v4           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "RemoteToLocal"

    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 100
    .end local v12           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .local v0, r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    :try_start_4
    new-instance v4, Lcom/trilead/ssh2/channel/StreamForwarder;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, v1, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    const-string v10, "LocalToRemote"

    move-object v5, v1

    move-object v6, v0

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 117
    .restart local v4       #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    invoke-virtual {v0, v13}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 118
    invoke-virtual {v4, v13}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 119
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 120
    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    goto :goto_0

    .line 50
    .end local v0           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v1           #cn:Lcom/trilead/ssh2/channel/Channel;
    .end local v3           #s:Ljava/net/Socket;
    .end local v4           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :catch_0
    move-exception v11

    .line 52
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    .line 67
    :goto_1
    return-void

    .line 64
    .end local v11           #e:Ljava/io/IOException;
    .restart local v3       #s:Ljava/net/Socket;
    :catch_1
    move-exception v11

    .line 66
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    goto :goto_1

    .line 82
    .end local v11           #e:Ljava/io/IOException;
    .restart local v1       #cn:Lcom/trilead/ssh2/channel/Channel;
    .restart local v4       #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    .restart local v12       #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    :catch_2
    move-exception v11

    .line 88
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 90
    :catch_3
    move-exception v2

    goto :goto_0

    .line 102
    .end local v4           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v11           #e:Ljava/io/IOException;
    :catch_4
    move-exception v11

    move-object v0, v12

    .line 107
    .end local v12           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .restart local v0       #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .restart local v11       #e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    iget-object v2, v1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Weird error during creation of StreamForwarder ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    const/4 v6, 0x1

    .line 107
    invoke-virtual {v2, v1, v5, v6}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 110
    :catch_5
    move-exception v2

    goto :goto_0

    .line 102
    .end local v11           #e:Ljava/io/IOException;
    :catch_6
    move-exception v11

    goto :goto_2
.end method

.method public stopWorking()V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
