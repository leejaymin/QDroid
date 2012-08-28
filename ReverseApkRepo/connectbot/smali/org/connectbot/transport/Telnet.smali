.class public Lorg/connectbot/transport/Telnet;
.super Lorg/connectbot/transport/AbsTransport;
.source "Telnet.java"


# static fields
.field static final hostmask:Ljava/util/regex/Pattern;


# instance fields
.field private connected:Z

.field private handler:Lde/mud/telnet/TelnetProtocolHandler;

.field private height:I

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "^([0-9a-z.-]+)(:(\\d+))?$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/connectbot/transport/Telnet;->hostmask:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/connectbot/transport/AbsTransport;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/transport/Telnet;->connected:Z

    .line 71
    new-instance v0, Lorg/connectbot/transport/Telnet$1;

    invoke-direct {v0, p0}, Lorg/connectbot/transport/Telnet$1;-><init>(Lorg/connectbot/transport/Telnet;)V

    iput-object v0, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    .line 111
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/transport/Telnet;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lorg/connectbot/transport/Telnet;->width:I

    return v0
.end method

.method static synthetic access$1(Lorg/connectbot/transport/Telnet;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lorg/connectbot/transport/Telnet;->height:I

    return v0
.end method

.method static synthetic access$2(Lorg/connectbot/transport/Telnet;)Ljava/io/OutputStream;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static getFormatHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 318
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 319
    const v3, 0x7f08009b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 320
    const v3, 0x7f08009c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 318
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "telnet"

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "input"

    .prologue
    const/4 v7, 0x1

    .line 244
    sget-object v5, Lorg/connectbot/transport/Telnet;->hostmask:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 246
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 247
    const/4 v4, 0x0

    .line 278
    :goto_0
    return-object v4

    .line 249
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v5, "telnet"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 252
    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, portString:Ljava/lang/String;
    const/16 v1, 0x17

    .line 257
    .local v1, port:I
    if-eqz v2, :cond_2

    .line 259
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    if-lt v1, v7, :cond_1

    const v5, 0xffff

    if-le v1, v5, :cond_2

    .line 261
    :cond_1
    const/16 v1, 0x17

    .line 268
    :cond_2
    :goto_1
    const/16 v5, 0x17

    if-eq v1, v5, :cond_3

    .line 269
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_3
    const-string v5, "/#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 274
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 278
    .local v4, uri:Landroid/net/Uri;
    goto :goto_0

    .line 263
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/connectbot/transport/Telnet;->connected:Z

    .line 147
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.Telnet"

    const-string v2, "Error closing telnet socket."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/connectbot/transport/Telnet;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/connectbot/transport/Telnet;->connected:Z

    .line 133
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/transport/Telnet;->is:Ljava/io/InputStream;

    .line 134
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    .line 136
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->onConnected()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "ConnectBot.Telnet"

    const-string v2, "IO Exception connecting to host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.Telnet"

    const-string v2, "IO Exception connecting to host"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;
    .locals 6
    .parameter "uri"

    .prologue
    .line 283
    new-instance v0, Lorg/connectbot/bean/HostBean;

    invoke-direct {v0}, Lorg/connectbot/bean/HostBean;-><init>()V

    .line 285
    .local v0, host:Lorg/connectbot/bean/HostBean;
    const-string v3, "telnet"

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setProtocol(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setHostname(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 290
    .local v2, port:I
    if-gez v2, :cond_0

    .line 291
    const/16 v2, 0x17

    .line 292
    :cond_0
    invoke-virtual {v0, v2}, Lorg/connectbot/bean/HostBean;->setPort(I)V

    .line 294
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, nickname:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 296
    :cond_1
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v5

    .line 296
    invoke-virtual {p0, v3, v4, v5}, Lorg/connectbot/transport/Telnet;->getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/connectbot/bean/HostBean;->setNickname(Ljava/lang/String;)V

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
    .line 158
    iget-object v0, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 159
    return-void
.end method

.method public getDefaultNickname(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "username"
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    const/16 v0, 0x17

    if-ne p3, v0, :cond_0

    .line 237
    const-string v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionArgs(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
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
    .line 307
    .local p2, selection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "protocol"

    const-string v2, "telnet"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "nickname"

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "hostname"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    .line 312
    .local v0, port:I
    if-gez v0, :cond_0

    .line 313
    const/16 v0, 0x17

    .line 314
    :cond_0
    const-string v1, "port"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/connectbot/transport/Telnet;->connected:Z

    return v0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/connectbot/transport/Telnet;->connected:Z

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "buffer"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 182
    .local v0, n:I
    :cond_0
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    invoke-virtual {v2, p1, p2}, Lde/mud/telnet/TelnetProtocolHandler;->negotiate([BI)I

    move-result v0

    .line 183
    if-lez v0, :cond_1

    move v1, v0

    .line 202
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    return v1

    .line 185
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_1
    if-eqz v0, :cond_0

    .line 187
    :goto_1
    if-lez v0, :cond_2

    move v1, v0

    .line 202
    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0

    .line 189
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_2
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    invoke-virtual {v2, p1, p2}, Lde/mud/telnet/TelnetProtocolHandler;->negotiate([BI)I

    move-result v0

    .line 190
    if-lez v0, :cond_3

    move v1, v0

    .line 191
    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0

    .line 192
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_3
    if-eqz v0, :cond_2

    .line 193
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 194
    if-gez v0, :cond_4

    .line 195
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 196
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Remote end closed connection."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_4
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    invoke-virtual {v2, p1, p2, v0}, Lde/mud/telnet/TelnetProtocolHandler;->inputfeed([BII)V

    .line 200
    iget-object v2, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    invoke-virtual {v2, p1, p2}, Lde/mud/telnet/TelnetProtocolHandler;->negotiate([BI)I

    move-result v0

    goto :goto_1
.end method

.method public setDimensions(IIII)V
    .locals 3
    .parameter "columns"
    .parameter "rows"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->handler:Lde/mud/telnet/TelnetProtocolHandler;

    invoke-virtual {v1, p1, p2}, Lde/mud/telnet/TelnetProtocolHandler;->setWindowSize(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.Telnet"

    const-string v2, "Couldn\'t resize remote terminal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public usesNetwork()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public write(I)V
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/net/SocketException;
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/net/SocketException;
    iget-object v1, p0, Lorg/connectbot/transport/Telnet;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    goto :goto_0
.end method
