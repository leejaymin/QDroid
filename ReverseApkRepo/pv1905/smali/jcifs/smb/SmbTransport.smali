.class public Ljcifs/smb/SmbTransport;
.super Ljcifs/util/transport/Transport;
.source "SmbTransport.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbTransport$ServerData;
    }
.end annotation


# static fields
.field static final BUF:[B

.field static final NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

.field static dfsRoots:Ljava/util/HashMap;

.field static log:Ljcifs/util/LogStream;


# instance fields
.field address:Ljcifs/UniAddress;

.field capabilities:I

.field digest:Ljcifs/smb/SigningDigest;

.field flags2:I

.field in:Ljava/io/InputStream;

.field key:Ljcifs/smb/SmbComBlankResponse;

.field localAddr:Ljava/net/InetAddress;

.field localPort:I

.field maxMpxCount:I

.field mid:I

.field out:Ljava/io/OutputStream;

.field port:I

.field rcv_buf_size:I

.field referrals:Ljava/util/LinkedList;

.field sbuf:[B

.field server:Ljcifs/smb/SmbTransport$ServerData;

.field sessionExpiration:J

.field sessionKey:I

.field sessions:Ljava/util/LinkedList;

.field snd_buf_size:I

.field socket:Ljava/net/Socket;

.field tconHostName:Ljava/lang/String;

.field useUnicode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const v0, 0xffff

    new-array v0, v0, [B

    sput-object v0, Ljcifs/smb/SmbTransport;->BUF:[B

    .line 36
    new-instance v0, Ljcifs/smb/SmbComNegotiate;

    invoke-direct {v0}, Ljcifs/smb/SmbComNegotiate;-><init>()V

    sput-object v0, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    .line 37
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Ljcifs/smb/SmbTransport;->dfsRoots:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V
    .locals 5
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljcifs/util/transport/Transport;-><init>()V

    .line 95
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    .line 96
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->referrals:Ljava/util/LinkedList;

    .line 99
    iput-object v4, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    .line 101
    new-instance v0, Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbTransport$ServerData;-><init>(Ljcifs/smb/SmbTransport;)V

    iput-object v0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    .line 103
    sget v0, Ljcifs/smb/SmbTransport;->FLAGS2:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 104
    sget v0, Ljcifs/smb/SmbTransport;->MAX_MPX_COUNT:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 105
    sget v0, Ljcifs/smb/SmbTransport;->SND_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 106
    sget v0, Ljcifs/smb/SmbTransport;->RCV_BUF_SIZE:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    .line 107
    sget v0, Ljcifs/smb/SmbTransport;->CAPABILITIES:I

    iput v0, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTransport;->sessionKey:I

    .line 109
    sget-boolean v0, Ljcifs/smb/SmbTransport;->USE_UNICODE:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 110
    iput-object v4, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    .line 114
    iput p2, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 115
    iput-object p3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    .line 116
    iput p4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    .line 117
    return-void
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;
    .locals 4
    .parameter "address"
    .parameter "port"

    .prologue
    .line 41
    const-class v1, Ljcifs/smb/SmbTransport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljcifs/smb/SmbTransport;->LADDR:Ljava/net/InetAddress;

    sget v2, Ljcifs/smb/SmbTransport;->LPORT:I

    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;
    .locals 10
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .parameter "hostName"

    .prologue
    .line 47
    const-class v8, Ljcifs/smb/SmbTransport;

    monitor-enter v8

    :try_start_0
    sget-object v9, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget v1, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 49
    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 50
    .local v7, iter:Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    .end local v7           #iter:Ljava/util/ListIterator;
    :cond_1
    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, p0, p1, p2, p3}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    .line 60
    .local v0, conn:Ljcifs/smb/SmbTransport;
    sget-object v1, Ljcifs/smb/SmbTransport;->CONNECTIONS:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 47
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    .line 63
    .end local v0           #conn:Ljcifs/smb/SmbTransport;
    .local v6, conn:Ljava/lang/Object;
    :goto_0
    monitor-exit v8

    return-object v6

    .line 51
    .end local v6           #conn:Ljava/lang/Object;
    .restart local v7       #iter:Ljava/util/ListIterator;
    :cond_2
    :try_start_2
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbTransport;

    .restart local v0       #conn:Ljcifs/smb/SmbTransport;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbTransport;->matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget v1, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-eqz v1, :cond_3

    iget-object v1, v0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget v2, Ljcifs/smb/SmbTransport;->SSN_LIMIT:I

    if-ge v1, v2, :cond_0

    .line 54
    :cond_3
    monitor-exit v9

    move-object v6, v0

    .restart local v6       #conn:Ljava/lang/Object;
    goto :goto_0

    .line 47
    .end local v0           #conn:Ljcifs/smb/SmbTransport;
    .end local v6           #conn:Ljava/lang/Object;
    .end local v7           #iter:Ljava/util/ListIterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method private negotiate(ILjcifs/smb/ServerMessageBlock;)V
    .locals 10
    .parameter "port"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v8, 0x6

    const/4 v7, 0x4

    .line 247
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    monitor-enter v3

    .line 248
    const/16 v2, 0x8b

    if-ne p1, v2, :cond_2

    .line 249
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->ssn139()V

    .line 271
    :goto_0
    iget v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v4, 0x7d00

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 272
    :cond_0
    sget-object v2, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget v4, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v4, v2, Ljcifs/smb/SmbComNegotiate;->mid:I

    .line 273
    sget-object v2, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljcifs/smb/SmbComNegotiate;->encode([BI)I

    move-result v0

    .line 274
    .local v0, n:I
    and-int v2, v0, v9

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 276
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_1

    .line 277
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v4, Ljcifs/smb/SmbTransport;->NEGOTIATE_REQUEST:Ljcifs/smb/SmbComNegotiate;

    invoke-virtual {v2, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 278
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_1

    .line 279
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 283
    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 284
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 288
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v2

    if-nez v2, :cond_5

    .line 289
    new-instance v2, Ljava/io/IOException;

    const-string v4, "transport closed in negotiate"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    .end local v0           #n:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 251
    :cond_2
    if-nez p1, :cond_3

    .line 252
    const/16 p1, 0x1bd

    .line 261
    :cond_3
    :try_start_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 262
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    .line 263
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 264
    :cond_4
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v5}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v5, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 265
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 267
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 268
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    goto/16 :goto_0

    .line 290
    .restart local v0       #n:I
    :cond_5
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v2

    and-int v1, v2, v9

    .line 291
    .local v1, size:I
    const/16 v2, 0x21

    if-lt v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x4

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    array-length v4, v4

    if-le v2, v4, :cond_7

    .line 292
    :cond_6
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid payload size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_7
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x24

    add-int/lit8 v6, v1, -0x20

    invoke-static {v2, v4, v5, v6}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 295
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v4, 0x4

    invoke-virtual {p2, v2, v4}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 297
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v7, :cond_8

    .line 298
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 299
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v8, :cond_8

    .line 300
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x4

    invoke-static {v2, v4, v5, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 247
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method


# virtual methods
.method __getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)[Ljcifs/smb/DfsReferral;
    .locals 15
    .parameter "auth"
    .parameter "path"
    .parameter "rn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual/range {p0 .. p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v9

    const-string v10, "IPC$"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v7

    .line 747
    .local v7, ipc:Ljcifs/smb/SmbTree;
    new-instance v8, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v8}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 748
    .local v8, resp:Ljcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v9, Ljcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v8}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 750
    if-eqz p3, :cond_0

    iget v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v9, v0, :cond_1

    .line 751
    :cond_0
    iget v0, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 754
    :cond_1
    move/from16 v0, p3

    new-array v4, v0, [Ljcifs/smb/DfsReferral;

    .line 755
    .local v4, drs:[Ljcifs/smb/DfsReferral;
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    .line 756
    .local v1, arr:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    .line 758
    .local v5, expiration:J
    const/4 v2, 0x0

    .local v2, di:I
    :goto_0
    array-length v9, v4

    if-lt v2, v9, :cond_2

    .line 777
    return-object v4

    .line 759
    :cond_2
    new-instance v3, Ljcifs/smb/DfsReferral;

    invoke-direct {v3}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 762
    .local v3, dr:Ljcifs/smb/DfsReferral;
    move-object/from16 v0, p1

    iget-boolean v9, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v9, v3, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 763
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v9, v9

    iput-wide v9, v3, Ljcifs/smb/DfsReferral;->ttl:J

    .line 764
    iput-wide v5, v3, Ljcifs/smb/DfsReferral;->expiration:J

    .line 765
    const-string v9, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 766
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget-object v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 773
    :goto_1
    iget v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v9, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 774
    aput-object v3, v4, v2

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_3
    iget-object v9, v8, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v9, v9, v2

    iget-object v9, v9, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v9, v1}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 769
    const/4 v9, 0x1

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 770
    const/4 v9, 0x2

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 771
    const/4 v9, 0x3

    aget-object v9, v1, v9

    iput-object v9, v3, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 5
    .parameter "req"
    .parameter "resp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 532
    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-static {v1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v1

    iput v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 533
    iget v1, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    sparse-switch v1, :sswitch_data_0

    .line 563
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 546
    :sswitch_0
    new-instance v1, Ljcifs/smb/SmbAuthException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v1

    .line 548
    :sswitch_1
    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 552
    :cond_0
    iget-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljcifs/smb/SmbTransport;->getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;

    move-result-object v0

    .line 553
    .local v0, dr:Ljcifs/smb/DfsReferral;
    if-nez v0, :cond_1

    .line 554
    new-instance v1, Ljcifs/smb/SmbException;

    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    invoke-direct {v1, v2, v4}, Ljcifs/smb/SmbException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 556
    :cond_1
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljcifs/smb/Dfs;->insert(Ljava/lang/String;Ljcifs/smb/DfsReferral;)V

    .line 557
    throw v0

    .line 565
    .end local v0           #dr:Ljcifs/smb/DfsReferral;
    :sswitch_2
    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    if-eqz v1, :cond_2

    .line 566
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Signature verification failed."

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_2
    return-void

    .line 533
    :sswitch_data_0
    .sparse-switch
        -0x7ffffffb -> :sswitch_2
        -0x3fffffea -> :sswitch_2
        -0x3fffffde -> :sswitch_0
        -0x3fffff96 -> :sswitch_0
        -0x3fffff93 -> :sswitch_0
        -0x3fffff92 -> :sswitch_0
        -0x3fffff91 -> :sswitch_0
        -0x3fffff90 -> :sswitch_0
        -0x3fffff8f -> :sswitch_0
        -0x3fffff8e -> :sswitch_0
        -0x3ffffe74 -> :sswitch_0
        -0x3ffffdcc -> :sswitch_0
        -0x3ffffda9 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 307
    :try_start_0
    sget v1, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v1, v1

    invoke-super {p0, v1, v2}, Ljcifs/util/transport/Transport;->connect(J)V
    :try_end_0
    .catch Ljcifs/util/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, te:Ljcifs/util/transport/TransportException;
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "result"

    .prologue
    .line 680
    const/4 v4, 0x0

    .local v4, ri:I
    array-length v7, p2

    add-int/lit8 v6, v7, -0x1

    .line 681
    .local v6, rlast:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, b:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v5, v4

    .line 684
    .end local v4           #ri:I
    .local v5, ri:I
    :goto_0
    if-ne v5, v6, :cond_1

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v6

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    move v4, v5

    .line 697
    .end local v5           #ri:I
    .restart local v4       #ri:I
    :cond_0
    return-void

    .line 688
    .end local v1           #i:I
    .end local v4           #ri:I
    .restart local v2       #i:I
    .restart local v5       #ri:I
    :cond_1
    if-eq v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_4

    .line 689
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ri:I
    .restart local v4       #ri:I
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p2, v5

    .line 690
    add-int/lit8 v0, v2, 0x1

    .line 692
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-lt v2, v3, :cond_3

    .line 694
    :goto_2
    array-length v7, p2

    if-ge v4, v7, :cond_0

    .line 695
    add-int/lit8 v5, v4, 0x1

    .end local v4           #ri:I
    .restart local v5       #ri:I
    const-string v7, ""

    aput-object v7, p2, v4

    move v4, v5

    .end local v5           #ri:I
    .restart local v4       #ri:I
    goto :goto_2

    :cond_3
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v5, v4

    .end local v4           #ri:I
    .restart local v5       #ri:I
    goto :goto_0

    :cond_4
    move v4, v5

    .end local v5           #ri:I
    .restart local v4       #ri:I
    goto :goto_1
.end method

.method protected doConnect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8b

    const/4 v7, 0x1

    const/16 v3, 0x1bd

    const/high16 v6, -0x8000

    .line 317
    new-instance v2, Ljcifs/smb/SmbComNegotiateResponse;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    invoke-direct {v2, v5}, Ljcifs/smb/SmbComNegotiateResponse;-><init>(Ljcifs/smb/SmbTransport$ServerData;)V

    .line 319
    .local v2, resp:Ljcifs/smb/SmbComNegotiateResponse;
    :try_start_0
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v5, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :goto_0
    iget v3, v2, Ljcifs/smb/SmbComNegotiateResponse;->dialectIndex:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_4

    .line 329
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "This client does not support the negotiated dialect."

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, ce:Ljava/net/ConnectException;
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_0

    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    iput v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 322
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 323
    .end local v0           #ce:Ljava/net/ConnectException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, nr:Ljava/net/NoRouteToHostException;
    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eqz v5, :cond_2

    iget v5, p0, Ljcifs/smb/SmbTransport;->port:I

    if-ne v5, v3, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    iput v3, p0, Ljcifs/smb/SmbTransport;->port:I

    .line 325
    iget v3, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-direct {p0, v3, v2}, Ljcifs/smb/SmbTransport;->negotiate(ILjcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 331
    .end local v1           #nr:Ljava/net/NoRouteToHostException;
    :cond_4
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-eq v3, v6, :cond_5

    .line 332
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 333
    sget v3, Ljcifs/smb/SmbTransport;->LM_COMPATIBILITY:I

    if-nez v3, :cond_5

    .line 334
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected encryption key length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v5, v5, Ljcifs/smb/SmbTransport$ServerData;->encryptionKeyLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    :cond_5
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Ljcifs/smb/SmbTransport$ServerData;->signaturesRequired:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v3, v3, Ljcifs/smb/SmbTransport$ServerData;->signaturesEnabled:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Ljcifs/smb/SmbTransport;->SIGNPREF:Z

    if-eqz v3, :cond_a

    .line 341
    :cond_6
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    .line 345
    :goto_1
    iget v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->maxMpxCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 346
    iget v3, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    if-ge v3, v7, :cond_7

    iput v7, p0, Ljcifs/smb/SmbTransport;->maxMpxCount:I

    .line 347
    :cond_7
    iget v3, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 348
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v4, v4, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 349
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->capabilities:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_8

    .line 350
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/2addr v3, v6

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 352
    :cond_8
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 354
    sget-boolean v3, Ljcifs/smb/SmbTransport;->FORCE_UNICODE:Z

    if-eqz v3, :cond_b

    .line 355
    iget v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    .line 361
    :cond_9
    :goto_2
    return-void

    .line 343
    :cond_a
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    const v4, 0xfffb

    and-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_1

    .line 357
    :cond_b
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    .line 358
    iget v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit16 v3, v3, 0x7fff

    iput v3, p0, Ljcifs/smb/SmbTransport;->flags2:I

    goto :goto_2
.end method

.method protected doDisconnect(Z)V
    .locals 4
    .parameter "hard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 365
    .local v0, iter:Ljava/util/ListIterator;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V

    .line 370
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 371
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 372
    iget-object v2, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 375
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 378
    return-void

    .line 366
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbSession;

    .line 367
    .local v1, ssn:Ljcifs/smb/SmbSession;
    invoke-virtual {v1, p1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    .end local v1           #ssn:Ljcifs/smb/SmbSession;
    :catchall_0
    move-exception v2

    .line 374
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 375
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 376
    iput-object v3, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 377
    throw v2
.end method

.method protected doRecv(Ljcifs/util/transport/Response;)V
    .locals 14
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v9, -0x8000

    const/4 v7, 0x0

    const/4 v13, 0x4

    .line 472
    move-object v5, p1

    check-cast v5, Ljcifs/smb/ServerMessageBlock;

    .line 473
    .local v5, resp:Ljcifs/smb/ServerMessageBlock;
    iget-boolean v8, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v8, v5, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 474
    iget v8, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput-boolean v7, v5, Ljcifs/smb/ServerMessageBlock;->extendedSecurity:Z

    .line 476
    sget-object v8, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v8

    .line 477
    :try_start_0
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v9, 0x0

    sget-object v10, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v11, 0x0

    const/16 v12, 0x24

    invoke-static {v7, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x2

    invoke-static {v7, v9}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v7

    const v9, 0xffff

    and-int v6, v7, v9

    .line 479
    .local v6, size:I
    const/16 v7, 0x21

    if-lt v6, v7, :cond_1

    add-int/lit8 v7, v6, 0x4

    iget v9, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v7, v9, :cond_2

    .line 480
    :cond_1
    new-instance v7, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid payload size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 476
    .end local v6           #size:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 482
    .restart local v6       #size:I
    :cond_2
    :try_start_1
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v9, 0x9

    invoke-static {v7, v9}, Ljcifs/util/Encdec;->dec_uint32le([BI)I

    move-result v7

    and-int/lit8 v1, v7, -0x1

    .line 483
    .local v1, errorCode:I
    iget-byte v7, v5, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v9, 0x2e

    if-ne v7, v9, :cond_8

    .line 484
    if-eqz v1, :cond_3

    .line 485
    const v7, -0x7ffffffb

    if-ne v1, v7, :cond_8

    .line 486
    :cond_3
    move-object v0, v5

    check-cast v0, Ljcifs/smb/SmbComReadAndXResponse;

    move-object v4, v0

    .line 487
    .local v4, r:Ljcifs/smb/SmbComReadAndXResponse;
    const/16 v2, 0x20

    .line 489
    .local v2, off:I
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    const/16 v11, 0x1b

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    add-int/lit8 v2, v2, 0x1b

    .line 490
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 492
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataOffset:I

    add-int/lit8 v3, v7, -0x3b

    .line 493
    .local v3, pad:I
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->byteCount:I

    if-lez v7, :cond_4

    if-lez v3, :cond_4

    if-ge v3, v13, :cond_4

    .line 494
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x3f

    invoke-static {v7, v9, v10, v3}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 496
    :cond_4
    iget v7, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-lez v7, :cond_5

    .line 497
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v9, v4, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v10, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v11, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 510
    .end local v2           #off:I
    .end local v3           #pad:I
    .end local v4           #r:Ljcifs/smb/SmbComReadAndXResponse;
    :cond_5
    :goto_0
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v7, :cond_6

    iget v7, v5, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v7, :cond_6

    .line 511
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-virtual {v7, v9, v10, v5}, Ljcifs/smb/SigningDigest;->verify([BILjcifs/smb/ServerMessageBlock;)Z

    .line 514
    :cond_6
    sget v7, Ljcifs/util/LogStream;->level:I

    if-lt v7, v13, :cond_7

    .line 515
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v7, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 516
    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x6

    if-lt v7, v9, :cond_7

    .line 517
    sget-object v7, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v10, 0x4

    invoke-static {v7, v9, v10, v6}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 476
    :cond_7
    monitor-exit v8

    .line 521
    return-void

    .line 499
    :cond_8
    iget-object v7, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    sget-object v9, Ljcifs/smb/SmbTransport;->BUF:[B

    const/16 v10, 0x24

    add-int/lit8 v11, v6, -0x20

    invoke-static {v7, v9, v10, v11}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    .line 500
    sget-object v7, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v9, 0x4

    invoke-virtual {v5, v7, v9}, Ljcifs/smb/ServerMessageBlock;->decode([BI)I

    .line 501
    instance-of v7, v5, Ljcifs/smb/SmbComTransactionResponse;

    if-eqz v7, :cond_5

    .line 502
    move-object v0, v5

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v7, v0

    invoke-virtual {v7}, Ljcifs/smb/SmbComTransactionResponse;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected doSend(Ljcifs/util/transport/Request;)V
    .locals 8
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 437
    sget-object v4, Ljcifs/smb/SmbTransport;->BUF:[B

    monitor-enter v4

    .line 438
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljcifs/smb/ServerMessageBlock;

    move-object v2, v0

    .line 439
    .local v2, smb:Ljcifs/smb/ServerMessageBlock;
    sget-object v3, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Ljcifs/smb/ServerMessageBlock;->encode([BI)I

    move-result v1

    .line 440
    .local v1, n:I
    const v3, 0xffff

    and-int/2addr v3, v1

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 441
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v7, :cond_2

    .line 443
    :cond_0
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 444
    instance-of v3, v2, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v3, :cond_1

    .line 445
    check-cast v2, Ljcifs/smb/AndXServerMessageBlock;

    .end local v2           #smb:Ljcifs/smb/ServerMessageBlock;
    iget-object v2, v2, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .restart local v2       #smb:Ljcifs/smb/ServerMessageBlock;
    if-nez v2, :cond_0

    .line 446
    :cond_1
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x6

    if-lt v3, v5, :cond_2

    .line 447
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x4

    invoke-static {v3, v5, v6, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 453
    :cond_2
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    sget-object v5, Ljcifs/smb/SmbTransport;->BUF:[B

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x4

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 437
    monitor-exit v4

    .line 455
    return-void

    .line 437
    .end local v1           #n:I
    .end local v2           #smb:Ljcifs/smb/ServerMessageBlock;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected doSend0(Ljcifs/util/transport/Request;)V
    .locals 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend(Ljcifs/util/transport/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, ioe:Ljava/io/IOException;
    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 461
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 463
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    :goto_0
    throw v0

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .local v1, ioe2:Ljava/io/IOException;
    sget-object v2, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected doSkip()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 524
    .local v0, size:I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    if-le v1, v2, :cond_1

    .line 526
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    add-int/lit8 v2, v0, -0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0
.end method

.method getDfsReferrals(Ljcifs/smb/NtlmPasswordAuthentication;Ljava/lang/String;I)Ljcifs/smb/DfsReferral;
    .locals 14
    .parameter "auth"
    .parameter "path"
    .parameter "rn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v8

    const-string v9, "IPC$"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    .line 702
    .local v6, ipc:Ljcifs/smb/SmbTree;
    new-instance v7, Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {v7}, Ljcifs/smb/Trans2GetDfsReferralResponse;-><init>()V

    .line 703
    .local v7, resp:Ljcifs/smb/Trans2GetDfsReferralResponse;
    new-instance v8, Ljcifs/smb/Trans2GetDfsReferral;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljcifs/smb/Trans2GetDfsReferral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v7}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 705
    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    if-nez v8, :cond_0

    .line 706
    const/4 v8, 0x0

    .line 741
    :goto_0
    return-object v8

    .line 707
    :cond_0
    if-eqz p3, :cond_1

    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 v0, p3

    if-ge v8, v0, :cond_2

    .line 708
    :cond_1
    iget v0, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->numReferrals:I

    move/from16 p3, v0

    .line 711
    :cond_2
    new-instance v3, Ljcifs/smb/DfsReferral;

    invoke-direct {v3}, Ljcifs/smb/DfsReferral;-><init>()V

    .line 713
    .local v3, dr:Ljcifs/smb/DfsReferral;
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/String;

    .line 714
    .local v1, arr:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Ljcifs/smb/Dfs;->TTL:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long v4, v8, v10

    .line 716
    .local v4, expiration:J
    const/4 v2, 0x0

    .line 720
    .local v2, di:I
    :goto_1
    iget-boolean v8, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-boolean v8, v3, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    .line 721
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    int-to-long v8, v8

    iput-wide v8, v3, Ljcifs/smb/DfsReferral;->ttl:J

    .line 722
    iput-wide v4, v3, Ljcifs/smb/DfsReferral;->expiration:J

    .line 723
    const-string v8, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 724
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 731
    :goto_2
    iget v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->pathConsumed:I

    iput v8, v3, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 733
    add-int/lit8 v2, v2, 0x1

    .line 734
    move/from16 v0, p3

    if-ne v2, v0, :cond_4

    .line 741
    iget-object v8, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    goto :goto_0

    .line 726
    :cond_3
    iget-object v8, v7, Ljcifs/smb/Trans2GetDfsReferralResponse;->referrals:[Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;

    aget-object v8, v8, v2

    iget-object v8, v8, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {p0, v8, v1}, Ljcifs/smb/SmbTransport;->dfsPathSplit(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    const/4 v8, 0x1

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 728
    const/4 v8, 0x2

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 729
    const/4 v8, 0x3

    aget-object v8, v1, v8

    iput-object v8, v3, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    goto :goto_2

    .line 737
    :cond_4
    new-instance v8, Ljcifs/smb/DfsReferral;

    invoke-direct {v8}, Ljcifs/smb/DfsReferral;-><init>()V

    invoke-virtual {v3, v8}, Ljcifs/smb/DfsReferral;->append(Ljcifs/smb/DfsReferral;)V

    .line 738
    iget-object v3, v3, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 717
    goto :goto_1
.end method

.method declared-synchronized getSmbSession()Ljcifs/smb/SmbSession;
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;
    .locals 10
    .parameter "auth"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 127
    .local v6, iter:Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    sget v1, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    if-lez v1, :cond_2

    iget-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .local v7, now:J
    cmp-long v1, v1, v7

    if-gez v1, :cond_2

    .line 137
    sget v1, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v1, v1

    add-long/2addr v1, v7

    iput-wide v1, p0, Ljcifs/smb/SmbTransport;->sessionExpiration:J

    .line 138
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .line 139
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 147
    .end local v7           #now:J
    :cond_2
    new-instance v0, Ljcifs/smb/SmbSession;

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    iget v2, p0, Ljcifs/smb/SmbTransport;->port:I

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v4, p0, Ljcifs/smb/SmbTransport;->localPort:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbSession;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 148
    .local v0, ssn:Ljcifs/smb/SmbSession;
    iput-object p0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 149
    iget-object v1, p0, Ljcifs/smb/SmbTransport;->sessions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    .line 151
    .end local v0           #ssn:Ljcifs/smb/SmbSession;
    .local v9, ssn:Ljava/lang/Object;
    :goto_1
    monitor-exit p0

    return-object v9

    .line 128
    .end local v9           #ssn:Ljava/lang/Object;
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    .line 129
    .restart local v0       #ssn:Ljcifs/smb/SmbSession;
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbSession;->matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iput-object p1, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object v9, v0

    .line 131
    .restart local v9       #ssn:Ljava/lang/Object;
    goto :goto_1

    .line 140
    .end local v0           #ssn:Ljcifs/smb/SmbSession;
    .end local v9           #ssn:Ljava/lang/Object;
    .restart local v7       #now:J
    :cond_4
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbSession;

    .line 141
    .restart local v0       #ssn:Ljcifs/smb/SmbSession;
    iget-wide v1, v0, Ljcifs/smb/SmbSession;->expiration:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #ssn:Ljcifs/smb/SmbSession;
    .end local v6           #iter:Ljava/util/ListIterator;
    .end local v7           #now:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method hasCapability(I)Z
    .locals 3
    .parameter "cap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    sget v1, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbTransport;->connect(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget v1, p0, Ljcifs/smb/SmbTransport;->capabilities:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1
    .parameter "auth"

    .prologue
    .line 175
    iget v0, p0, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq p1, v0, :cond_0

    .line 178
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 175
    goto :goto_0
.end method

.method protected makeKey(Ljcifs/util/transport/Request;)V
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    const/16 v1, 0x7d00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    .line 383
    :cond_0
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .end local p1
    iget v0, p0, Ljcifs/smb/SmbTransport;->mid:I

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 384
    return-void
.end method

.method matches(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Z
    .locals 2
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .parameter "hostName"

    .prologue
    .line 154
    if-nez p5, :cond_0

    .line 155
    invoke-virtual {p1}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    move-result-object p5

    .line 156
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {p1, v0}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    if-eqz p2, :cond_2

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    if-eq p2, v0, :cond_2

    .line 160
    const/16 v0, 0x1bd

    if-ne p2, v0, :cond_4

    iget v0, p0, Ljcifs/smb/SmbTransport;->port:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_4

    .line 161
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eq p3, v0, :cond_3

    .line 162
    if-eqz p3, :cond_4

    .line 163
    iget-object v0, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    invoke-virtual {p3, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    :cond_3
    iget v0, p0, Ljcifs/smb/SmbTransport;->localPort:I

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    .line 156
    goto :goto_0
.end method

.method protected peekKey()Ljcifs/util/transport/Request;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 388
    :cond_0
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v8, v7}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    .local v2, n:I
    if-ge v2, v7, :cond_2

    .line 433
    :cond_1
    :goto_0
    return-object v3

    .line 390
    :cond_2
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    const/16 v5, -0x7b

    if-eq v4, v5, :cond_0

    .line 392
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v9, :cond_1

    .line 394
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v7, :cond_3

    .line 395
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "New data read: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 396
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v4, v5, v7, v9}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 407
    :cond_3
    :goto_1
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v8

    if-nez v4, :cond_4

    .line 408
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_4

    .line 409
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v4, v4, v7

    if-ne v4, v10, :cond_4

    .line 410
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0x53

    if-ne v4, v5, :cond_4

    .line 411
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_4

    .line 412
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0x42

    if-ne v4, v5, :cond_4

    .line 425
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x22

    invoke-static {v4, v5}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, v3, Ljcifs/smb/SmbComBlankResponse;->mid:I

    .line 433
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->key:Ljcifs/smb/SmbComBlankResponse;

    goto :goto_0

    .line 417
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v4, 0x23

    if-lt v1, v4, :cond_5

    .line 421
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-eq v0, v10, :cond_1

    .line 422
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    const/16 v5, 0x23

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    goto :goto_1

    .line 418
    .end local v0           #b:I
    :cond_5
    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 13
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 573
    iget v9, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v10, p0, Ljcifs/smb/SmbTransport;->flags2:I

    or-int/2addr v9, v10

    iput v9, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 574
    iget-boolean v9, p0, Ljcifs/smb/SmbTransport;->useUnicode:Z

    iput-boolean v9, p1, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 575
    iput-object p2, p1, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 576
    iget-object v9, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-nez v9, :cond_0

    .line 577
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    iput-object v9, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 580
    :cond_0
    if-nez p2, :cond_1

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 664
    :goto_0
    return-void

    .line 583
    :cond_1
    instance-of v9, p1, Ljcifs/smb/SmbComTransaction;

    if-eqz v9, :cond_9

    .line 584
    iget-byte v9, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v9, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 585
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v4, v0

    .line 586
    .local v4, req:Ljcifs/smb/SmbComTransaction;
    move-object v0, p2

    check-cast v0, Ljcifs/smb/SmbComTransactionResponse;

    move-object v5, v0

    .line 588
    .local v5, resp:Ljcifs/smb/SmbComTransactionResponse;
    iget v9, p0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v9, v4, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 589
    invoke-virtual {v5}, Ljcifs/smb/SmbComTransactionResponse;->reset()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 592
    :try_start_1
    invoke-static {v4, v5}, Ljcifs/smb/BufferCache;->getBuffers(Ljcifs/smb/SmbComTransaction;Ljcifs/smb/SmbComTransactionResponse;)V

    .line 598
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 599
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 600
    new-instance v2, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v2}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    .line 601
    .local v2, interim:Ljcifs/smb/SmbComBlankResponse;
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v9, v9

    invoke-super {p0, v4, v2, v9, v10}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V

    .line 602
    iget v9, v2, Ljcifs/smb/SmbComBlankResponse;->errorCode:I

    if-eqz v9, :cond_2

    .line 603
    invoke-virtual {p0, v4, v2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 605
    :cond_2
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    .line 610
    .end local v2           #interim:Ljcifs/smb/SmbComBlankResponse;
    :goto_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 612
    const/4 v9, 0x0

    iput-boolean v9, v5, Ljcifs/smb/SmbComTransactionResponse;->isReceived:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 614
    :try_start_3
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_3
    invoke-virtual {p0, v4}, Ljcifs/smb/SmbTransport;->doSend0(Ljcifs/util/transport/Request;)V

    .line 622
    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Ljcifs/smb/SmbComTransaction;->nextElement()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 628
    :cond_4
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v7, v9

    .line 629
    .local v7, timeout:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v5, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    .line 630
    :cond_5
    invoke-virtual {v5}, Ljcifs/smb/SmbComTransactionResponse;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_8

    .line 639
    iget v9, p2, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v9, :cond_6

    .line 640
    invoke-virtual {p0, v4, v5}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 645
    :cond_6
    :try_start_4
    iget-object v9, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 649
    :try_start_5
    iget-object v9, v4, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v9}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object v9, v5, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v9}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 663
    .end local v4           #req:Ljcifs/smb/SmbComTransaction;
    .end local v5           #resp:Ljcifs/smb/SmbComTransactionResponse;
    .end local v7           #timeout:J
    :goto_2
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTransport;->checkStatus(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 607
    .restart local v4       #req:Ljcifs/smb/SmbComTransaction;
    .restart local v5       #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_7
    :try_start_6
    invoke-virtual {p0, v4}, Ljcifs/smb/SmbTransport;->makeKey(Ljcifs/util/transport/Request;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 648
    :catchall_0
    move-exception v9

    .line 649
    :try_start_7
    iget-object v10, v4, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    invoke-static {v10}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 650
    iget-object v10, v5, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    invoke-static {v10}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 651
    throw v9
    :try_end_7
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 657
    .end local v4           #req:Ljcifs/smb/SmbComTransaction;
    .end local v5           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :catch_0
    move-exception v6

    .line 658
    .local v6, se:Ljcifs/smb/SmbException;
    throw v6

    .line 631
    .end local v6           #se:Ljcifs/smb/SmbException;
    .restart local v4       #req:Ljcifs/smb/SmbComTransaction;
    .restart local v5       #resp:Ljcifs/smb/SmbComTransactionResponse;
    .restart local v7       #timeout:J
    :cond_8
    :try_start_8
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 632
    iget-wide v9, v5, Ljcifs/smb/SmbComTransactionResponse;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v9, v11

    .line 633
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_5

    .line 634
    new-instance v9, Ljcifs/util/transport/TransportException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 635
    const-string v11, " timedout waiting for response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 636
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 634
    invoke-direct {v9, v10}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 642
    .end local v7           #timeout:J
    :catch_1
    move-exception v1

    .line 643
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_9
    new-instance v9, Ljcifs/util/transport/TransportException;

    invoke-direct {v9, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 644
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    .line 645
    :try_start_a
    iget-object v10, p0, Ljcifs/smb/SmbTransport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    throw v9

    .line 610
    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 654
    .end local v4           #req:Ljcifs/smb/SmbComTransaction;
    .end local v5           #resp:Ljcifs/smb/SmbComTransactionResponse;
    :cond_9
    :try_start_c
    iget-byte v9, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte v9, p2, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 655
    sget v9, Ljcifs/smb/SmbTransport;->RESPONSE_TIMEOUT:I

    int-to-long v9, v9

    invoke-super {p0, p1, p2, v9, v10}, Ljcifs/util/transport/Transport;->sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 659
    :catch_2
    move-exception v3

    .line 660
    .local v3, ioe:Ljava/io/IOException;
    new-instance v9, Ljcifs/smb/SmbException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method ssn139()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    new-instance v0, Ljcifs/netbios/Name;

    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    .local v0, calledName:Ljcifs/netbios/Name;
    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    .line 194
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->localAddr:Ljava/net/InetAddress;

    iget v6, p0, Ljcifs/smb/SmbTransport;->localPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 196
    :cond_1
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v5}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8b

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget v5, Ljcifs/smb/SmbTransport;->CONN_TIMEOUT:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 197
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    sget v4, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 199
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    .line 200
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    .line 202
    new-instance v2, Ljcifs/netbios/SessionRequestPacket;

    .line 203
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalName()Ljcifs/netbios/Name;

    move-result-object v3

    .line 202
    invoke-direct {v2, v0, v3}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    .line 204
    .local v2, ssp:Ljcifs/netbios/SessionServicePacket;
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-virtual {v2, v5, v7}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    iget-object v4, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    invoke-static {v3, v4, v7, v10}, Ljcifs/smb/SmbTransport;->readn(Ljava/io/InputStream;[BII)I

    move-result v3

    if-ge v3, v10, :cond_2

    .line 207
    :try_start_0
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, "EOF during NetBIOS session request"

    invoke-direct {v3, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_2
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->sbuf:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    sparse-switch v3, :sswitch_data_0

    .line 234
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 235
    new-instance v3, Ljcifs/netbios/NbtException;

    invoke-direct {v3, v9, v7}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 214
    :sswitch_0
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v10, :cond_3

    .line 215
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session established ok with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 216
    :cond_3
    return-void

    .line 218
    :sswitch_1
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 219
    .local v1, errorCode:I
    packed-switch v1, :pswitch_data_0

    .line 225
    :pswitch_0
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 226
    new-instance v3, Ljcifs/netbios/NbtException;

    invoke-direct {v3, v9, v1}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 222
    :pswitch_1
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 237
    iget-object v3, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v3}, Ljcifs/UniAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljcifs/netbios/Name;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 239
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to establish session with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v1           #errorCode:I
    :sswitch_2
    invoke-virtual {p0, v8}, Ljcifs/smb/SmbTransport;->disconnect(Z)V

    .line 231
    new-instance v3, Ljcifs/netbios/NbtException;

    .line 232
    const/4 v4, -0x1

    .line 231
    invoke-direct {v3, v9, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v3

    .line 208
    :catch_0
    move-exception v3

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x82 -> :sswitch_0
        0x83 -> :sswitch_1
    .end sparse-switch

    .line 219
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/util/transport/Transport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTransport;->address:Ljcifs/UniAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
