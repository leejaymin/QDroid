.class public Lcom/trilead/ssh2/LocalPortForwarder;
.super Ljava/lang/Object;
.source "LocalPortForwarder.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

.field port_to_connect:I


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 2
    .parameter "cm"
    .parameter "addr"
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/trilead/ssh2/LocalPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 46
    iput-object p3, p0, Lcom/trilead/ssh2/LocalPortForwarder;->host_to_connect:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/trilead/ssh2/LocalPortForwarder;->port_to_connect:I

    .line 49
    new-instance v0, Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/LocalAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    .line 50
    iget-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->setDaemon(Z)V

    .line 51
    iget-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->start()V

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/trilead/ssh2/LocalPortForwarder;->lat:Lcom/trilead/ssh2/channel/LocalAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    .line 62
    return-void
.end method
