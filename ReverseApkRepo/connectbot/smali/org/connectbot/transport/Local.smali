.class public Lorg/connectbot/transport/Local;
.super Lorg/connectbot/transport/AbsTransport;
.source "Local.java"


# instance fields
.field private is:Ljava/io/FileInputStream;

.field private os:Ljava/io/FileOutputStream;

.field private shellFd:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/connectbot/transport/AbsTransport;-><init>()V

    .line 57
    return-void
.end method

.method public static getFormatHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "local"

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "input"

    .prologue
    .line 176
    const-string v1, "local:#Local"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, uri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.Local"

    const-string v2, "Couldn\'t close shell"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connect()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 90
    new-array v3, v8, [I

    .line 93
    .local v3, pids:[I
    :try_start_0
    const-string v5, "/system/bin/sh"

    const-string v6, "-"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v3}, Lcom/google/ase/Exec;->createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lorg/connectbot/transport/Local;->shellFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v5, 0x0

    aget v4, v3, v5

    .line 101
    .local v4, shellPid:I
    new-instance v1, Lorg/connectbot/transport/Local$1;

    invoke-direct {v1, p0, v4}, Lorg/connectbot/transport/Local$1;-><init>(Lorg/connectbot/transport/Local;I)V

    .line 109
    .local v1, exitWatcher:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    .local v2, exitWatcherThread:Ljava/lang/Thread;
    const-string v5, "LocalExitWatcher"

    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v8}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 114
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/connectbot/transport/Local;->shellFd:Ljava/io/FileDescriptor;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v5, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    .line 115
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lorg/connectbot/transport/Local;->shellFd:Ljava/io/FileDescriptor;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v5, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    .line 117
    iget-object v5, p0, Lorg/connectbot/transport/Local;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v5}, Lorg/connectbot/service/TerminalBridge;->onConnected()V

    .line 118
    .end local v1           #exitWatcher:Ljava/lang/Runnable;
    .end local v2           #exitWatcherThread:Ljava/lang/Thread;
    .end local v4           #shellPid:I
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lorg/connectbot/transport/Local;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v6, p0, Lorg/connectbot/transport/Local;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v6, v6, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v7, 0x7f0800ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 96
    const-string v5, "ConnectBot.Local"

    const-string v6, "Cannot start local shell"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;
    .locals 5
    .parameter "uri"

    .prologue
    .line 187
    new-instance v0, Lorg/connectbot/bean/HostBean;

    invoke-direct {v0}, Lorg/connectbot/bean/HostBean;-><init>()V

    .line 189
    .local v0, host:Lorg/connectbot/bean/HostBean;
    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/connectbot/bean/HostBean;->setProtocol(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, nickname:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 193
    :cond_0
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v4

    .line 193
    invoke-virtual {p0, v2, v3, v4}, Lorg/connectbot/transport/Local;->getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    return-void
.end method

.method public getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "username"
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 127
    const-string v0, "local:#Local"

    return-object v0
.end method

.method public getSelectionArgs(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, selection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "protocol"

    const-string v1, "local"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "nickname"

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "buffer"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/connectbot/transport/Local;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/connectbot/transport/Local;->is:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public setDimensions(IIII)V
    .locals 3
    .parameter "columns"
    .parameter "rows"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Local;->shellFd:Ljava/io/FileDescriptor;

    invoke-static {v1, p2, p1, p3, p4}, Lcom/google/ase/Exec;->setPtyWindowSize(Ljava/io/FileDescriptor;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.Local"

    const-string v2, "Couldn\'t resize pty"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public usesNetwork()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public write(I)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/connectbot/transport/Local;->os:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    :cond_0
    return-void
.end method
