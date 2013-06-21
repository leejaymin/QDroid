.class public Lcom/trilead/ssh2/channel/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lcom/trilead/ssh2/transport/MessageHandler;


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
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
    .line 39
    const-class v0, Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    .line 46
    iput v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    .line 47
    iput-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 48
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 49
    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 59
    iput-object p1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 60
    const/16 v0, 0x50

    invoke-virtual {p1, p0, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V

    .line 61
    return-void
.end method

.method private addChannel(Lcom/trilead/ssh2/channel/Channel;)I
    .locals 3
    .parameter "c"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 98
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->nextLocalChannel:I

    monitor-exit v0

    return v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getChannel(I)Lcom/trilead/ssh2/channel/Channel;
    .locals 4
    .parameter "id"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 67
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 65
    monitor-exit v2

    .line 74
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 70
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v3, p1, :cond_1

    .line 71
    monitor-exit v2

    move-object v2, v0

    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeChannel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 79
    :goto_1
    monitor-exit v2

    .line 91
    return-void

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 84
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    if-ne v3, p1, :cond_1

    .line 86
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 79
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 81
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
    const/4 v3, 0x1

    .line 164
    monitor-enter p1

    .line 166
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-nez v1, :cond_4

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-ne v1, v3, :cond_4

    .line 188
    monitor-exit p1

    move v1, v3

    .line 191
    :goto_1
    return v1

    .line 168
    :cond_1
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 170
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, detail:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
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

    .line 164
    .end local v0           #detail:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 180
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0

    .line 190
    :cond_4
    :try_start_2
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    if-ne v1, v3, :cond_5

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    if-nez v1, :cond_5

    .line 191
    monitor-exit p1

    const/4 v1, 0x0

    goto :goto_1

    .line 193
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state. The server sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
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

    .line 193
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
    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 135
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-ne v1, v2, :cond_3

    .line 152
    monitor-exit v0

    move v0, v2

    .line 155
    :goto_1
    return v0

    .line 137
    :cond_1
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    if-eqz v1, :cond_2

    .line 139
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The connection is being shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 144
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0

    .line 154
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    if-nez v1, :cond_4

    .line 155
    monitor-exit v0

    const/4 v0, 0x0

    goto :goto_1

    .line 157
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal state. The server sent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
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

    .line 157
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 104
    monitor-enter p1

    .line 106
    :goto_0
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 117
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 119
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 121
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, detail:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
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

    .line 104
    .end local v0           #detail:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 104
    :cond_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    return-void
.end method


# virtual methods
.method public checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;
    .locals 2
    .parameter "hexFakeCookie"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 253
    if-eqz p1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/trilead/ssh2/channel/X11ServerData;

    monitor-exit v0

    move-object v0, p0

    .line 256
    :goto_0
    return-object v0

    .line 251
    .restart local p0
    :cond_0
    monitor-exit v0

    .line 256
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeAllChannels()V
    .locals 7

    .prologue
    const-string v6, "Closing all channels"

    .line 261
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all channels"

    invoke-virtual {v3, v4, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 266
    .local v1, channel_copy:Ljava/util/Vector;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 282
    return-void

    .line 266
    .end local v1           #channel_copy:Ljava/util/Vector;
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 273
    .restart local v1       #channel_copy:Ljava/util/Vector;
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 276
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    :try_start_2
    const-string v3, "Closing all channels"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
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
    .line 286
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 288
    .local v0, msg:[B
    monitor-enter p1

    .line 290
    if-eqz p3, :cond_0

    .line 292
    const/4 v1, 0x4

    :try_start_0
    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 296
    :cond_0
    invoke-virtual {p1, p2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    .line 299
    const/4 v1, 0x1

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 300
    const/4 v1, 0x2

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 301
    const/4 v1, 0x3

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 302
    const/4 v1, 0x4

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_1
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_2

    .line 310
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 288
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 311
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 312
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 307
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
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

    .line 307
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
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
    .line 970
    monitor-enter p1

    .line 974
    if-eqz p2, :cond_0

    .line 975
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int v0, v1, v2

    .line 979
    .local v0, avail:I
    :goto_0
    if-lez v0, :cond_1

    move v1, v0

    :goto_1
    monitor-exit p1

    return v1

    .line 977
    .end local v0           #avail:I
    :cond_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int v0, v1, v2

    .restart local v0       #avail:I
    goto :goto_0

    .line 979
    :cond_1
    iget-boolean v1, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 970
    .end local v0           #avail:I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChannelData(Lcom/trilead/ssh2/channel/Channel;Z[BII)I
    .locals 19
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
    .line 985
    const/4 v5, 0x0

    .line 986
    .local v5, copylen:I
    const/4 v6, 0x0

    .line 987
    .local v6, increment:I
    const/4 v10, 0x0

    .line 988
    .local v10, remoteID:I
    const/4 v7, 0x0

    .line 990
    .local v7, localID:I
    monitor-enter p1

    .line 992
    const/4 v12, 0x0

    .line 993
    .local v12, stdoutAvail:I
    const/4 v11, 0x0

    .line 1002
    .local v11, stderrAvail:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v14, v0

    sub-int v12, v13, v14

    .line 1003
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v14, v0

    sub-int v11, v13, v14

    .line 1005
    if-nez p2, :cond_2

    if-eqz v12, :cond_2

    .line 1027
    :cond_0
    if-nez p2, :cond_7

    .line 1029
    move v0, v12

    move/from16 v1, p5

    if-le v0, v1, :cond_6

    move/from16 v5, p5

    .line 1030
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v14, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1031
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v13, v0

    add-int/2addr v13, v5

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 1033
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move v14, v0

    if-eq v13, v14, :cond_1

    .line 1035
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move/from16 v17, v0

    .line 1036
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1035
    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    move v14, v0

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1039
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    .line 1056
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    move v13, v0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_a

    .line 1057
    monitor-exit p1

    move v13, v5

    .line 1102
    :goto_3
    return v13

    .line 1008
    :cond_2
    if-eqz p2, :cond_3

    if-nez v11, :cond_0

    .line 1013
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    move v13, v0

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    move v13, v0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    .line 1014
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, -0x1

    goto :goto_3

    .line 1018
    :cond_5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1020
    :catch_0
    move-exception v13

    goto/16 :goto_0

    :cond_6
    move v5, v12

    .line 1029
    goto/16 :goto_1

    .line 1043
    :cond_7
    move v0, v11

    move/from16 v1, p5

    if-le v0, v1, :cond_9

    move/from16 v5, p5

    .line 1044
    .restart local v5       #copylen:I
    :goto_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v14, v0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move/from16 v3, p4

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1045
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v13, v0

    add-int/2addr v13, v5

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    .line 1047
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move v14, v0

    if-eq v13, v14, :cond_8

    .line 1049
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    move-object v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move/from16 v17, v0

    .line 1050
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1049
    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1052
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move v13, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    move v14, v0

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 1053
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    goto/16 :goto_2

    .line 990
    :catchall_0
    move-exception v13

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    :cond_9
    move v5, v11

    .line 1043
    goto :goto_4

    .line 1059
    :cond_a
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    move v13, v0

    const/16 v14, 0x3a98

    if-ge v13, v14, :cond_b

    .line 1061
    const/16 v13, 0x7530

    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    move v14, v0

    sub-int/2addr v13, v14

    const/16 v14, 0x7530

    .line 1062
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    move v15, v0

    sub-int/2addr v14, v15

    .line 1061
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1064
    .local v8, minFreeSpace:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    move v13, v0

    sub-int v6, v8, v13

    .line 1065
    move v0, v8

    move-object/from16 v1, p1

    iput v0, v1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 1068
    .end local v8           #minFreeSpace:I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    move v10, v0

    .line 1069
    move-object/from16 v0, p1

    iget v0, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    move v7, v0

    .line 990
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1078
    if-lez v6, :cond_e

    .line 1080
    sget-object v13, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v13}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1081
    sget-object v13, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v14, 0x50

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Sending SSH_MSG_CHANNEL_WINDOW_ADJUST (channel "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1083
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 1085
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    move-object v9, v0

    .line 1087
    .local v9, msg:[B
    const/4 v14, 0x0

    const/16 v15, 0x5d

    aput-byte v15, v9, v14

    .line 1088
    const/4 v14, 0x1

    shr-int/lit8 v15, v10, 0x18

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1089
    const/4 v14, 0x2

    shr-int/lit8 v15, v10, 0x10

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1090
    const/4 v14, 0x3

    shr-int/lit8 v15, v10, 0x8

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1091
    const/4 v14, 0x4

    int-to-byte v15, v10

    aput-byte v15, v9, v14

    .line 1092
    const/4 v14, 0x5

    shr-int/lit8 v15, v6, 0x18

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1093
    const/4 v14, 0x6

    shr-int/lit8 v15, v6, 0x10

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1094
    const/4 v14, 0x7

    shr-int/lit8 v15, v6, 0x8

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    .line 1095
    const/16 v14, 0x8

    int-to-byte v15, v6

    aput-byte v15, v9, v14

    .line 1097
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    move v14, v0

    if-nez v14, :cond_d

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v14, v0

    invoke-virtual {v14, v9}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 1083
    :cond_d
    monitor-exit v13

    .end local v9           #msg:[B
    :cond_e
    move v13, v5

    .line 1102
    goto/16 :goto_3

    .line 1083
    :catchall_1
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14
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

    .line 1615
    if-nez p1, :cond_3

    .line 1617
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1618
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "HandleMessage: got shutdown"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1620
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v3

    .line 1622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1627
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    .line 1620
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 1632
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->shutdown:Z

    .line 1634
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 1652
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->setSize(I)V

    .line 1653
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->trimToSize()V

    .line 1654
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1655
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1706
    .end local v1           #i:I
    :goto_2
    return-void

    .line 1624
    .restart local v1       #i:I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/channel/IChannelWorkerThread;

    .line 1625
    .local v2, lat:Lcom/trilead/ssh2/channel/IChannelWorkerThread;
    invoke-interface {v2}, Lcom/trilead/ssh2/channel/IChannelWorkerThread;->stopWorking()V

    .line 1622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1620
    .end local v2           #lat:Lcom/trilead/ssh2/channel/IChannelWorkerThread;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1636
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 1637
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1639
    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1640
    const/4 v4, 0x4

    iput v4, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1641
    const-string v4, "The connection is being shutdown"

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1642
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1648
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1637
    monitor-exit v0

    .line 1634
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1637
    :catchall_1
    move-exception v4

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4

    .line 1630
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 1659
    .end local v1           #i:I
    :cond_3
    aget-byte v3, p1, v6

    packed-switch v3, :pswitch_data_0

    .line 1704
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

    .line 1662
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenConfirmation([BI)V

    goto :goto_2

    .line 1665
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelWindowAdjust([BI)V

    goto :goto_2

    .line 1668
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelData([BI)V

    goto :goto_2

    .line 1671
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelExtendedData([BI)V

    goto :goto_2

    .line 1674
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelRequest([BI)V

    goto :goto_2

    .line 1677
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelEOF([BI)V

    goto :goto_2

    .line 1680
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpen([BI)V

    goto :goto_2

    .line 1683
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelClose([BI)V

    goto :goto_2

    .line 1686
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelSuccess([BI)V

    goto :goto_2

    .line 1689
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelFailure([BI)V

    goto :goto_2

    .line 1692
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgChannelOpenFailure([BI)V

    goto :goto_2

    .line 1695
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalRequest([BI)V

    goto/16 :goto_2

    .line 1698
    :pswitch_d
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalSuccess()V

    goto/16 :goto_2

    .line 1701
    :pswitch_e
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->msgGlobalFailure()V

    goto/16 :goto_2

    .line 1659
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
    .locals 7
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

    const-string v6, ")"

    .line 1404
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1405
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_CLOSE message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1407
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

    .line 1409
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1411
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1412
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

    .line 1414
    :cond_1
    monitor-enter v0

    .line 1416
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1417
    const/4 v2, 0x4

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1418
    const-string v2, "Close requested by remote"

    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1419
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 1421
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->removeChannel(I)V

    .line 1423
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1427
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_CLOSE (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1428
    :cond_2
    return-void

    .line 1414
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelData([BI)V
    .locals 10
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/16 v6, 0x9

    const-string v7, ")"

    .line 1107
    if-gt p2, v6, :cond_0

    .line 1108
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong size ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1110
    :cond_0
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, p1, v8

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 1111
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

    .line 1113
    .local v2, len:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1115
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1116
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

    .line 1118
    :cond_1
    sub-int v3, p2, v6

    if-eq v2, v3, :cond_2

    .line 1119
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SSH_MSG_CHANNEL_DATA message has wrong len (calculated "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1120
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1119
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1122
    :cond_2
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1123
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

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1125
    :cond_3
    monitor-enter v0

    .line 1127
    :try_start_0
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v3, v9, :cond_4

    .line 1128
    monitor-exit v0

    .line 1143
    :goto_0
    return-void

    .line 1130
    :cond_4
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v3, v8, :cond_5

    .line 1131
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

    .line 1125
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1133
    :cond_5
    :try_start_1
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-ge v3, v2, :cond_6

    .line 1134
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Remote sent too much data, does not fit into window."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1136
    :cond_6
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 1138
    const/16 v3, 0x9

    iget-object v4, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutBuffer:[B

    iget v5, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1125
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelEOF([BI)V
    .locals 7
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v6, ")"

    .line 1382
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1383
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_EOF message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1385
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

    .line 1387
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1389
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1390
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

    .line 1392
    :cond_1
    monitor-enter v0

    .line 1394
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1395
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1399
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_EOF (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1400
    :cond_2
    return-void

    .line 1392
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelExtendedData([BI)V
    .locals 11
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xd

    const-string v8, ")"

    .line 848
    if-gt p2, v7, :cond_0

    .line 849
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong size ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 851
    :cond_0
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, p1, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, p1, v10

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 852
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

    .line 853
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

    .line 855
    .local v3, len:I
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 857
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 858
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

    .line 860
    :cond_1
    if-eq v1, v6, :cond_2

    .line 861
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has unknown type ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 863
    :cond_2
    sub-int v4, p2, v7

    if-eq v3, v4, :cond_3

    .line 864
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SSH_MSG_CHANNEL_EXTENDED_DATA message has wrong len (calculated "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v6, p2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 865
    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 864
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 867
    :cond_3
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 868
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

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 870
    :cond_4
    monitor-enter v0

    .line 872
    :try_start_0
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v4, v10, :cond_5

    .line 873
    monitor-exit v0

    .line 889
    :goto_0
    return-void

    .line 875
    :cond_5
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v4, v9, :cond_6

    .line 876
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got SSH_MSG_CHANNEL_EXTENDED_DATA, but channel is not in correct state ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    iget v6, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 876
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 870
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 879
    :cond_6
    :try_start_1
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    if-ge v4, v3, :cond_7

    .line 880
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Remote sent too much data, does not fit into window."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 882
    :cond_7
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 884
    const/16 v4, 0xd

    iget-object v5, v0, Lcom/trilead/ssh2/channel/Channel;->stderrBuffer:[B

    iget v6, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    invoke-static {p1, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 870
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public msgChannelFailure([BI)V
    .locals 7
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ")"

    .line 1454
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1455
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_FAILURE message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1457
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

    .line 1459
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1461
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1462
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

    .line 1464
    :cond_1
    monitor-enter v0

    .line 1466
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 1467
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_FAILURE (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1472
    :cond_2
    return-void

    .line 1464
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelOpen([BI)V
    .locals 20
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1178
    new-instance v19, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v10, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1180
    .local v19, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1181
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1182
    .local v12, channelType:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v14

    .line 1183
    .local v14, remoteID:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v16

    .line 1184
    .local v16, remoteWindow:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v15

    .line 1186
    .local v15, remoteMaxPacketSize:I
    const-string v10, "x11"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    move-object v10, v0

    monitor-enter v10

    .line 1192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 1194
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 1195
    const/4 v11, 0x1

    const-string v12, "X11 forwarding not activated"

    .end local v12           #channelType:Ljava/lang/String;
    const-string v15, ""

    .line 1194
    .end local v15           #remoteMaxPacketSize:I
    invoke-direct {v13, v14, v11, v12, v15}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1197
    .local v13, pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v11, v0

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1199
    sget-object v11, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v11}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1200
    sget-object v11, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v12, 0x14

    const-string v13, "Unexpected X11 request, denying it!"

    .end local v13           #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    invoke-virtual {v11, v12, v13}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1202
    :cond_0
    monitor-exit v10

    .line 1292
    .end local v14           #remoteID:I
    :cond_1
    :goto_0
    return-void

    .line 1188
    .restart local v12       #channelType:Ljava/lang/String;
    .restart local v14       #remoteID:I
    .restart local v15       #remoteMaxPacketSize:I
    :cond_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1207
    .local v8, remoteOriginatorAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v9

    .line 1209
    .local v9, remoteOriginatorPort:I
    new-instance v5, Lcom/trilead/ssh2/channel/Channel;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1211
    .local v5, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v5

    .line 1213
    :try_start_1
    iput v14, v5, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1214
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v10, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v5, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1215
    .end local v12           #channelType:Ljava/lang/String;
    iput v15, v5, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1216
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v10

    iput v10, v5, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1211
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1223
    new-instance v18, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V

    .line 1224
    .local v18, rxat:Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
    const/4 v10, 0x1

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->setDaemon(Z)V

    .line 1225
    invoke-virtual/range {v18 .. v18}, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->start()V

    goto :goto_0

    .line 1188
    .end local v15           #remoteMaxPacketSize:I
    .end local v8           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v9           #remoteOriginatorPort:I
    .end local v5           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v18           #rxat:Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1211
    .restart local v5       #c:Lcom/trilead/ssh2/channel/Channel;
    .restart local v8       #remoteOriginatorAddress:Ljava/lang/String;
    .restart local v9       #remoteOriginatorPort:I
    .restart local v15       #remoteMaxPacketSize:I
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 1230
    .end local v5           #c:Lcom/trilead/ssh2/channel/Channel;
    .end local v8           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v9           #remoteOriginatorPort:I
    .restart local v12       #channelType:Ljava/lang/String;
    :cond_3
    const-string v10, "forwarded-tcpip"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1232
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, remoteConnectedAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v7

    .line 1234
    .local v7, remoteConnectedPort:I
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1235
    .restart local v8       #remoteOriginatorAddress:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v9

    .line 1237
    .restart local v9       #remoteOriginatorPort:I
    const/16 v17, 0x0

    .line 1239
    .local v17, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    move-object v10, v0

    monitor-enter v10

    .line 1241
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    move-object v11, v0

    new-instance v12, Ljava/lang/Integer;

    .end local v12           #channelType:Ljava/lang/String;
    invoke-direct {v12, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    move-object/from16 v17, v0

    .line 1239
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1244
    if-nez v17, :cond_4

    .line 1246
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    .line 1247
    const/4 v10, 0x1

    .line 1248
    const-string v11, "No thanks, unknown port in forwarded-tcpip request"

    const-string v12, ""

    .line 1246
    invoke-direct {v13, v14, v10, v11, v12}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1252
    .restart local v13       #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v10, v0

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1254
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v10}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1255
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v11, 0x14

    const-string v12, "Unexpected forwarded-tcpip request, denying it!"

    invoke-virtual {v10, v11, v12}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1239
    .end local v13           #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    :catchall_2
    move-exception v11

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11

    .line 1260
    :cond_4
    new-instance v5, Lcom/trilead/ssh2/channel/Channel;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 1262
    .restart local v5       #c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v5

    .line 1264
    :try_start_6
    iput v14, v5, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1265
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v10, v0

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    iput-wide v10, v5, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1266
    iput v15, v5, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1267
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v10

    iput v10, v5, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 1262
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1274
    new-instance v4, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    .line 1275
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    move v11, v0

    .line 1274
    invoke-direct/range {v4 .. v11}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;-><init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 1277
    .local v4, rat:Lcom/trilead/ssh2/channel/RemoteAcceptThread;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->setDaemon(Z)V

    .line 1278
    invoke-virtual {v4}, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->start()V

    goto/16 :goto_0

    .line 1262
    .end local v4           #rat:Lcom/trilead/ssh2/channel/RemoteAcceptThread;
    :catchall_3
    move-exception v10

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v10

    .line 1285
    .end local v6           #remoteConnectedAddress:Ljava/lang/String;
    .end local v7           #remoteConnectedPort:I
    .end local v8           #remoteOriginatorAddress:Ljava/lang/String;
    .end local v9           #remoteOriginatorPort:I
    .end local v17           #rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    .end local v5           #c:Lcom/trilead/ssh2/channel/Channel;
    .restart local v12       #channelType:Ljava/lang/String;
    :cond_5
    new-instance v13, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;

    const/4 v10, 0x3

    .line 1286
    const-string v11, "Unknown channel type"

    const-string v15, ""

    .line 1285
    .end local v15           #remoteMaxPacketSize:I
    invoke-direct {v13, v14, v10, v11, v15}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1288
    .restart local v13       #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v10, v0

    invoke-virtual {v13}, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->getPayload()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1290
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v10}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1291
    sget-object v10, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v11, 0x14

    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13           #pcof:Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
    const-string v14, "The peer tried to open an unsupported channel type ("

    .end local v14           #remoteID:I
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .end local v12           #channelType:Ljava/lang/String;
    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

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
    .line 1476
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>([BII)V

    .line 1478
    .local v1, sm:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1480
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_0

    .line 1481
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for non-existent channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1482
    iget v4, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1481
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_0
    monitor-enter v0

    .line 1486
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1487
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected SSH_MSG_CHANNEL_OPEN_CONFIRMATION message for channel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1488
    iget v4, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1487
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1490
    :cond_1
    :try_start_1
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 1491
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1492
    iget v2, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 1493
    const/4 v2, 0x2

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1494
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1484
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1498
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

    .line 1499
    iget v5, v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1498
    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1500
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
    .line 1504
    const/4 v9, 0x5

    if-ge p2, v9, :cond_0

    .line 1505
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

    .line 1507
    :cond_0
    new-instance v8, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v9, 0x0

    invoke-direct {v8, p1, v9, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1509
    .local v8, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1510
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v5

    .line 1512
    .local v5, id:I
    invoke-direct {p0, v5}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1514
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1515
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

    .line 1517
    :cond_1
    invoke-virtual {v8}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v6

    .line 1518
    .local v6, reasonCode:I
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1520
    .local v2, description:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1522
    .local v7, reasonCodeSymbolicName:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1537
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

    .line 1540
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1541
    .local v3, descriptionBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lt v4, v9, :cond_3

    .line 1552
    monitor-enter v0

    .line 1554
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, v0, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    .line 1555
    const/4 v9, 0x4

    iput v9, v0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 1556
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "The server refused to open the channel ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1557
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1556
    invoke-virtual {v0, v9}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1552
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    sget-object v9, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v9}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1562
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

    .line 1563
    :cond_2
    return-void

    .line 1525
    .end local v3           #descriptionBuffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    :pswitch_0
    const-string v7, "SSH_OPEN_ADMINISTRATIVELY_PROHIBITED"

    .line 1526
    .restart local v7       #reasonCodeSymbolicName:Ljava/lang/String;
    goto :goto_0

    .line 1528
    :pswitch_1
    const-string v7, "SSH_OPEN_CONNECT_FAILED"

    .line 1529
    .restart local v7       #reasonCodeSymbolicName:Ljava/lang/String;
    goto :goto_0

    .line 1531
    :pswitch_2
    const-string v7, "SSH_OPEN_UNKNOWN_CHANNEL_TYPE"

    .line 1532
    .restart local v7       #reasonCodeSymbolicName:Ljava/lang/String;
    goto :goto_0

    .line 1534
    :pswitch_3
    const-string v7, "SSH_OPEN_RESOURCE_SHORTAGE"

    .line 1535
    .restart local v7       #reasonCodeSymbolicName:Ljava/lang/String;
    goto :goto_0

    .line 1545
    .restart local v3       #descriptionBuffer:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1547
    .local v1, cc:C
    const/16 v9, 0x20

    if-lt v1, v9, :cond_4

    const/16 v9, 0x7e

    if-gt v1, v9, :cond_4

    .line 1543
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1549
    :cond_4
    const v9, 0xfffd

    invoke-virtual {v3, v4, v9}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 1552
    .end local v1           #cc:C
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1522
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
    .line 1296
    new-instance v5, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v8, 0x0

    invoke-direct {v5, p1, v8, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1298
    .local v5, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1299
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    .line 1301
    .local v2, id:I
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1303
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_0

    .line 1304
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

    .line 1306
    :cond_0
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1307
    .local v6, type:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v7

    .line 1309
    .local v7, wantReply:Z
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1310
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

    .line 1312
    :cond_1
    const-string v8, "exit-status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1314
    if-eqz v7, :cond_2

    .line 1315
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1317
    :cond_2
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v1

    .line 1319
    .local v1, exit_status:I
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1320
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1322
    :cond_3
    monitor-enter v0

    .line 1324
    :try_start_0
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v8, v0, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 1325
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1322
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1329
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

    .line 1378
    .end local v1           #exit_status:I
    :cond_4
    :goto_0
    return-void

    .line 1322
    .restart local v1       #exit_status:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1334
    .end local v1           #exit_status:I
    :cond_5
    const-string v8, "exit-signal"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1336
    if-eqz v7, :cond_6

    .line 1337
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message, \'want reply\' is true"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1339
    :cond_6
    const-string v8, "US-ASCII"

    invoke-virtual {v5, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1340
    .local v4, signame:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 1341
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1342
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 1344
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1345
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Badly formatted SSH_MSG_CHANNEL_REQUEST message"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1347
    :cond_7
    monitor-enter v0

    .line 1349
    :try_start_2
    iput-object v4, v0, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1347
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1353
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1354
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

    .line 1347
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 1363
    .end local v4           #signame:Ljava/lang/String;
    :cond_8
    if-eqz v7, :cond_9

    .line 1365
    const/4 v8, 0x5

    new-array v3, v8, [B

    .line 1367
    .local v3, reply:[B
    const/4 v8, 0x0

    const/16 v9, 0x64

    aput-byte v9, v3, v8

    .line 1368
    const/4 v8, 0x1

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1369
    const/4 v8, 0x2

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1370
    const/4 v8, 0x3

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1371
    const/4 v8, 0x4

    iget v9, v0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 1373
    iget-object v8, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v8, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1376
    .end local v3           #reply:[B
    :cond_9
    sget-object v8, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1377
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
    .locals 7
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, ")"

    .line 1432
    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    .line 1433
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSH_MSG_CHANNEL_SUCCESS message has wrong size ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1435
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

    .line 1437
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1439
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1440
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

    .line 1442
    :cond_1
    monitor-enter v0

    .line 1444
    :try_start_0
    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 1445
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1449
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got SSH_MSG_CHANNEL_SUCCESS (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1450
    :cond_2
    return-void

    .line 1442
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public msgChannelWindowAdjust([BI)V
    .locals 12
    .parameter "msg"
    .parameter "msglen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v9, 0xffffffffL

    const-string v11, ")"

    .line 1147
    const/16 v5, 0x9

    if-eq p2, v5, :cond_0

    .line 1148
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SSH_MSG_CHANNEL_WINDOW_ADJUST message has wrong size ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1150
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

    .line 1151
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

    .line 1153
    .local v4, windowChange:I
    invoke-direct {p0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->getChannel(I)Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    .line 1155
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    if-nez v0, :cond_1

    .line 1156
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

    .line 1158
    :cond_1
    monitor-enter v0

    .line 1160
    const-wide v1, 0xffffffffL

    .line 1162
    .local v1, huge:J
    :try_start_0
    iget-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v7, v4

    and-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1166
    iget-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 1167
    const-wide v5, 0xffffffffL

    iput-wide v5, v0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 1169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    sget-object v5, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v5}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1173
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

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1174
    :cond_3
    return-void

    .line 1158
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
    .line 1603
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 1605
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    .line 1606
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1609
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1611
    :cond_0
    return-void

    .line 1603
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    .line 1569
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, p1, v5, p2}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 1571
    .local v2, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 1572
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, requestName:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result v3

    .line 1575
    .local v3, wantReply:Z
    if-eqz v3, :cond_0

    .line 1577
    const/4 v4, 0x1

    new-array v0, v4, [B

    .line 1578
    .local v0, reply_failure:[B
    const/16 v4, 0x52

    aput-byte v4, v0, v5

    .line 1580
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    .line 1585
    .end local v0           #reply_failure:[B
    :cond_0
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1586
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

    .line 1587
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
    .line 1591
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v0

    .line 1593
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 1594
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1591
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    sget-object v0, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v1, 0x50

    const-string v2, "Got SSH_MSG_REQUEST_SUCCESS"

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 1599
    :cond_0
    return-void

    .line 1591
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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
    .line 546
    new-instance v8, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v8, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 548
    .local v8, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v8

    .line 550
    :try_start_0
    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v1

    iput v1, v8, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 548
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    new-instance v0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;

    iget v1, v8, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v2, v8, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 555
    iget v3, v8, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 554
    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;-><init>(IIILjava/lang/String;ILjava/lang/String;I)V

    .line 557
    .local v0, dtc:Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 559
    invoke-direct {p0, v8}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 561
    return-object v8

    .line 548
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
    .line 566
    new-instance v0, Lcom/trilead/ssh2/channel/Channel;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;)V

    .line 568
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0

    .line 570
    :try_start_0
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->addChannel(Lcom/trilead/ssh2/channel/Channel;)I

    move-result v2

    iput v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
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

    .line 577
    :cond_0
    new-instance v1, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;

    iget v2, v0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v3, v0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v4, v0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;-><init>(III)V

    .line 578
    .local v1, smo:Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 580
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitUntilChannelOpen(Lcom/trilead/ssh2/channel/Channel;)V

    .line 582
    return-object v0

    .line 568
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
    .line 535
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreadsAllowed:Z

    if-nez v1, :cond_0

    .line 538
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Too late, this connection is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 539
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->listenerThreads:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 535
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    return-void
.end method

.method public registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V
    .locals 2
    .parameter "hexFakeCookie"
    .parameter "data"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v0

    .line 204
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 495
    const/4 v2, 0x0

    .line 497
    .local v2, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 499
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    move-object v2, v0

    .line 501
    if-nez v2, :cond_0

    .line 502
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

    .line 497
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

    .line 505
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 507
    const/4 v4, 0x0

    :try_start_2
    iput v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 505
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 510
    new-instance v1, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;

    const/4 v3, 0x1

    iget-object v4, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 511
    iget v5, v2, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 510
    invoke-direct {v1, v3, v4, v5}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 512
    .local v1, pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 514
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
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

    .line 519
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The server denied the request."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 523
    :catchall_1
    move-exception v3

    .line 524
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 527
    :try_start_4
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 529
    throw v3

    .line 505
    .end local v1           #pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 524
    .restart local v1       #pgcf:Lcom/trilead/ssh2/packets/PacketGlobalCancelForwardRequest;
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v3

    .line 527
    :try_start_7
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    monitor-exit v3

    .line 531
    return-void

    .line 524
    :catchall_4
    move-exception v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4
.end method

.method public requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot ping this channel ("

    const-string v2, ")"

    .line 616
    monitor-enter p1

    .line 618
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 619
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot ping this channel ("

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

    .line 616
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 621
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;-><init>(I)V

    .line 623
    .local v1, pctp:Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 616
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 628
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 629
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot ping this channel ("

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

    .line 626
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 630
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketChannelTrileadPing;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 626
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 635
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Your server is alive - but buggy. It replied with SSH_MSG_SESSION_SUCCESS when it actually should not."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 640
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 642
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The ping request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 644
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :cond_2
    return-void
.end method

.method public requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot execute command on this channel ("

    const-string v2, ")"

    .line 783
    monitor-enter p1

    .line 785
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 786
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot execute command on this channel ("

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

    .line 783
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 788
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;-><init>(IZLjava/lang/String;)V

    .line 790
    .local v1, sm:Lcom/trilead/ssh2/packets/PacketSessionExecCommand;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 783
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 795
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 796
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot execute command on this channel ("

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

    .line 793
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 797
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionExecCommand;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 793
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 800
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing command (channel "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 805
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 806
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 808
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 810
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The execute request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 812
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :cond_3
    return-void
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
    .line 446
    new-instance v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;

    invoke-direct {v3}, Lcom/trilead/ssh2/channel/RemoteForwardingData;-><init>()V

    .line 448
    .local v3, rfd:Lcom/trilead/ssh2/channel/RemoteForwardingData;
    iput-object p1, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindAddress:Ljava/lang/String;

    .line 449
    iput p2, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->bindPort:I

    .line 450
    iput-object p3, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetAddress:Ljava/lang/String;

    .line 451
    iput p4, v3, Lcom/trilead/ssh2/channel/RemoteForwardingData;->targetPort:I

    .line 453
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 455
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 457
    .local v1, key:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 459
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "There is already a forwarding for remote port "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 453
    .end local v1           #key:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 462
    .restart local v1       #key:Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v4

    .line 467
    const/4 v5, 0x0

    :try_start_2
    iput v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 465
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 470
    new-instance v2, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p1, p2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;-><init>(ZLjava/lang/String;I)V

    .line 471
    .local v2, pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 473
    sget-object v4, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v4}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 474
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

    .line 478
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v4

    if-nez v4, :cond_2

    .line 479
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server denied the request (did you enable port forwarding?)"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 481
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 483
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    monitor-enter v4

    .line 485
    :try_start_4
    iget-object v5, p0, Lcom/trilead/ssh2/channel/ChannelManager;->remoteForwardings:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 487
    throw v0

    .line 465
    .end local v2           #pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 483
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #pgf:Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .line 490
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    return p2
.end method

.method public requestGlobalTrileadPing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v2

    .line 589
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalFailedCounter:I

    iput v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->globalSuccessCounter:I

    .line 587
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    new-instance v1, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;-><init>()V

    .line 594
    .local v1, pgtp:Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 596
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    sget-object v2, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v3, 0x32

    const-string v4, "Sending SSH_MSG_GLOBAL_REQUEST \'trilead-ping\'."

    invoke-virtual {v2, v3, v4}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 601
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForGlobalRequestResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Your server is alive - but buggy. It replied with SSH_MSG_REQUEST_SUCCESS when it actually should not."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 606
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 608
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The ping request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 587
    .end local v1           #pgtp:Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 610
    .restart local v1       #pgtp:Lcom/trilead/ssh2/packets/PacketGlobalTrileadPing;
    :cond_1
    return-void
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
    .line 651
    monitor-enter p1

    .line 653
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 654
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

    .line 651
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 656
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

    .line 659
    .local v0, spr:Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;
    const/4 v1, 0x0

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 651
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_2
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 665
    new-instance v2, Ljava/io/IOException;

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

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 662
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 666
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 662
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 671
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 672
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 674
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 676
    .local v9, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PTY request failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 678
    .end local v9           #e:Ljava/io/IOException;
    .restart local p0
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
    const-string v2, "Cannot start shell on this channel ("

    const-string v2, ")"

    .line 818
    monitor-enter p1

    .line 820
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 821
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

    .line 818
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 823
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionStartShell;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;-><init>(IZ)V

    .line 825
    .local v1, sm:Lcom/trilead/ssh2/packets/PacketSessionStartShell;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 818
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 830
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 831
    new-instance v3, Ljava/io/IOException;

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

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 832
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionStartShell;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 828
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 837
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 838
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 840
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 842
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The shell request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 844
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :cond_2
    return-void
.end method

.method public requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "subSystemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot request subsystem on this channel ("

    const-string v2, ")"

    .line 751
    monitor-enter p1

    .line 753
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 754
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot request subsystem on this channel ("

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

    .line 751
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 756
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;-><init>(IZLjava/lang/String;)V

    .line 758
    .local v1, ssr:Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 751
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 763
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 764
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot request subsystem on this channel ("

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

    .line 761
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 765
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 761
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 770
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 771
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The server denied the request."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 773
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 775
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The subsystem request failed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 777
    .end local v0           #e:Ljava/io/IOException;
    .restart local p0
    :cond_2
    return-void
.end method

.method public requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "c"
    .parameter "singleConnection"
    .parameter "x11AuthenticationProtocol"
    .parameter "x11AuthenticationCookie"
    .parameter "x11ScreenNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "Cannot request X11 on this channel ("

    const-string v8, ")"

    .line 715
    monitor-enter p1

    .line 717
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 718
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot request X11 on this channel ("

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

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 720
    :cond_0
    :try_start_1
    new-instance v0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;

    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v2, 0x1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;-><init>(IZZLjava/lang/String;Ljava/lang/String;I)V

    .line 723
    .local v0, psr:Lcom/trilead/ssh2/packets/PacketSessionX11Request;
    const/4 v1, 0x0

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v1, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 715
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_2
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_1

    .line 729
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot request X11 on this channel ("

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

    .line 726
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 730
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 726
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 733
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting X11 forwarding (Channel "

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

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 738
    :cond_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 739
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The server denied the request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 741
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 743
    .local v7, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The X11 request failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 745
    .end local v7           #e:Ljava/io/IOException;
    .restart local p0
    :cond_3
    return-void
.end method

.method public resizePTY(Lcom/trilead/ssh2/channel/Channel;II)V
    .locals 6
    .parameter "c"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Cannot request PTY on this channel ("

    const-string v2, ")"

    .line 684
    monitor-enter p1

    .line 685
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 686
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot request PTY on this channel ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 686
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 689
    :cond_0
    :try_start_1
    new-instance v1, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;-><init>(IZII)V

    .line 690
    .local v1, spr:Lcom/trilead/ssh2/packets/PacketSessionPtyResize;
    const/4 v2, 0x0

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 684
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 694
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 695
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot request PTY on this channel ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 693
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 697
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 693
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 702
    :try_start_4
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForChannelRequestResult(Lcom/trilead/ssh2/channel/Channel;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 707
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "PTY request failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 704
    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0
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

    const-string v3, "SSH channel is closed. ("

    const-string v3, ")"

    .line 370
    :goto_0
    if-gtz p4, :cond_0

    .line 441
    return-void

    .line 372
    :cond_0
    const/4 v2, 0x0

    .line 375
    .local v2, thislen:I
    monitor-enter p1

    .line 379
    :goto_1
    :try_start_0
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-ne v3, v8, :cond_1

    .line 380
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

    .line 375
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 382
    :cond_1
    :try_start_1
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v3, v7, :cond_2

    .line 383
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

    .line 385
    :cond_2
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 399
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v5, p4

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    move v2, p4

    .line 401
    :goto_2
    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4}, Lcom/trilead/ssh2/transport/TransportManager;->getPacketOverheadEstimate()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    sub-int v0, v3, v4

    .line 405
    .local v0, estimatedMaxDataLen:I
    if-gtz v0, :cond_3

    .line 407
    const/4 v0, 0x1

    .line 410
    :cond_3
    if-le v2, v0, :cond_4

    .line 411
    move v2, v0

    .line 413
    :cond_4
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 415
    add-int/lit8 v3, v2, 0x9

    new-array v1, v3, [B

    .line 417
    .local v1, msg:[B
    const/4 v3, 0x0

    const/16 v4, 0x5e

    aput-byte v4, v1, v3

    .line 418
    const/4 v3, 0x1

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 419
    const/4 v3, 0x2

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 420
    const/4 v3, 0x3

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 421
    const/4 v3, 0x4

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 422
    const/4 v3, 0x5

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 423
    const/4 v3, 0x6

    shr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 424
    const/4 v3, 0x7

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 425
    const/16 v3, 0x8

    int-to-byte v4, v2

    aput-byte v4, v1, v3

    .line 427
    const/16 v3, 0x9

    invoke-static {p2, p3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    iget-object v3, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v3

    .line 432
    :try_start_2
    iget-boolean v4, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v4, :cond_7

    .line 433
    new-instance v4, Ljava/io/IOException;

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

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 430
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 390
    .end local v0           #estimatedMaxDataLen:I
    .end local v1           #msg:[B
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 392
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 399
    :cond_6
    :try_start_4
    iget-wide v3, p1, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    long-to-int v3, v3

    move v2, v3

    goto/16 :goto_2

    .line 435
    .restart local v0       #estimatedMaxDataLen:I
    .restart local v1       #msg:[B
    :cond_7
    :try_start_5
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v4, v1}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 430
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 438
    add-int/2addr p3, v2

    .line 439
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

    .line 321
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 323
    .local v0, msg:[B
    monitor-enter p1

    .line 325
    :try_start_0
    iget v1, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    if-eq v1, v2, :cond_1

    .line 326
    monitor-exit p1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    .line 329
    const/4 v1, 0x1

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 330
    const/4 v1, 0x2

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    const/4 v1, 0x3

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    const/4 v1, 0x4

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 323
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 335
    iget-object v1, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_1
    iget-boolean v2, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v2, :cond_2

    .line 338
    monitor-exit v1

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 323
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 339
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 335
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    sget-object v1, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
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
    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    monitor-enter p1

    .line 352
    :try_start_0
    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 353
    monitor-exit p1

    .line 366
    :goto_0
    return-void

    .line 355
    :cond_0
    const/4 v2, 0x2

    iput v2, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 357
    new-instance v1, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;

    iget v2, p1, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    iget v3, p1, Lcom/trilead/ssh2/channel/Channel;->localID:I

    iget v4, p1, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v5, p1, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .local v1, pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 360
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_2
    iget-boolean v3, p1, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-eqz v3, :cond_1

    .line 363
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 350
    .end local v1           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :catchall_0
    move-exception v2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 364
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    .restart local v1       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->getPayload()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 360
    monitor-exit v2

    move-object v0, v1

    .line 366
    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_0

    .line 360
    .end local v0           #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 350
    :catchall_2
    move-exception v2

    move-object v0, v1

    .restart local v0       #pcoc:Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
    goto :goto_1
.end method

.method public unRegisterX11Cookie(Ljava/lang/String;Z)V
    .locals 6
    .parameter "hexFakeCookie"
    .parameter "killChannels"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "hexFakeCookie may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    monitor-enter v3

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->x11_magic_cookies:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v3

    .line 216
    if-nez p2, :cond_2

    .line 247
    :cond_1
    return-void

    .line 211
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 219
    :cond_2
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v3}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    sget-object v3, Lcom/trilead/ssh2/channel/ChannelManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    const-string v5, "Closing all X11 channels for the given fake cookie"

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    monitor-enter v3

    .line 226
    :try_start_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/ChannelManager;->channels:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 224
    .local v1, channel_copy:Ljava/util/Vector;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 231
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/channel/Channel;

    .line 233
    .local v0, c:Lcom/trilead/ssh2/channel/Channel;
    monitor-enter v0

    .line 235
    :try_start_2
    iget-object v3, v0, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 236
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1           #channel_copy:Ljava/util/Vector;
    .end local v2           #i:I
    .end local v0           #c:Lcom/trilead/ssh2/channel/Channel;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 233
    .restart local v0       #c:Lcom/trilead/ssh2/channel/Channel;
    .restart local v1       #channel_copy:Ljava/util/Vector;
    .restart local v2       #i:I
    :cond_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 241
    :try_start_5
    const-string v3, "Closing X11 channel since the corresponding session is closing"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v3

    goto :goto_1

    .line 233
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

    .line 905
    const-wide/16 v1, 0x0

    .line 906
    .local v1, end_time:J
    const/4 v3, 0x0

    .line 908
    .local v3, end_time_set:Z
    monitor-enter p1

    .line 912
    :goto_0
    const/4 v0, 0x0

    .line 914
    .local v0, current_cond:I
    :try_start_0
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutWritepos:I

    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stdoutReadpos:I

    sub-int v5, v6, v7

    .line 915
    .local v5, stdoutAvail:I
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->stderrWritepos:I

    iget v7, p1, Lcom/trilead/ssh2/channel/Channel;->stderrReadpos:I

    sub-int v4, v6, v7

    .line 917
    .local v4, stderrAvail:I
    if-lez v5, :cond_0

    .line 918
    or-int/lit8 v0, v0, 0x4

    .line 920
    :cond_0
    if-lez v4, :cond_1

    .line 921
    or-int/lit8 v0, v0, 0x8

    .line 923
    :cond_1
    iget-boolean v6, p1, Lcom/trilead/ssh2/channel/Channel;->EOF:Z

    if-eqz v6, :cond_2

    .line 924
    or-int/lit8 v0, v0, 0x10

    .line 926
    :cond_2
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 927
    or-int/lit8 v0, v0, 0x20

    .line 929
    :cond_3
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 930
    or-int/lit8 v0, v0, 0x40

    .line 932
    :cond_4
    iget v6, p1, Lcom/trilead/ssh2/channel/Channel;->state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 933
    or-int/lit8 v6, v0, 0x2

    or-int/lit8 v6, v6, 0x10

    monitor-exit p1

    .line 950
    :goto_1
    return v6

    .line 935
    :cond_5
    and-int v6, v0, p4

    if-eqz v6, :cond_6

    .line 936
    monitor-exit p1

    move v6, v0

    goto :goto_1

    .line 938
    :cond_6
    cmp-long v6, p2, v8

    if-lez v6, :cond_7

    .line 940
    if-nez v3, :cond_8

    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    add-long v1, v6, p2

    .line 943
    const/4 v3, 0x1

    .line 956
    :cond_7
    cmp-long v6, p2, v8

    if-lez v6, :cond_9

    .line 957
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    move-exception v6

    goto :goto_0

    .line 947
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p2, v1, v6

    .line 949
    cmp-long v6, p2, v8

    if-gtz v6, :cond_7

    .line 950
    or-int/lit8 v6, v0, 0x1

    monitor-exit p1

    goto :goto_1

    .line 908
    .end local v5           #stdoutAvail:I
    .end local v4           #stderrAvail:I
    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 959
    .restart local v4       #stderrAvail:I
    .restart local v5       #stdoutAvail:I
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
