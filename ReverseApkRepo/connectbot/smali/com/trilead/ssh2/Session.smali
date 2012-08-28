.class public Lcom/trilead/ssh2/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field cn:Lcom/trilead/ssh2/channel/Channel;

.field flag_closed:Z

.field flag_execution_started:Z

.field flag_pty_requested:Z

.field flag_x11_requested:Z

.field final rnd:Ljava/security/SecureRandom;

.field x11FakeCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "cm"
    .parameter "rnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 29
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 30
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 31
    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 40
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/ChannelManager;->openSessionChannel()Lcom/trilead/ssh2/channel/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    .line 41
    iput-object p2, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 511
    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 514
    monitor-exit p0

    .line 529
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 518
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v2, "Closed due to user request"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 525
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized requestAuthAgentForwarding(Lcom/trilead/ssh2/AuthAgentCallback;)Z
    .locals 2
    .parameter "agent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    :try_start_4
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelAgentForwarding(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/AuthAgentCallback;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public requestPTY(Ljava/lang/String;IIII[B)V
    .locals 8
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
    const/4 v1, 0x1

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TERM cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 107
    array-length v0, p6

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p6, v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal terminal modes description, does not end in zero byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-array p6, v1, [B

    .line 113
    :cond_2
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A PTY was already requested."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_5

    .line 123
    new-instance v0, Ljava/io/IOException;

    .line 124
    const-string v1, "Cannot request PTY at this stage anymore, a remote execution has already started."

    .line 123
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_pty_requested:Z

    .line 113
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/trilead/ssh2/channel/ChannelManager;->requestPTY(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;IIII[B)V

    .line 131
    return-void
.end method

.method public resizePTY(IIII)V
    .locals 6
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
    .line 153
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/channel/ChannelManager;->resizePTY(Lcom/trilead/ssh2/channel/Channel;IIII)V

    .line 161
    return-void
.end method

.method public startShell()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    .line 292
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 295
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 289
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestShell(Lcom/trilead/ssh2/channel/Channel;)V

    .line 302
    return-void
.end method

.method public waitForCondition(IJ)I
    .locals 2
    .parameter "condition_set"
    .parameter "timeout"

    .prologue
    .line 465
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be non-negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result v0

    return v0
.end method
