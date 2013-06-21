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
    .line 471
    monitor-enter p0

    .line 473
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 474
    monitor-exit p0

    .line 489
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    .line 478
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->unRegisterX11Cookie(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
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

    .line 471
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

    .line 485
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public execCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmd argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    monitor-enter p0

    .line 251
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 254
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_2

    .line 255
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 248
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestExecCommand(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitSignal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getExitStatus()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStderr()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdin()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStdout()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v0

    return-object v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
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

    .line 335
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestChannelTrileadPing(Lcom/trilead/ssh2/channel/Channel;)V

    .line 336
    return-void
.end method

.method public requestDumbPTY()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v1, "dumb"

    const/4 v6, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 53
    return-void
.end method

.method public requestPTY(Ljava/lang/String;)V
    .locals 7
    .parameter "term"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 64
    return-void
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

    sub-int/2addr v0, v1

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

.method public requestX11Forwarding(Ljava/lang/String;I[BZ)V
    .locals 11
    .parameter "hostname"
    .parameter "port"
    .parameter "cookie"
    .parameter "singleConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hostname argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    monitor-enter p0

    .line 169
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Ljava/io/IOException;

    const-string v1, "X11 forwarding was already requested."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_3

    .line 176
    new-instance v0, Ljava/io/IOException;

    .line 177
    const-string v1, "Cannot request X11 forwarding at this stage anymore, a remote execution has already started."

    .line 176
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_x11_requested:Z

    .line 166
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    new-instance v10, Lcom/trilead/ssh2/channel/X11ServerData;

    invoke-direct {v10}, Lcom/trilead/ssh2/channel/X11ServerData;-><init>()V

    .line 186
    .local v10, x11data:Lcom/trilead/ssh2/channel/X11ServerData;
    iput-object p1, v10, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 187
    iput p2, v10, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    .line 188
    iput-object p3, v10, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    .line 192
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 199
    .local v7, fakeCookie:[B
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 203
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 204
    .local v9, tmp:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v7

    if-lt v8, v0, :cond_6

    .line 209
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, hexEncodedFakeCookie:Ljava/lang/String;
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const-string v3, "MIT-MAGIC-COOKIE-1"

    const/4 v5, 0x0

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/channel/ChannelManager;->requestX11(Lcom/trilead/ssh2/channel/Channel;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 224
    monitor-enter p0

    .line 226
    :try_start_2
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-nez v0, :cond_5

    .line 228
    iput-object v4, p0, Lcom/trilead/ssh2/Session;->x11FakeCookie:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, v4, v10}, Lcom/trilead/ssh2/channel/ChannelManager;->registerX11Cookie(Ljava/lang/String;Lcom/trilead/ssh2/channel/X11ServerData;)V

    .line 224
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    return-void

    .line 206
    .end local v4           #hexEncodedFakeCookie:Ljava/lang/String;
    :cond_6
    aget-byte v0, v7, v8

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, digit2:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    move-object v0, v6

    :goto_1
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 207
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 224
    .end local v6           #digit2:Ljava/lang/String;
    .restart local v4       #hexEncodedFakeCookie:Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public resizePTY(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
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

    .line 141
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/trilead/ssh2/channel/ChannelManager;->resizePTY(Lcom/trilead/ssh2/channel/Channel;II)V

    .line 142
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
    .line 270
    monitor-enter p0

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_1

    .line 277
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 270
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestShell(Lcom/trilead/ssh2/channel/Channel;)V

    .line 283
    return-void
.end method

.method public startSubSystem(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name argument may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_closed:Z

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This session is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 303
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Ljava/io/IOException;

    const-string v1, "A remote execution has already started."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/trilead/ssh2/Session;->flag_execution_started:Z

    .line 297
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestSubSystem(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public waitForCondition(IJ)I
    .locals 2
    .parameter "condition_set"
    .parameter "timeout"

    .prologue
    .line 425
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be non-negative!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result v0

    return v0
.end method

.method public waitUntilDataAvailable(J)I
    .locals 4
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timeout must not be negative!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/Session;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Session;->cn:Lcom/trilead/ssh2/channel/Channel;

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->waitForCondition(Lcom/trilead/ssh2/channel/Channel;JI)I

    move-result v0

    .line 385
    .local v0, conditions:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 386
    const/4 v1, -0x1

    .line 394
    :goto_0
    return v1

    .line 388
    :cond_1
    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_2

    .line 389
    const/4 v1, 0x1

    goto :goto_0

    .line 393
    :cond_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 394
    const/4 v1, 0x0

    goto :goto_0

    .line 396
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected condition result ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
