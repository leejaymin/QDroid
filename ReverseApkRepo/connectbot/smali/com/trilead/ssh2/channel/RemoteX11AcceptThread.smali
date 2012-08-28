.class public Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
.super Ljava/lang/Thread;
.source "RemoteX11AcceptThread.java"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V
    .locals 0
    .parameter "c"
    .parameter "remoteOriginatorAddress"
    .parameter "remoteOriginatorPort"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 32
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorPort:I

    .line 34
    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 42
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    move-result-object v13

    .line 47
    .local v13, remote_os:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    invoke-virtual {v3}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    move-result-object v6

    .line 81
    .local v6, remote_is:Ljava/io/InputStream;
    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v25, v0

    .line 83
    .local v25, header:[B
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 84
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v6           #remote_is:Ljava/io/InputStream;
    .end local v13           #remote_os:Ljava/io/OutputStream;
    .end local v25           #header:[B
    :catch_0
    move-exception v23

    .line 221
    .local v23, e:Ljava/io/IOException;
    sget-object v3, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "IOException in X11 proxy code: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 225
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "IOException in X11 proxy code ("

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v5, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 232
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    .end local v23           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 86
    .restart local v6       #remote_is:Ljava/io/InputStream;
    .restart local v13       #remote_os:Ljava/io/OutputStream;
    .restart local v25       #header:[B
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    aget-byte v3, v25, v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2

    const/4 v3, 0x0

    aget-byte v3, v25, v3

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_2

    .line 87
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown endian format in X11 message!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_2
    const/4 v3, 0x0

    aget-byte v3, v25, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_3

    const/16 v28, 0x0

    .line 95
    .local v28, idxMSB:I
    :goto_2
    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v21, v0

    .line 97
    .local v21, auth_buff:[B
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    .line 98
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    .end local v21           #auth_buff:[B
    .end local v28           #idxMSB:I
    :cond_3
    const/16 v28, 0x1

    goto :goto_2

    .line 100
    .restart local v21       #auth_buff:[B
    .restart local v28       #idxMSB:I
    :cond_4
    aget-byte v3, v21, v28

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v4, v28, 0x1

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    or-int v19, v3, v4

    .line 101
    .local v19, authProtocolNameLength:I
    add-int/lit8 v3, v28, 0x2

    aget-byte v3, v21, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    rsub-int/lit8 v4, v28, 0x3

    aget-byte v4, v21, v4

    and-int/lit16 v4, v4, 0xff

    or-int v16, v3, v4

    .line 103
    .local v16, authProtocolDataLength:I
    const/16 v3, 0x100

    move/from16 v0, v19

    if-gt v0, v3, :cond_5

    const/16 v3, 0x100

    move/from16 v0, v16

    if-le v0, v3, :cond_6

    .line 104
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Buggy X11 authorization data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_6
    rem-int/lit8 v3, v19, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v20, v3, 0x4

    .line 107
    .local v20, authProtocolNamePadding:I
    rem-int/lit8 v3, v16, 0x4

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v17, v3, 0x4

    .line 109
    .local v17, authProtocolDataPadding:I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 110
    .local v18, authProtocolName:[B
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 112
    .local v15, authProtocolData:[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v29, v0

    .line 114
    .local v29, paddingBuffer:[B
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move/from16 v0, v19

    if-eq v3, v0, :cond_7

    .line 115
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup! (authProtocolName)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v6, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move/from16 v0, v20

    if-eq v3, v0, :cond_8

    .line 118
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup! (authProtocolNamePadding)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_8
    invoke-virtual {v6, v15}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_9

    .line 121
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup! (authProtocolData)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v6, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_a

    .line 124
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected EOF on X11 startup! (authProtocolDataPadding)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_a
    const-string v3, "MIT-MAGIC-COOKIE-1"

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 127
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown X11 authorization protocol!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_b
    const/16 v3, 0x10

    move/from16 v0, v16

    if-eq v0, v3, :cond_c

    .line 130
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Wrong data length for X11 authorization data!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_c
    new-instance v31, Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 133
    .local v31, tmp:Ljava/lang/StringBuffer;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_3
    array-length v3, v15

    move/from16 v0, v27

    if-lt v0, v3, :cond_d

    .line 138
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 144
    .local v26, hexEncodedFakeCookie:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    monitor-enter v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 147
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 144
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    move-result-object v30

    .line 154
    .local v30, sd:Lcom/trilead/ssh2/channel/X11ServerData;
    if-nez v30, :cond_f

    .line 155
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid X11 cookie received."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    .end local v26           #hexEncodedFakeCookie:Ljava/lang/String;
    .end local v30           #sd:Lcom/trilead/ssh2/channel/X11ServerData;
    :cond_d
    aget-byte v3, v15, v27

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    .line 136
    .local v22, digit2:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .end local v22           #digit2:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 136
    .restart local v22       #digit2:Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v22

    goto :goto_4

    .line 144
    .end local v22           #digit2:Ljava/lang/String;
    .restart local v26       #hexEncodedFakeCookie:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3

    .line 162
    .restart local v30       #sd:Lcom/trilead/ssh2/channel/X11ServerData;
    :cond_f
    new-instance v3, Ljava/net/Socket;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 165
    .local v7, x11_os:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 169
    .local v12, x11_is:Ljava/io/InputStream;
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 171
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    if-nez v3, :cond_10

    .line 173
    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v24, v0

    .line 175
    .local v24, emptyAuthData:[B
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 190
    .end local v24           #emptyAuthData:[B
    :goto_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 194
    new-instance v2, Lcom/trilead/ssh2/channel/StreamForwarder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    const-string v8, "RemoteToX11"

    invoke-direct/range {v2 .. v8}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 195
    .local v2, r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    new-instance v8, Lcom/trilead/ssh2/channel/StreamForwarder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v14, "X11ToRemote"

    invoke-direct/range {v8 .. v14}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 199
    .local v8, l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/trilead/ssh2/channel/StreamForwarder;->setDaemon(Z)V

    .line 200
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->start()V

    .line 201
    invoke-virtual {v8}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 203
    :goto_6
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->isAlive()Z

    move-result v3

    if-nez v3, :cond_12

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    iget-object v3, v3, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    const-string v5, "EOF on both X11 streams reached."

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v5, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    goto/16 :goto_1

    .line 179
    .end local v2           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v8           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :cond_10
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    array-length v3, v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_11

    .line 180
    new-instance v3, Ljava/io/IOException;

    const-string v4, "The real X11 cookie has an invalid length!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 184
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 185
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v7, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v7, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    .line 207
    .restart local v2       #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .restart local v8       #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    :cond_12
    :try_start_8
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->join()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_6

    .line 209
    :catch_1
    move-exception v3

    goto :goto_6

    .line 235
    .end local v2           #r2l:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v6           #remote_is:Ljava/io/InputStream;
    .end local v7           #x11_os:Ljava/io/OutputStream;
    .end local v8           #l2r:Lcom/trilead/ssh2/channel/StreamForwarder;
    .end local v12           #x11_is:Ljava/io/InputStream;
    .end local v13           #remote_os:Ljava/io/OutputStream;
    .end local v15           #authProtocolData:[B
    .end local v16           #authProtocolDataLength:I
    .end local v17           #authProtocolDataPadding:I
    .end local v18           #authProtocolName:[B
    .end local v19           #authProtocolNameLength:I
    .end local v20           #authProtocolNamePadding:I
    .end local v21           #auth_buff:[B
    .end local v25           #header:[B
    .end local v26           #hexEncodedFakeCookie:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #idxMSB:I
    .end local v29           #paddingBuffer:[B
    .end local v30           #sd:Lcom/trilead/ssh2/channel/X11ServerData;
    .end local v31           #tmp:Ljava/lang/StringBuffer;
    .restart local v23       #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto/16 :goto_1

    .line 227
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method
