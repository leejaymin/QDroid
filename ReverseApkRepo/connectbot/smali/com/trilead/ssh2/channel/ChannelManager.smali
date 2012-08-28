.class public Lcom/trilead/ssh2/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

.field private channels:Ljava/util/Vector;

.field private globalFailedCounter:I

.field private globalSuccessCounter:I

.field private listenerThreads:Ljava/util/Vector;

.field private listenerThreadsAllowed:Z

.field private nextLocalChannel:I

.field private remoteForwardings:Ljava/util/HashMap;

.field private shutdown:Z

.field private tm:Lcom/trilead/ssh2/transport/TransportManager;

.field private x11_magic_cookies:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 48
    iput v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    .line 49
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 50
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 51
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 63
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 64
    const/16 v0, 0x50

    invoke-virtual {p1, p0, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 65
    return-void
.end method

.method private addChannel(Lcom/trilead/ssh2/channel/Channel;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    iget v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    monitor-exit v1

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getChannel(I)Lcom/trilead/ssh2/channel/Channel;
    .locals 4
    .parameter "id"

    .prologue
    .line 69
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 69
    monitor-exit v3

    .line 78
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 74
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v2, p1, :cond_1

    .line 75
    monitor-exit v3

    goto :goto_1

    .line 69
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 71
    .restart local v0       #c:Lcom/trilead/ssh2/channel/Channel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeChannel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 83
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 85
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 83
    :goto_1
    monitor-exit v3

    .line 95
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 88
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v2, p1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 83
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 85
    .restart local v0       #c:Lcom/trilead/ssh2/channel/Channel;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 168
    monitor-enter p1

    .line 170
    :goto_0
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v2, :cond_0

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-nez v2, :cond_4

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-ne v2, v1, :cond_4

    .line 192
    monitor-exit p1

    .line 195
    :goto_1
    return v1

    .line 172
    :cond_1
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 174
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, detail:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This SSH2 channel is not open ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0           #detail:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 184
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    goto :goto_0

    .line 194
    :cond_4
    :try_start_2
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-ne v2, v1, :cond_5

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v1, :cond_5

    .line 195
    monitor-exit p1

    const/4 v1, 0x0

    goto :goto_1

    .line 197
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state. The server sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    const-string v3, " SSH_MSG_CHANNEL_SUCCESS and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_CHANNEL_FAILURE messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private final waitForGlobalRequestResult()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 137
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v1

    .line 139
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-ne v2, v0, :cond_3

    .line 156
    monitor-exit v1

    .line 159
    :goto_1
    return v0

    .line 141
    :cond_1
    iget-boolean v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    if-eqz v2, :cond_2

    .line 143
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The connection is being shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 148
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    goto :goto_0

    .line 158
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v0, :cond_4

    .line 159
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state. The server sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    const-string v3, " SSH_MSG_REQUEST_SUCCESS and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSH_MSG_REQUEST_FAILURE messages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 4
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p1

    .line 110
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 121
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 123
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 125
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, detail:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open channel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0           #detail:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0

    .line 108
    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    return-void
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;
    .locals 2
    .parameter "hexFakeCookie"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v1

    .line 257
    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/X11ServerData;

    monitor-exit v1

    .line 260
    :goto_0
    return-object v0

    .line 255
    :cond_0
    monitor-exit v1

    .line 260
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeAllChannels()V
    .locals 6

    .prologue
    .line 265
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all channels"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 270
    .local v1, channel_copy:Ljava/util/Vector;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 286
    return-void

    .line 270
    .end local v1           #channel_copy:Ljava/util/Vector;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 277
    .restart local v1       #channel_copy:Ljava/util/Vector;
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 280
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    :try_start_2
    const-string v3, "Closing all channels"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    .locals 5
    .parameter "c"
    .parameter "reason"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 292
    .local v0, msg:[B
    monitor-enter p1

    .line 294
    if-eqz p3, :cond_0

    .line 296
    const/4 v1, 0x4

    :try_start_0
    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 300
    :cond_0
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 303
    const/4 v1, 0x1

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 304
    const/4 v1, 0x2

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 305
    const/4 v1, 0x3

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 306
    const/4 v1, 0x4

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_1
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v1, :cond_2

    .line 314
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 292
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 315
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 316
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 311
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sent SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 311
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getAvailable(Lcom/trilead/ssh2/channel/Channel;Z)I
    .locals 3
    .parameter "c"
    .parameter "extended"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    monitor-enter p1

    .line 1004
    if-eqz p2, :cond_0

    .line 1005
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int v0, v1, v2

    .line 1009
    .local v0, avail:I
    :goto_0
    if-lez v0, :cond_1

    .end local v0           #avail:I
    :goto_1
    monitor-exit p1

    return v0

    .line 1007
    :cond_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int v0, v1, v2

    .restart local v0       #avail:I
    goto :goto_0

    .line 1009
    :cond_1
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1000
    .end local v0           #avail:I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I
    .locals 16
    .parameter "c"
    .parameter "extended"
    .parameter "target"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    const/4 v2, 0x0

    .line 1016
    .local v2, copylen:I
    const/4 v3, 0x0

    .line 1017
    .local v3, increment:I
    const/4 v7, 0x0

    .line 1018
    .local v7, remoteID:I
    const/4 v4, 0x0

    .line 1020
    .local v4, localID:I
    monitor-enter p1

    .line 1022
    const/4 v9, 0x0

    .line 1023
    .local v9, stdoutAvail:I
    const/4 v8, 0x0

    .line 1032
    .local v8, stderrAvail:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int v9, v10, v11

    .line 1033
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int v8, v10, v11

    .line 1035
    if-nez p2, :cond_2

    if-eqz v9, :cond_2

    .line 1057
    :cond_0
    if-nez p2, :cond_7

    .line 1059
    move/from16 v0, p5

    if-le v9, v0, :cond_6

    move/from16 v2, p5

    .line 1060
    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1061
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    add-int/2addr v10, v2

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 1063
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    if-eq v10, v11, :cond_1

    .line 1065
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1066
    move-object/from16 v0, p1

    iget v15, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v14, v15

    .line 1065
    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1068
    :cond_1
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1069
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 1086
    :goto_2
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    .line 1087
    monitor-exit p1

    move v10, v2

    .line 1132
    :goto_3
    return v10

    .line 1038
    :cond_2
    if-eqz p2, :cond_3

    if-nez v8, :cond_0

    .line 1043
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    .line 1044
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, -0x1

    goto :goto_3

    .line 1048
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1050
    :catch_0
    move-exception v10

    goto/16 :goto_0

    :cond_6
    move v2, v9

    .line 1059
    goto :goto_1

    .line 1073
    :cond_7
    move/from16 v0, p5

    if-le v8, v0, :cond_9

    move/from16 v2, p5

    .line 1074
    :goto_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    add-int/2addr v10, v2

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    .line 1077
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    if-eq v10, v11, :cond_8

    .line 1079
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 1080
    move-object/from16 v0, p1

    iget v15, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v14, v15

    .line 1079
    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1082
    :cond_8
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 1083
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput v10, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    goto :goto_2

    .line 1020
    :catchall_0
    move-exception v10

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :cond_9
    move v2, v8

    .line 1073
    goto :goto_4

    .line 1089
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    const/16 v11, 0x3a98

    if-ge v10, v11, :cond_b

    .line 1091
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    rsub-int v10, v10, 0x7530

    .line 1092
    move-object/from16 v0, p1

    iget v11, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    rsub-int v11, v11, 0x7530

    .line 1091
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1094
    .local v5, minFreeSpace:I
    move-object/from16 v0, p1

    iget v10, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int v3, v5, v10

    .line 1095
    move-object/from16 v0, p1

    iput v5, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 1098
    .end local v5           #minFreeSpace:I
    :cond_b
    move-object/from16 v0, p1

    iget v7, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1099
    move-object/from16 v0, p1

    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1020
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1108
    if-lez v3, :cond_e

    .line 1110
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v10}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1111
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v11, 0x50

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1113
    :cond_c
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1115
    :try_start_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    .line 1117
    .local v6, msg:[B
    const/4 v10, 0x0

    const/16 v12, 0x5d

    aput-byte v12, v6, v10

    .line 1118
    const/4 v10, 0x1

    shr-int/lit8 v12, v7, 0x18

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1119
    const/4 v10, 0x2

    shr-int/lit8 v12, v7, 0x10

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1120
    const/4 v10, 0x3

    shr-int/lit8 v12, v7, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1121
    const/4 v10, 0x4

    int-to-byte v12, v7

    aput-byte v12, v6, v10

    .line 1122
    const/4 v10, 0x5

    shr-int/lit8 v12, v3, 0x18

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1123
    const/4 v10, 0x6

    shr-int/lit8 v12, v3, 0x10

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1124
    const/4 v10, 0x7

    shr-int/lit8 v12, v3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v10

    .line 1125
    const/16 v10, 0x8

    int-to-byte v12, v3

    aput-byte v12, v6, v10

    .line 1127
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez v10, :cond_d

    .line 1128
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v10, v6}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 1113
    :cond_d
    monitor-exit v11

    .end local v6           #msg:[B
    :cond_e
    move v10, v2

    .line 1132
    goto/16 :goto_3

    .line 1113
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10
.end method

.method public handleMessage([BI)V
    .locals 7
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1664
    if-nez p1, :cond_3

    .line 1666
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "HandleMessage: got shutdown"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1669
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v4

    .line 1671
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1676
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 1669
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 1681
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 1683
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 1701
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->setSize(I)V

    .line 1702
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 1703
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1704
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1755
    .end local v1           #i:I
    :goto_2
    return-void

    .line 1673
    .restart local v1       #i:I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/IChannelWorkerThread;

    .line 1674
    .local v2, lat:Lcom/trilead/ssh2/channel/IChannelWorkerThread;
    invoke-interface {v2}, Lcom/trilead/ssh2/channel/IChannelWorkerThread;->stopWorking()V

    .line 1671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1669
    .end local v2           #lat:Lcom/trilead/ssh2/channel/IChannelWorkerThread;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1685
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 1686
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1688
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1689
    const/4 v3, 0x4

    iput v3, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1690
    const-string v3, "The connection is being shutdown"

    invoke-virtual {v0, v3}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1691
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1697
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1686
    monitor-exit v0

    .line 1683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1686
    :catchall_1
    move-exception v3

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 1679
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 1708
    .end local v1           #i:I
    :cond_3
    aget-byte v3, p1, v6

    packed-switch v3, :pswitch_data_0

    .line 1753
    :pswitch_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot handle unknown channel message "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1711
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    goto :goto_2

    .line 1714
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    goto :goto_2

    .line 1717
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelData([BI)V

    goto :goto_2

    .line 1720
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelExtendedData([BI)V

    goto :goto_2

    .line 1723
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelRequest([BI)V

    goto :goto_2

    .line 1726
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelEOF([BI)V

    goto :goto_2

    .line 1729
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpen([BI)V

    goto :goto_2

    .line 1732
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelClose([BI)V

    goto :goto_2

    .line 1735
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelSuccess([BI)V

    goto :goto_2

    .line 1738
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelFailure([BI)V

    goto :goto_2

    .line 1741
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    goto :goto_2

    .line 1744
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalRequest([BI)V

    goto/16 :goto_2

    .line 1747
    :pswitch_d
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalSuccess()V

    goto/16 :goto_2

    .line 1750
    :pswitch_e
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalFailure()V

    goto/16 :goto_2

    .line 1708
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public msgChannelClose([BI)V
    .locals 6
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1453
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1454
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_CLOSE message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1456
    :cond_0
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1458
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1460
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1461
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_CLOSE message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1463
    :cond_1
    monitor-enter v0

    .line 1465
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1466
    const/4 v2, 0x4

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1467
    const-string v2, "Close requested by remote"

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1468
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1470
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 1472
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1476
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1477
    :cond_2
    return-void

    .line 1463
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelData([BI)V
    .locals 9
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 1137
    if-gt p2, v3, :cond_0

    .line 1138
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong size ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1140
    :cond_0
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, p1, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p1, v8

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 1141
    .local v1, id:I
    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 1143
    .local v2, len:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1145
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1146
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected SSH_MSG_CHANNEL_DATA message for non-existent channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_1
    add-int/lit8 v3, p2, -0x9

    if-eq v2, v3, :cond_2

    .line 1149
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong len (calculated "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, p2, -0x9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1150
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1149
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1152
    :cond_2
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1153
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x50

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got SSH_MSG_CHANNEL_DATA (channel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1155
    :cond_3
    monitor-enter v0

    .line 1157
    :try_start_0
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v3, v8, :cond_4

    .line 1158
    monitor-exit v0

    .line 1173
    :goto_0
    return-void

    .line 1160
    :cond_4
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v3, v7, :cond_5

    .line 1161
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_DATA, but channel is not in correct state ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1155
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1163
    :cond_5
    :try_start_1
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-ge v3, v2, :cond_6

    .line 1164
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote sent too much data, does not fit into window."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1166
    :cond_6
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 1168
    const/16 v3, 0x9

    iget-object v4, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v5, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1169
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelEOF([BI)V
    .locals 6
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1431
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1432
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_EOF message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1434
    :cond_0
    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1436
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1438
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1439
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_EOF message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1441
    :cond_1
    monitor-enter v0

    .line 1443
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1444
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1441
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1448
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_EOF (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1449
    :cond_2
    return-void

    .line 1441
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelExtendedData([BI)V
    .locals 10
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 878
    if-gt p2, v4, :cond_0

    .line 879
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 881
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, p1, v9

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 882
    .local v2, id:I
    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 883
    .local v1, dataType:I
    const/16 v4, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 885
    .local v3, len:I
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 887
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 888
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected SSH_MSG_CHANNEL_EXTENDED_DATA message for non-existent channel "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 890
    :cond_1
    if-eq v1, v6, :cond_2

    .line 891
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_2
    add-int/lit8 v4, p2, -0xd

    if-eq v3, v4, :cond_3

    .line 894
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, p2, -0xd

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 895
    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :cond_3
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 898
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x50

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got SSH_MSG_CHANNEL_EXTENDED_DATA (channel "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 900
    :cond_4
    monitor-enter v0

    .line 902
    :try_start_0
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v4, v9, :cond_5

    .line 903
    monitor-exit v0

    .line 919
    :goto_0
    return-void

    .line 905
    :cond_5
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v4, v8, :cond_6

    .line 906
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    iget v6, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 906
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 900
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 909
    :cond_6
    :try_start_1
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-ge v4, v3, :cond_7

    .line 910
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Remote sent too much data, does not fit into window."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 912
    :cond_7
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 914
    const/16 v4, 0xd

    iget-object v5, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget v6, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    invoke-static {p1, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 917
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 900
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelFailure([BI)V
    .locals 6
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1504
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_FAILURE message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1506
    :cond_0
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1508
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1510
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1511
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_FAILURE message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1513
    :cond_1
    monitor-enter v0

    .line 1515
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 1516
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1520
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_FAILURE (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1521
    :cond_2
    return-void

    .line 1513
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelOpen([BI)V
    .locals 22
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v19, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v9, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v9, v2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1210
    .local v19, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1211
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1212
    .local v12, channelType:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v14

    .line 1213
    .local v14, remoteID:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v16

    .line 1214
    .local v16, remoteWindow:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v15

    .line 1216
    .local v15, remoteMaxPacketSize:I
    const-string v9, "x11"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1218
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v10

    .line 1222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 1224
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 1225
    const/4 v9, 0x1

    const-string v20, "X11 forwarding not activated"

    const-string v21, ""

    .line 1224
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v13, v14, v9, v0, v1}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1227
    .local v13, pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1229
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v9}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1230
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v20, 0x14

    const-string v21, "Unexpected X11 request, denying it!"

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1232
    :cond_0
    monitor-exit v10

    .line 1341
    .end local v13           #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    :cond_1
    :goto_0
    return-void

    .line 1218
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1237
    .local v7, remoteOriginatorAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v8

    .line 1239
    .local v8, remoteOriginatorPort:I
    new-instance v4, Lcom/trilead/ssh2/channel/Channel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1241
    .local v4, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v4

    .line 1243
    :try_start_1
    iput v14, v4, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1244
    move/from16 v0, v16

    int-to-long v9, v0

    const-wide v20, 0xffffffffL

    and-long v9, v9, v20

    iput-wide v9, v4, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1245
    iput v15, v4, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1246
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v9

    iput v9, v4, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1241
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1253
    new-instance v18, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v7, v8}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V

    .line 1254
    .local v18, rxat:Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
    const/4 v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->setDaemon(Z)V

    .line 1255
    invoke-virtual/range {v18 .. v18}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->start()V

    goto :goto_0

    .line 1218
    .end local v4           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v7           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v8           #remoteOriginatorPort:I
    .end local v18           #rxat:Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 1241
    .restart local v4       #c:Lcom/trilead/ssh2/channel/Channel;
    .restart local v7       #remoteOriginatorAddress:Ljava/lang/String;
    .restart local v8       #remoteOriginatorPort:I
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1260
    .end local v4           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v7           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v8           #remoteOriginatorPort:I
    :cond_3
    const-string v9, "forwarded-tcpip"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1262
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1263
    .local v5, remoteConnectedAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1264
    .local v6, remoteConnectedPort:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1265
    .restart local v7       #remoteOriginatorAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v8

    .line 1267
    .restart local v8       #remoteOriginatorPort:I
    const/16 v17, 0x0

    .line 1269
    .local v17, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v10

    .line 1271
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    move-object/from16 v17, v0

    .line 1269
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1274
    if-nez v17, :cond_4

    .line 1276
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 1277
    const/4 v9, 0x1

    .line 1278
    const-string v10, "No thanks, unknown port in forwarded-tcpip request"

    const-string v20, ""

    .line 1276
    move-object/from16 v0, v20

    invoke-direct {v13, v14, v9, v10, v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1282
    .restart local v13       #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1284
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v9}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1285
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v10, 0x14

    const-string v20, "Unexpected forwarded-tcpip request, denying it!"

    move-object/from16 v0, v20

    invoke-virtual {v9, v10, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1269
    .end local v13           #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 1290
    :cond_4
    new-instance v4, Lcom/trilead/ssh2/channel/Channel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1292
    .restart local v4       #c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v4

    .line 1294
    :try_start_6
    iput v14, v4, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1295
    move/from16 v0, v16

    int-to-long v9, v0

    const-wide v20, 0xffffffffL

    and-long v9, v9, v20

    iput-wide v9, v4, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1296
    iput v15, v4, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1297
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v9

    iput v9, v4, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1292
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1304
    new-instance v3, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    .line 1305
    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v10, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 1304
    invoke-direct/range {v3 .. v10}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 1307
    .local v3, rat:Lcom/trilead/ssh2/channel/RemoteAcceptThread;
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->setDaemon(Z)V

    .line 1308
    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->start()V

    goto/16 :goto_0

    .line 1292
    .end local v3           #rat:Lcom/trilead/ssh2/channel/RemoteAcceptThread;
    :catchall_3
    move-exception v9

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9

    .line 1313
    .end local v4           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v5           #remoteConnectedAddress:Ljava/lang/String;
    .end local v6           #remoteConnectedPort:I
    .end local v7           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v8           #remoteOriginatorPort:I
    .end local v17           #rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    :cond_5
    const-string v9, "auth-agent@openssh.com"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1314
    new-instance v4, Lcom/trilead/ssh2/channel/Channel;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1316
    .restart local v4       #c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v4

    .line 1318
    :try_start_8
    iput v14, v4, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1319
    move/from16 v0, v16

    int-to-long v9, v0

    const-wide v20, 0xffffffffL

    and-long v9, v9, v20

    iput-wide v9, v4, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1320
    iput v15, v4, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1321
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v9

    iput v9, v4, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1316
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1324
    new-instance v11, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    invoke-direct {v11, v4, v9}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)V

    .line 1326
    .local v11, aat:Lcom/trilead/ssh2/channel/AuthAgentForwardThread;
    const/4 v9, 0x1

    invoke-virtual {v11, v9}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->setDaemon(Z)V

    .line 1327
    invoke-virtual {v11}, Lcom/trilead/ssh2/channel/AuthAgentForwardThread;->start()V

    goto/16 :goto_0

    .line 1316
    .end local v11           #aat:Lcom/trilead/ssh2/channel/AuthAgentForwardThread;
    :catchall_4
    move-exception v9

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v9

    .line 1334
    .end local v4           #c:Lcom/trilead/ssh2/channel/Channel;
    :cond_6
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    const/4 v9, 0x3

    .line 1335
    const-string v10, "Unknown channel type"

    const-string v20, ""

    .line 1334
    move-object/from16 v0, v20

    invoke-direct {v13, v14, v9, v10, v0}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1337
    .restart local v13       #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1339
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v9}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1340
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v10, 0x14

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "The peer tried to open an unsupported channel type ("

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v10, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public msgChannelOpenConfirmation([BI)V
    .locals 6
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1525
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 1527
    .local v1, sm:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1529
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_0

    .line 1530
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1531
    iget v4, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1530
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :cond_0
    monitor-enter v0

    .line 1535
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1536
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1537
    iget v4, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1536
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1533
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1539
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1540
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1541
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1542
    const/4 v2, 0x2

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1543
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1533
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1547
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_OPEN_CONFIRMATION (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / remote: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1548
    iget v5, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1547
    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1549
    :cond_2
    return-void
.end method

.method public msgChannelOpenFailure([BI)V
    .locals 13
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1553
    const/4 v9, 0x5

    if-ge p2, v9, :cond_0

    .line 1554
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SSH_MSG_CHANNEL_OPEN_FAILURE message has wrong size ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1556
    :cond_0
    new-instance v8, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1558
    .local v8, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1559
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v5

    .line 1561
    .local v5, id:I
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1563
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1564
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected SSH_MSG_CHANNEL_OPEN_FAILURE message for non-existent channel "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1566
    :cond_1
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1567
    .local v6, reasonCode:I
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1569
    .local v2, description:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1571
    .local v7, reasonCodeSymbolicName:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1586
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UNKNOWN REASON CODE ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1589
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1590
    .local v3, descriptionBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1592
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lt v4, v9, :cond_3

    .line 1601
    monitor-enter v0

    .line 1603
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1604
    const/4 v9, 0x4

    iput v9, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1605
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The server refused to open the channel ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1606
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1605
    invoke-virtual {v0, v9}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v9}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1611
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v10, 0x32

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Got SSH_MSG_CHANNEL_OPEN_FAILURE (channel "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1612
    :cond_2
    return-void

    .line 1574
    .end local v3           #descriptionBuffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    :pswitch_0
    const-string v7, "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED"

    .line 1575
    goto :goto_0

    .line 1577
    :pswitch_1
    const-string v7, "SSH_OPEN_CONNECT_FAILED"

    .line 1578
    goto :goto_0

    .line 1580
    :pswitch_2
    const-string v7, "SSH_OPEN_UNKNOWN_CHANNEL_TYPE"

    .line 1581
    goto :goto_0

    .line 1583
    :pswitch_3
    const-string v7, "SSH_OPEN_RESOURCE_SHORTAGE"

    .line 1584
    goto :goto_0

    .line 1594
    .restart local v3       #descriptionBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1596
    .local v1, cc:C
    const/16 v9, 0x20

    if-lt v1, v9, :cond_4

    const/16 v9, 0x7e

    if-gt v1, v9, :cond_4

    .line 1592
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1598
    :cond_4
    const v9, 0xfffd

    invoke-virtual {v3, v4, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 1601
    .end local v1           #cc:C
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public msgChannelRequest([BI)V
    .locals 12
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v8, 0x0

    invoke-direct {v5, p1, v8, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1347
    .local v5, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1348
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 1350
    .local v2, id:I
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1352
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_0

    .line 1353
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected SSH_MSG_CHANNEL_REQUEST message for non-existent channel "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1355
    :cond_0
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1356
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v7

    .line 1358
    .local v7, wantReply:Z
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1359
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v9, 0x50

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got SSH_MSG_CHANNEL_REQUEST (channel "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\')"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1361
    :cond_1
    const-string v8, "exit-status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1363
    if-eqz v7, :cond_2

    .line 1364
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1366
    :cond_2
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 1368
    .local v1, exit_status:I
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1369
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1371
    :cond_3
    monitor-enter v0

    .line 1373
    :try_start_0
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v8, v0, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1378
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got EXIT STATUS (channel "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1427
    .end local v1           #exit_status:I
    :cond_4
    :goto_0
    return-void

    .line 1371
    .restart local v1       #exit_status:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1383
    .end local v1           #exit_status:I
    :cond_5
    const-string v8, "exit-signal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1385
    if-eqz v7, :cond_6

    .line 1386
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1388
    :cond_6
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, signame:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 1390
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1391
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1393
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1394
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1396
    :cond_7
    monitor-enter v0

    .line 1398
    :try_start_2
    iput-object v4, v0, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 1399
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1396
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1402
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1403
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got EXIT SIGNAL (channel "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", signal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 1396
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 1412
    .end local v4           #signame:Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    .line 1414
    const/4 v8, 0x5

    new-array v3, v8, [B

    .line 1416
    .local v3, reply:[B
    const/4 v8, 0x0

    const/16 v9, 0x64

    aput-byte v9, v3, v8

    .line 1417
    const/4 v8, 0x1

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1418
    const/4 v8, 0x2

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1419
    const/4 v8, 0x3

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1420
    const/4 v8, 0x4

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1422
    iget-object v8, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v8, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1425
    .end local v3           #reply:[B
    :cond_9
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1426
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v9, 0x32

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Channel request \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is not known, ignoring it"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public msgChannelSuccess([BI)V
    .locals 6
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1481
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1482
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_SUCCESS message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_0
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1486
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1488
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1489
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_SUCCESS message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1491
    :cond_1
    monitor-enter v0

    .line 1493
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1498
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_SUCCESS (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1499
    :cond_2
    return-void

    .line 1491
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 11
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v9, 0xffffffffL

    .line 1177
    const/16 v5, 0x9

    if-eq p2, v5, :cond_0

    .line 1178
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1180
    :cond_0
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 1181
    .local v3, id:I
    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 1183
    .local v4, windowChange:I
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1185
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1186
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected SSH_MSG_CHANNEL_WINDOW_ADJUST message for non-existent channel "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1188
    :cond_1
    monitor-enter v0

    .line 1190
    const-wide v1, 0xffffffffL

    .line 1192
    .local v1, huge:J
    :try_start_0
    iget-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v7, v4

    and-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1196
    iget-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 1197
    const-wide v5, 0xffffffffL

    iput-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1199
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    sget-object v5, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v5}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1203
    sget-object v5, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v6, 0x50

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1204
    :cond_3
    return-void

    .line 1188
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public msgGlobalFailure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1652
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v1

    .line 1654
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 1655
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1660
    :cond_0
    return-void

    .line 1652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public msgGlobalRequest([BI)V
    .locals 8
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1618
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, p1, v5, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1620
    .local v2, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1621
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, requestName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v3

    .line 1624
    .local v3, wantReply:Z
    if-eqz v3, :cond_0

    .line 1626
    const/4 v4, 0x1

    new-array v0, v4, [B

    .line 1627
    .local v0, reply_failure:[B
    const/16 v4, 0x52

    aput-byte v4, v0, v5

    .line 1629
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1634
    .end local v0           #reply_failure:[B
    :cond_0
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1635
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x50

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got SSH_MSG_GLOBAL_REQUEST ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1636
    :cond_1
    return-void
.end method

.method public msgGlobalSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v1

    .line 1642
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 1643
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1648
    :cond_0
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;
    .locals 9
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .parameter "originator_IP_address"
    .parameter "originator_port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    new-instance v8, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v8, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 584
    .local v8, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v8

    .line 586
    :try_start_0
    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v1

    iput v1, v8, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 584
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    new-instance v0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;

    iget v1, v8, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v2, v8, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 591
    iget v3, v8, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 590
    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 593
    .local v0, dtc:Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 595
    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 597
    return-object v8

    .line 584
    .end local v0           #dtc:Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public openSessionChannel()Lcom/trilead/ssh2/channel/Channel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 604
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0

    .line 606
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v2

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 604
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending SSH_MSG_CHANNEL_OPEN (Channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 613
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;

    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 614
    .local v1, smo:Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 616
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 618
    return-object v0

    .line 604
    .end local v1           #smo:Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    .locals 3
    .parameter "thr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too late, this connection is closed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 575
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 571
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    return-void
.end method

.method public requestCancelGlobalForward(I)V
    .locals 7
    .parameter "bindPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v2, 0x0

    .line 501
    .local v2, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    move-object v2, v0

    .line 505
    if-nez v2, :cond_0

    .line 506
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sorry, there is no known remote forwarding for remote port "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 501
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 511
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 509
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 514
    new-instance v1, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;

    const/4 v3, 0x1

    iget-object v4, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 515
    iget v5, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 514
    invoke-direct {v1, v3, v4, v5}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 516
    .local v1, pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 518
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requesting cancelation of remote forward (\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 523
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The server denied the request."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    :catchall_1
    move-exception v3

    .line 528
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 531
    :try_start_4
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 533
    throw v3

    .line 509
    .end local v1           #pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 528
    .restart local v1       #pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :cond_2
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 531
    :try_start_7
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    monitor-exit v4

    .line 535
    return-void

    .line 528
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.method public requestChannelAgentForwarding(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)Z
    .locals 5
    .parameter "c"
    .parameter "authAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 542
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    if-eqz v2, :cond_0

    .line 545
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Auth agent already exists"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 547
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->authAgent:Lcom/trilead/ssh2/AuthAgentCallback;

    .line 542
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 552
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 550
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    const-string v4, "Requesting agent forwarding"

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 558
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-direct {v0, v2}, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;-><init>(I)V

    .line 559
    .local v0, aar:Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 561
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 562
    const/4 p2, 0x0

    .line 566
    :goto_0
    return v1

    .line 550
    .end local v0           #aar:Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 566
    .restart local v0       #aar:Lcom/trilead/ssh2/packets/PacketChannelAuthAgentReq;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8
    .parameter "bindAddress"
    .parameter "bindPort"
    .parameter "targetAddress"
    .parameter "targetPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    invoke-direct {v3}, Lcom/trilead/ssh2/channel/RemoteForwardingData;-><init>()V

    .line 452
    .local v3, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    iput-object p1, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 453
    iput p2, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 454
    iput-object p3, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 455
    iput p4, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 457
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v5

    .line 459
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 461
    .local v1, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 463
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "There is already a forwarding for remote port "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 457
    .end local v1           #key:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 466
    .restart local v1       #key:Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v5

    .line 471
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 469
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 474
    new-instance v2, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1, p2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 475
    .local v2, pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 477
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v5, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Requesting a remote forwarding (\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 482
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v4

    if-nez v4, :cond_2

    .line 483
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server denied the request (did you enable port forwarding?)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v5

    .line 489
    :try_start_4
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 491
    throw v0

    .line 469
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 487
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4

    .line 494
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    return p2
.end method

.method public requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V
    .locals 10
    .parameter "c"
    .parameter "term"
    .parameter "term_width_characters"
    .parameter "term_height_characters"
    .parameter "term_width_pixels"
    .parameter "term_height_pixels"
    .parameter "terminal_modes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    monitor-enter p1

    .line 689
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 690
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot request PTY on this channel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 692
    :cond_0
    :try_start_1
    new-instance v0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;-><init>(IZLjava/lang/String;IIII[B)V

    .line 695
    .local v0, spr:Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;
    const/4 v1, 0x0

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 687
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 700
    :try_start_2
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot request PTY on this channel ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 702
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->getPayload()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 698
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 707
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 708
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 710
    :catch_0
    move-exception v9

    .line 712
    .local v9, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PTY request failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 714
    .end local v9           #e:Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public requestShell(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 848
    monitor-enter p1

    .line 850
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 851
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot start shell on this channel ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 853
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionStartShell;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;-><init>(IZ)V

    .line 855
    .local v1, sm:Lcom/trilead/ssh2/packets/PacketSessionStartShell;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 848
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    iget-object v3, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 860
    :try_start_2
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 861
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot start shell on this channel ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 862
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->getPayload()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 858
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 868
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 870
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The shell request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 874
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public resizePTY(Lcom/trilead/ssh2/channel/Channel;IIII)V
    .locals 6
    .parameter "c"
    .parameter "term_width_characters"
    .parameter "term_height_characters"
    .parameter "term_width_pixels"
    .parameter "term_height_pixels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    monitor-enter p1

    .line 722
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 723
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot request PTY on this channel ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 726
    :cond_0
    :try_start_1
    new-instance v0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;-><init>(IIIII)V

    .line 728
    .local v0, spr:Lcom/trilead/ssh2/packets/PacketSessionPtyResize;
    const/4 v1, 0x0

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 721
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_2
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v1, :cond_1

    .line 733
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot request PTY on this channel ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 735
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->getPayload()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 731
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 737
    return-void
.end method

.method public sendData(Lcom/trilead/ssh2/channel/Channel;[BII)V
    .locals 9
    .parameter "c"
    .parameter "buffer"
    .parameter "pos"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 374
    :goto_0
    if-gtz p4, :cond_0

    .line 445
    return-void

    .line 376
    :cond_0
    const/4 v2, 0x0

    .line 379
    .local v2, thislen:I
    monitor-enter p1

    .line 383
    :goto_1
    :try_start_0
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v3, v8, :cond_1

    .line 384
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH channel is closed. ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 386
    :cond_1
    :try_start_1
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v3, v7, :cond_2

    .line 387
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH channel in strange state. ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_2
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 403
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v5, p4

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    move v2, p4

    .line 405
    :goto_2
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->getPacketOverheadEstimate()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    sub-int v0, v3, v4

    .line 409
    .local v0, estimatedMaxDataLen:I
    if-gtz v0, :cond_3

    .line 411
    const/4 v0, 0x1

    .line 414
    :cond_3
    if-le v2, v0, :cond_4

    .line 415
    move v2, v0

    .line 417
    :cond_4
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 419
    add-int/lit8 v3, v2, 0x9

    new-array v1, v3, [B

    .line 421
    .local v1, msg:[B
    const/4 v3, 0x0

    const/16 v4, 0x5e

    aput-byte v4, v1, v3

    .line 422
    const/4 v3, 0x1

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 423
    const/4 v3, 0x2

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 424
    const/4 v3, 0x3

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 425
    const/4 v3, 0x4

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 426
    const/4 v3, 0x5

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 427
    const/4 v3, 0x6

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 428
    const/4 v3, 0x7

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 429
    const/16 v3, 0x8

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 431
    const/16 v3, 0x9

    invoke-static {p2, p3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    iget-object v4, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v4

    .line 436
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_7

    .line 437
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH channel is closed. ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 394
    .end local v0           #estimatedMaxDataLen:I
    .end local v1           #msg:[B
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 396
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 403
    :cond_6
    :try_start_4
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    long-to-int v2, v3

    goto/16 :goto_2

    .line 439
    .restart local v0       #estimatedMaxDataLen:I
    .restart local v1       #msg:[B
    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v3, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 434
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 442
    add-int/2addr p3, v2

    .line 443
    sub-int/2addr p4, v2

    goto/16 :goto_0
.end method

.method public sendEOF(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 325
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 327
    .local v0, msg:[B
    monitor-enter p1

    .line 329
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v1, v2, :cond_1

    .line 330
    monitor-exit p1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    .line 333
    const/4 v1, 0x1

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 334
    const/4 v1, 0x2

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 335
    const/4 v1, 0x3

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 336
    const/4 v1, 0x4

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 327
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_1
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v1, :cond_2

    .line 342
    monitor-exit v2

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 327
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 343
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 339
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sent EOF (Channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    monitor-enter p1

    .line 356
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 357
    monitor-exit p1

    .line 370
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v2, 0x2

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 361
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v5, p1, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .local v1, pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 364
    iget-object v3, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 366
    :try_start_2
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 367
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .end local v1           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 368
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v1       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->getPayload()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 364
    monitor-exit v3

    move-object v0, v1

    .line 370
    .end local v1           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 364
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v1       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 354
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_1
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 6
    .parameter "hexFakeCookie"
    .parameter "killChannels"

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "hexFakeCookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v4

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    monitor-exit v4

    .line 220
    if-nez p2, :cond_2

    .line 251
    :cond_1
    return-void

    .line 215
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 223
    :cond_2
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all X11 channels for the given fake cookie"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 228
    :cond_3
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 230
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 228
    .local v1, channel_copy:Ljava/util/Vector;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 235
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 237
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0

    .line 239
    :try_start_2
    iget-object v3, v0, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 240
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v1           #channel_copy:Ljava/util/Vector;
    .end local v2           #i:I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 237
    .restart local v0       #c:Lcom/trilead/ssh2/channel/Channel;
    .restart local v1       #channel_copy:Ljava/util/Vector;
    .restart local v2       #i:I
    :cond_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 245
    :try_start_5
    const-string v3, "Closing X11 channel since the corresponding session is closing"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    goto :goto_1

    .line 237
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3
.end method

.method public waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I
    .locals 10
    .parameter "c"
    .parameter "timeout"
    .parameter "condition_mask"

    .prologue
    const-wide/16 v8, 0x0

    .line 935
    const-wide/16 v1, 0x0

    .line 936
    .local v1, end_time:J
    const/4 v3, 0x0

    .line 938
    .local v3, end_time_set:Z
    monitor-enter p1

    .line 942
    :goto_0
    const/4 v0, 0x0

    .line 944
    .local v0, current_cond:I
    :try_start_0
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int v5, v6, v7

    .line 945
    .local v5, stdoutAvail:I
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int v4, v6, v7

    .line 947
    .local v4, stderrAvail:I
    if-lez v5, :cond_0

    .line 948
    or-int/lit8 v0, v0, 0x4

    .line 950
    :cond_0
    if-lez v4, :cond_1

    .line 951
    or-int/lit8 v0, v0, 0x8

    .line 953
    :cond_1
    iget-boolean v6, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz v6, :cond_2

    .line 954
    or-int/lit8 v0, v0, 0x10

    .line 956
    :cond_2
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 957
    or-int/lit8 v0, v0, 0x20

    .line 959
    :cond_3
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 960
    or-int/lit8 v0, v0, 0x40

    .line 962
    :cond_4
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 963
    or-int/lit8 v6, v0, 0x2

    or-int/lit8 v6, v6, 0x10

    monitor-exit p1

    move v0, v6

    .line 980
    .end local v0           #current_cond:I
    :goto_1
    return v0

    .line 965
    .restart local v0       #current_cond:I
    :cond_5
    and-int v6, v0, p4

    if-eqz v6, :cond_6

    .line 966
    monitor-exit p1

    goto :goto_1

    .line 938
    .end local v4           #stderrAvail:I
    .end local v5           #stdoutAvail:I
    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 968
    .restart local v4       #stderrAvail:I
    .restart local v5       #stdoutAvail:I
    :cond_6
    cmp-long v6, p2, v8

    if-lez v6, :cond_7

    .line 970
    if-nez v3, :cond_8

    .line 972
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    add-long v1, v6, p2

    .line 973
    const/4 v3, 0x1

    .line 986
    :cond_7
    cmp-long v6, p2, v8

    if-lez v6, :cond_9

    .line 987
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 991
    :catch_0
    move-exception v6

    goto :goto_0

    .line 977
    :cond_8
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p2, v1, v6

    .line 979
    cmp-long v6, p2, v8

    if-gtz v6, :cond_7

    .line 980
    or-int/lit8 v6, v0, 0x1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    goto :goto_1

    .line 989
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
