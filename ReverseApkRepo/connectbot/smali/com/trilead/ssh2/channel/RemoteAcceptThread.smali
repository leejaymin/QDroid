.class public Lcom/trilead/ssh2/channel/RemoteAcceptThread;
.super Ljava/lang/Thread;
.source "RemoteAcceptThread.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteConnectedAddress:Ljava/lang/String;

.field remoteConnectedPort:I

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;

.field targetAddress:Ljava/lang/String;

.field targetPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .parameter "c"
    .parameter "remoteConnectedAddress"
    .parameter "remoteConnectedPort"
    .parameter "remoteOriginatorAddress"
    .parameter "remoteOriginatorPort"
    .parameter "targetAddress"
    .parameter "targetPort"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 35
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedAddress:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedPort:I

    .line 37
    iput-object p4, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorPort:I

    .line 39
    iput-object p6, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 40
    iput p7, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    .line 42
    sget-object v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteAcceptThread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", R: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 53
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    iget v4, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 55
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    iget-object v4, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 56
    const-string v6, "RemoteToLocal"

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 57
    .local v0, r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    new-instance v1, Lcom/trilead/ssh2/channel/StreamForwarder;

    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v6

    .line 58
    const-string v7, "LocalToRemote"

    .line 57
    invoke-direct/range {v1 .. v7}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    .local v1, l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 64
    invoke-virtual {v1}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v4, "EOF on both streams reached."

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 80
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .end local v0           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v1           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :cond_0
    :goto_1
    return-void

    .line 70
    .restart local v0       #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .restart local v1       #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0

    .line 82
    .end local v0           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v1           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :catch_1
    move-exception v8

    .line 84
    .local v8, e:Ljava/io/IOException;
    sget-object v2, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException in proxy code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 88
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v2, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException in proxy code ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 95
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 98
    :catch_2
    move-exception v2

    goto :goto_1

    .line 90
    :catch_3
    move-exception v2

    goto :goto_2
.end method
