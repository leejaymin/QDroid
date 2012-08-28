.class public Lcom/trilead/ssh2/DynamicPortForwarder;
.super Ljava/lang/Object;
.source "DynamicPortForwarder.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 2
    .parameter "cm"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 53
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-direct {v0, p1, p2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 54
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->setDaemon(Z)V

    .line 55
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->start()V

    .line 56
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
    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/DynamicPortForwarder;->dat:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    .line 66
    return-void
.end method
