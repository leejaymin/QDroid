.class public Lcom/trilead/ssh2/transport/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;,
        Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    }
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private final asynchronousQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private asynchronousThread:Ljava/lang/Thread;

.field connectionClosed:Z

.field connectionMonitors:Ljava/util/Vector;

.field connectionSemaphore:Ljava/lang/Object;

.field flagKexOngoing:Z

.field hostname:Ljava/lang/String;

.field km:Lcom/trilead/ssh2/transport/KexManager;

.field messageHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;",
            ">;"
        }
    .end annotation
.end field

.field monitorsWereInformed:Z

.field port:I

.field reasonClosedCause:Ljava/lang/Throwable;

.field receiveThread:Ljava/lang/Thread;

.field final sock:Ljava/net/Socket;

.field tc:Lcom/trilead/ssh2/transport/TransportConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 66
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 127
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 131
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 132
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 134
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 139
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 143
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 144
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 209
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 210
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    .line 211
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/trilead/ssh2/transport/TransportManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$2()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method

.method private createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/transport/TransportManager;->parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 162
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0
.end method

.method private establishConnection(Lcom/trilead/ssh2/ProxyData;I)V
    .locals 21
    .parameter "proxyData"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 341
    .local v5, addr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 438
    :goto_0
    return-void

    .line 346
    .end local v5           #addr:Ljava/net/InetAddress;
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/trilead/ssh2/HTTPProxyData;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 348
    move-object/from16 v0, p1

    check-cast v0, Lcom/trilead/ssh2/HTTPProxyData;

    move-object/from16 v16, v0

    .line 352
    .local v16, pd:Lcom/trilead/ssh2/HTTPProxyData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 353
    .restart local v5       #addr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object v1, v5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 358
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v17, sb:Ljava/lang/StringBuffer;
    const-string v18, "CONNECT "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const/16 v18, 0x3a

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 364
    const-string v18, " HTTP/1.0\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 368
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, credentials:Ljava/lang/String;
    const-string v18, "ISO-8859-1"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v8

    .line 370
    .local v8, encoded:[C
    const-string v18, "Proxy-Authorization: Basic "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 372
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    .end local v7           #credentials:Ljava/lang/String;
    .end local v8           #encoded:[C
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 377
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v11

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 387
    .end local v11           #i:I
    :cond_2
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 391
    .local v15, out:Ljava/io/OutputStream;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ISO-8859-1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 392
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 396
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v6, v0

    .line 397
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 399
    .local v13, in:Ljava/io/InputStream;
    invoke-static {v13, v6}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v14

    .line 401
    .local v14, len:I
    new-instance v10, Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "ISO-8859-1"

    move-object v0, v10

    move-object v1, v6

    move/from16 v2, v18

    move v3, v14

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 403
    .local v10, httpReponse:Ljava/lang/String;
    const-string v18, "HTTP/"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 404
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 379
    .end local v15           #out:Ljava/io/OutputStream;
    .end local v6           #buffer:[B
    .end local v13           #in:Ljava/io/InputStream;
    .end local v14           #len:I
    .end local v10           #httpReponse:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    if-eqz v18, :cond_4

    .line 381
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 408
    .end local v11           #i:I
    .restart local v6       #buffer:[B
    .restart local v10       #httpReponse:Ljava/lang/String;
    .restart local v13       #in:Ljava/io/InputStream;
    .restart local v14       #len:I
    .restart local v15       #out:Ljava/io/OutputStream;
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/16 v18, 0x8

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0xc

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 409
    :cond_6
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 411
    :cond_7
    const/4 v9, 0x0

    .line 415
    .local v9, errorCode:I
    const/16 v18, 0x9

    const/16 v19, 0xc

    :try_start_0
    move-object v0, v10

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 422
    if-ltz v9, :cond_8

    const/16 v18, 0x3e7

    move v0, v9

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 423
    :cond_8
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 417
    :catch_0
    move-exception v18

    move-object/from16 v12, v18

    .line 419
    .local v12, ignore:Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/io/IOException;

    const-string v19, "The proxy did not send back a valid HTTP response."

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 425
    .end local v12           #ignore:Ljava/lang/NumberFormatException;
    :cond_9
    const/16 v18, 0xc8

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 427
    new-instance v18, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 v19, 0xd

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move v2, v9

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw v18

    .line 434
    :cond_a
    invoke-static {v13, v6}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v14

    .line 435
    .restart local v14       #len:I
    if-nez v14, :cond_a

    goto/16 :goto_0

    .line 441
    .end local v16           #pd:Lcom/trilead/ssh2/HTTPProxyData;
    .end local v5           #addr:Ljava/net/InetAddress;
    .end local v17           #sb:Ljava/lang/StringBuffer;
    .end local v6           #buffer:[B
    .end local v10           #httpReponse:Ljava/lang/String;
    .end local v13           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/OutputStream;
    .end local v9           #errorCode:I
    .end local v14           #len:I
    :cond_b
    new-instance v18, Ljava/io/IOException;

    const-string v19, "Unsupported ProxyData"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 11
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 170
    if-nez p1, :cond_0

    move-object v6, v8

    .line 204
    :goto_0
    return-object v6

    .line 173
    :cond_0
    const/16 v6, 0x2e

    invoke-static {p1, v6}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, quad:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-eq v6, v9, :cond_2

    :cond_1
    move-object v6, v8

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    new-array v0, v9, [B

    .line 180
    .local v0, addr:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v9, :cond_3

    .line 204
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_0

    .line 182
    :cond_3
    const/4 v4, 0x0

    .line 184
    .local v4, part:I
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    :cond_4
    move-object v6, v8

    .line 185
    goto :goto_0

    .line 187
    :cond_5
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_6

    .line 198
    const/16 v6, 0xff

    if-le v4, v6, :cond_9

    move-object v6, v8

    .line 199
    goto :goto_0

    .line 189
    :cond_6
    aget-object v6, v5, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 192
    .local v1, c:C
    if-lt v1, v10, :cond_7

    const/16 v6, 0x39

    if-le v1, v6, :cond_8

    :cond_7
    move-object v6, v8

    .line 193
    goto :goto_0

    .line 195
    :cond_8
    mul-int/lit8 v6, v4, 0xa

    sub-int v7, v1, v10

    add-int v4, v6, v7

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 201
    .end local v1           #c:C
    :cond_9
    int-to-byte v6, v4

    aput-byte v6, v0, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1
    .parameter "bc"
    .parameter "mac"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 582
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1
    .parameter "bc"
    .parameter "mac"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 587
    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 10
    .parameter "cause"
    .parameter "useDisconnectPacket"

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 256
    :try_start_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 268
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v5

    .line 270
    :try_start_1
    iget-boolean v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    .line 272
    if-eqz p2, :cond_2

    .line 276
    :try_start_2
    new-instance v6, Lcom/trilead/ssh2/packets/PacketDisconnect;

    const/16 v7, 0xb

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Lcom/trilead/ssh2/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v6}, Lcom/trilead/ssh2/packets/PacketDisconnect;->getPayload()[B

    move-result-object v4

    .line 278
    .local v4, msg:[B
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    if-eqz v6, :cond_1

    .line 279
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v6, v4}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 287
    .end local v4           #msg:[B
    :cond_1
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 294
    :cond_2
    :goto_2
    const/4 v6, 0x1

    :try_start_4
    iput-boolean v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 295
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 297
    :cond_3
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, monitors:Ljava/util/Vector;
    monitor-enter p0

    .line 311
    :try_start_5
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    if-nez v5, :cond_4

    .line 313
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 314
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 304
    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    if-eqz v3, :cond_5

    .line 320
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 332
    .end local v2           #i:I
    :cond_5
    return-void

    .line 268
    .end local v3           #monitors:Ljava/util/Vector;
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    .line 304
    .restart local v3       #monitors:Ljava/util/Vector;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 324
    .restart local v2       #i:I
    :cond_6
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/ConnectionMonitor;

    .line 325
    .local v1, cmon:Lcom/trilead/ssh2/ConnectionMonitor;
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-interface {v1, v5}, Lcom/trilead/ssh2/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 320
    .end local v1           #cmon:Lcom/trilead/ssh2/ConnectionMonitor;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 327
    :catch_0
    move-exception v5

    goto :goto_4

    .line 289
    .end local v3           #monitors:Ljava/util/Vector;
    .end local v2           #i:I
    :catch_1
    move-exception v6

    goto :goto_2

    .line 281
    :catch_2
    move-exception v6

    goto :goto_1

    .line 258
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1
    .parameter "cwl"
    .parameter "dhgex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 577
    return-void
.end method

.method public getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1
    .parameter "kexNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/KexManager;->getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketOverheadEstimate()I

    move-result v0

    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    return-object v0
.end method

.method public initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    .locals 8
    .parameter "cwl"
    .parameter "verifier"
    .parameter "dhgex"
    .parameter "connectTimeout"
    .parameter "rnd"
    .parameter "proxyData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0, p6, p4}, Lcom/trilead/ssh2/transport/TransportManager;->establishConnection(Lcom/trilead/ssh2/ProxyData;I)V

    .line 456
    new-instance v2, Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/trilead/ssh2/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 458
    .local v2, csh:Lcom/trilead/ssh2/transport/ClientServerHello;
    new-instance v0, Lcom/trilead/ssh2/transport/TransportConnection;

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v1, v3, p5}, Lcom/trilead/ssh2/transport/TransportConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 460
    new-instance v0, Lcom/trilead/ssh2/transport/KexManager;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/transport/KexManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 461
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1, p3}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 463
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/trilead/ssh2/transport/TransportManager$1;

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/transport/TransportManager$1;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    .line 509
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 510
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    return-void
.end method

.method public kexFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 570
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 567
    monitor-exit v0

    .line 572
    return-void

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveLoop()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    const v11, 0x88b8

    new-array v5, v11, [B

    .line 670
    .local v5, msg:[B
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    const/4 v12, 0x0

    array-length v13, v5

    invoke-virtual {v11, v5, v12, v13}, Lcom/trilead/ssh2/transport/TransportConnection;->receiveMessage([BII)I

    move-result v6

    .line 672
    .local v6, msglen:I
    const/4 v11, 0x0

    aget-byte v11, v5, v11

    and-int/lit16 v10, v11, 0xff

    .line 674
    .local v10, type:I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 677
    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 679
    sget-object v11, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v11}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 681
    new-instance v9, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 682
    .local v9, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 683
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 684
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    .local v1, debugMessageBuffer:Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lt v3, v11, :cond_1

    .line 696
    sget-object v11, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    const/16 v12, 0x32

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "DEBUG Message from remote: \'"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 691
    .local v0, c:C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_2

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_2

    .line 687
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 693
    :cond_2
    const v11, 0xfffd

    invoke-virtual {v1, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 701
    .end local v9           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    .end local v1           #debugMessageBuffer:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v0           #c:C
    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 703
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Peer sent UNIMPLEMENTED message, that should not happen."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 706
    :cond_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 708
    new-instance v9, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 709
    .restart local v9       #tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 710
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v8

    .line 711
    .local v8, reason_code:I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 712
    .local v7, reasonBuffer:Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xff

    if-le v11, v12, :cond_5

    .line 721
    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 722
    const/16 v11, 0xfe

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 723
    const/16 v11, 0xfd

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 724
    const/16 v11, 0xfc

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 734
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lt v3, v11, :cond_6

    .line 743
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Peer sent DISCONNECT message (reason code "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 744
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 743
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 736
    :cond_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 738
    .restart local v0       #c:C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_7

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_7

    .line 734
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 740
    :cond_7
    const v11, 0xfffd

    invoke-virtual {v7, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    .line 751
    .end local v9           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    .end local v8           #reason_code:I
    .end local v7           #reasonBuffer:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v0           #c:C
    :cond_8
    const/16 v11, 0x14

    if-eq v10, v11, :cond_9

    const/16 v11, 0x15

    if-eq v10, v11, :cond_9

    .line 752
    const/16 v11, 0x1e

    if-lt v10, v11, :cond_a

    const/16 v11, 0x31

    if-gt v10, v11, :cond_a

    .line 754
    :cond_9
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v11, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V

    goto/16 :goto_0

    .line 758
    :cond_a
    const/4 v4, 0x0

    .line 760
    .local v4, mh:Lcom/trilead/ssh2/transport/MessageHandler;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v3, v11, :cond_b

    .line 770
    :goto_6
    if-nez v4, :cond_d

    .line 771
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unexpected SSH message (type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 762
    :cond_b
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 763
    .local v2, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iget v11, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-gt v11, v10, :cond_c

    iget v11, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-gt v10, v11, :cond_c

    .line 765
    iget-object v4, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 766
    goto :goto_6

    .line 760
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 773
    .end local v2           #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :cond_d
    invoke-interface {v4, v5, v6}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V

    goto/16 :goto_0
.end method

.method public registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 3
    .parameter "mh"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 515
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 516
    .local v0, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iput-object p1, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 517
    iput p2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 518
    iput p3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 520
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 520
    monitor-exit v1

    .line 524
    return-void

    .line 520
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 4
    .parameter "mh"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 528
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v2

    .line 530
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 528
    :goto_1
    monitor-exit v2

    .line 540
    return-void

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 533
    .local v0, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iget-object v3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    if-ne v3, p1, :cond_1

    iget v3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-ne v3, p2, :cond_1

    iget v3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-ne v3, p3, :cond_1

    .line 535
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 528
    .end local v0           #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 530
    .restart local v0       #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendAsynchronousMessage([B)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 601
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 602
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error: the peer is not consuming our asynchronous replies."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 606
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 608
    new-instance v1, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 609
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 610
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 591
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    return-void
.end method

.method public sendKexMessage([B)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-eqz v2, :cond_0

    .line 548
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 544
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 551
    .restart local p0
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 544
    :try_start_3
    monitor-exit v1

    .line 563
    return-void

    .line 557
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 559
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 560
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public sendMessage([B)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    .line 628
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Assertion error: sendMessage may never be invoked by the receiver thread!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-eqz v2, :cond_1

    .line 636
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 637
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .line 636
    .end local p0
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 630
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 640
    .restart local p0
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 654
    :try_start_2
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v2, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 630
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 662
    return-void

    .line 645
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v2

    goto :goto_0

    .line 656
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 658
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 659
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 1
    .parameter "monitors"

    .prologue
    .line 619
    monitor-enter p0

    .line 621
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 619
    monitor-exit p0

    .line 623
    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 226
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 221
    return-void
.end method
