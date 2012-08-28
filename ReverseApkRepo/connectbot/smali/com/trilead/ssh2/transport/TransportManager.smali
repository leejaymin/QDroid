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
    .line 57
    const-class v0, Lcom/trilead/ssh2/transport/TransportManager;

    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 55
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

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 67
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 128
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 132
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 133
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 135
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 145
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 210
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 211
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    .line 212
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/trilead/ssh2/transport/TransportManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$2()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method

.method private createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/transport/TransportManager;->parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 163
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 166
    .end local v0           #addr:Ljava/net/InetAddress;
    :goto_0
    return-object v0

    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private establishConnection(Lcom/trilead/ssh2/ProxyData;I)V
    .locals 17
    .parameter "proxyData"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 342
    .local v1, addr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    new-instance v15, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 439
    :goto_0
    return-void

    .line 347
    .end local v1           #addr:Ljava/net/InetAddress;
    :cond_0
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/trilead/ssh2/HTTPProxyData;

    if-eqz v14, :cond_b

    move-object/from16 v12, p1

    .line 349
    check-cast v12, Lcom/trilead/ssh2/HTTPProxyData;

    .line 353
    .local v12, pd:Lcom/trilead/ssh2/HTTPProxyData;
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyHost:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 354
    .restart local v1       #addr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    new-instance v15, Ljava/net/InetSocketAddress;

    iget v0, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyPort:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 359
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 361
    .local v13, sb:Ljava/lang/StringBuffer;
    const-string v14, "CONNECT "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    move-object/from16 v0, p0

    iget v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 365
    const-string v14, " HTTP/1.0\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    if-eqz v14, :cond_1

    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 369
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyUser:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/trilead/ssh2/HTTPProxyData;->proxyPass:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, credentials:Ljava/lang/String;
    const-string v14, "ISO-8859-1"

    invoke-virtual {v3, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    move-result-object v4

    .line 371
    .local v4, encoded:[C
    const-string v14, "Proxy-Authorization: Basic "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 373
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    .end local v3           #credentials:Ljava/lang/String;
    .end local v4           #encoded:[C
    :cond_1
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 378
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    array-length v14, v14

    if-lt v7, v14, :cond_3

    .line 388
    .end local v7           #i:I
    :cond_2
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 392
    .local v11, out:Ljava/io/OutputStream;
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ISO-8859-1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 393
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 397
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 398
    .local v2, buffer:[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 400
    .local v9, in:Ljava/io/InputStream;
    invoke-static {v9, v2}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v10

    .line 402
    .local v10, len:I
    new-instance v6, Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "ISO-8859-1"

    invoke-direct {v6, v2, v14, v10, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 404
    .local v6, httpReponse:Ljava/lang/String;
    const-string v14, "HTTP/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 405
    new-instance v14, Ljava/io/IOException;

    const-string v15, "The proxy did not send back a valid HTTP response."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 380
    .end local v2           #buffer:[B
    .end local v6           #httpReponse:Ljava/lang/String;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #len:I
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v7       #i:I
    :cond_3
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    aget-object v14, v14, v7

    if-eqz v14, :cond_4

    .line 382
    iget-object v14, v12, Lcom/trilead/ssh2/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 409
    .end local v7           #i:I
    .restart local v2       #buffer:[B
    .restart local v6       #httpReponse:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v10       #len:I
    .restart local v11       #out:Ljava/io/OutputStream;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xe

    if-lt v14, v15, :cond_6

    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_6

    const/16 v14, 0xc

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_7

    .line 410
    :cond_6
    new-instance v14, Ljava/io/IOException;

    const-string v15, "The proxy did not send back a valid HTTP response."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 412
    :cond_7
    const/4 v5, 0x0

    .line 416
    .local v5, errorCode:I
    const/16 v14, 0x9

    const/16 v15, 0xc

    :try_start_0
    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 423
    if-ltz v5, :cond_8

    const/16 v14, 0x3e7

    if-le v5, v14, :cond_9

    .line 424
    :cond_8
    new-instance v14, Ljava/io/IOException;

    const-string v15, "The proxy did not send back a valid HTTP response."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 418
    :catch_0
    move-exception v8

    .line 420
    .local v8, ignore:Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/io/IOException;

    const-string v15, "The proxy did not send back a valid HTTP response."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 426
    .end local v8           #ignore:Ljava/lang/NumberFormatException;
    :cond_9
    const/16 v14, 0xc8

    if-eq v5, v14, :cond_a

    .line 428
    new-instance v14, Lcom/trilead/ssh2/HTTPProxyException;

    const/16 v15, 0xd

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 435
    :cond_a
    invoke-static {v9, v2}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    move-result v10

    .line 436
    if-nez v10, :cond_a

    goto/16 :goto_0

    .line 442
    .end local v1           #addr:Ljava/net/InetAddress;
    .end local v2           #buffer:[B
    .end local v5           #errorCode:I
    .end local v6           #httpReponse:Ljava/lang/String;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #len:I
    .end local v11           #out:Ljava/io/OutputStream;
    .end local v12           #pd:Lcom/trilead/ssh2/HTTPProxyData;
    .end local v13           #sb:Ljava/lang/StringBuffer;
    :cond_b
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Unsupported ProxyData"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 171
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v6

    .line 174
    :cond_1
    const/16 v7, 0x2e

    invoke-static {p1, v7}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, quad:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    if-ne v7, v9, :cond_0

    .line 179
    new-array v0, v9, [B

    .line 181
    .local v0, addr:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v9, :cond_2

    .line 205
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_0

    .line 183
    :cond_2
    const/4 v4, 0x0

    .line 185
    .local v4, part:I
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_0

    .line 188
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_3

    .line 199
    const/16 v7, 0xff

    if-gt v4, v7, :cond_0

    .line 202
    int-to-byte v7, v4

    aput-byte v7, v0, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_3
    aget-object v7, v5, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    .local v1, c:C
    const/16 v7, 0x30

    if-lt v1, v7, :cond_0

    const/16 v7, 0x39

    if-gt v1, v7, :cond_0

    .line 196
    mul-int/lit8 v7, v4, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v4, v7, v8

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1
    .parameter "bc"
    .parameter "mac"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 583
    return-void
.end method

.method public changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 595
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1
    .parameter "bc"
    .parameter "mac"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 588
    return-void
.end method

.method public changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCompression(Lcom/trilead/ssh2/compression/ICompressor;)V

    .line 602
    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 10
    .parameter "cause"
    .parameter "useDisconnectPacket"

    .prologue
    .line 249
    if-nez p2, :cond_0

    .line 257
    :try_start_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 269
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v6

    .line 271
    :try_start_1
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_3

    .line 273
    if-eqz p2, :cond_2

    .line 277
    :try_start_2
    new-instance v5, Lcom/trilead/ssh2/packets/PacketDisconnect;

    const/16 v7, 0xb

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/trilead/ssh2/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5}, Lcom/trilead/ssh2/packets/PacketDisconnect;->getPayload()[B

    move-result-object v4

    .line 279
    .local v4, msg:[B
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    if-eqz v5, :cond_1

    .line 280
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v5, v4}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 288
    .end local v4           #msg:[B
    :cond_1
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 295
    :cond_2
    :goto_2
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    .line 296
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 298
    :cond_3
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    const/4 v3, 0x0

    .line 305
    .local v3, monitors:Ljava/util/Vector;
    monitor-enter p0

    .line 312
    :try_start_5
    iget-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    if-nez v5, :cond_4

    .line 314
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 315
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Vector;

    move-object v3, v0

    .line 305
    :cond_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    if-eqz v3, :cond_5

    .line 321
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 333
    .end local v2           #i:I
    :cond_5
    return-void

    .line 269
    .end local v3           #monitors:Ljava/util/Vector;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 305
    .restart local v3       #monitors:Ljava/util/Vector;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 325
    .restart local v2       #i:I
    :cond_6
    :try_start_8
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/trilead/ssh2/ConnectionMonitor;

    .line 326
    .local v1, cmon:Lcom/trilead/ssh2/ConnectionMonitor;
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-interface {v1, v5}, Lcom/trilead/ssh2/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 321
    .end local v1           #cmon:Lcom/trilead/ssh2/ConnectionMonitor;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 328
    :catch_0
    move-exception v5

    goto :goto_4

    .line 290
    .end local v2           #i:I
    .end local v3           #monitors:Ljava/util/Vector;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 282
    :catch_2
    move-exception v5

    goto :goto_1

    .line 259
    :catch_3
    move-exception v5

    goto :goto_0
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
    .line 231
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/KexManager;->getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketOverheadEstimate()I

    move-result v0

    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    monitor-exit v1

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .prologue
    .line 244
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
    .line 450
    invoke-direct {p0, p6, p4}, Lcom/trilead/ssh2/transport/TransportManager;->establishConnection(Lcom/trilead/ssh2/ProxyData;I)V

    .line 457
    new-instance v2, Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/trilead/ssh2/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 459
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

    .line 461
    new-instance v0, Lcom/trilead/ssh2/transport/KexManager;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/transport/KexManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 462
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v0, p1, p3}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/trilead/ssh2/transport/TransportManager$1;

    invoke-direct {v1, p0}, Lcom/trilead/ssh2/transport/TransportManager$1;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    .line 510
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 511
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 512
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
    .line 568
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 571
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 568
    monitor-exit v1

    .line 573
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public receiveLoop()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    const v11, 0x88b8

    new-array v5, v11, [B

    .line 692
    .local v5, msg:[B
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    const/4 v12, 0x0

    array-length v13, v5

    invoke-virtual {v11, v5, v12, v13}, Lcom/trilead/ssh2/transport/TransportConnection;->receiveMessage([BII)I

    move-result v6

    .line 694
    .local v6, msglen:I
    const/4 v11, 0x0

    aget-byte v11, v5, v11

    and-int/lit16 v10, v11, 0xff

    .line 696
    .local v10, type:I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 699
    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 701
    sget-object v11, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v11}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 703
    new-instance v9, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 704
    .local v9, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 705
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 706
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v1, debugMessageBuffer:Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lt v3, v11, :cond_1

    .line 718
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

    .line 711
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 713
    .local v0, c:C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_2

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_2

    .line 709
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 715
    :cond_2
    const v11, 0xfffd

    invoke-virtual {v1, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 723
    .end local v0           #c:C
    .end local v1           #debugMessageBuffer:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    .end local v9           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 725
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Peer sent UNIMPLEMENTED message, that should not happen."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 728
    :cond_4
    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 730
    new-instance v9, Lcom/trilead/ssh2/packets/TypesReader;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11, v6}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 731
    .restart local v9       #tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 732
    invoke-virtual {v9}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v8

    .line 733
    .local v8, reason_code:I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 734
    .local v7, reasonBuffer:Ljava/lang/StringBuffer;
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xff

    if-le v11, v12, :cond_5

    .line 743
    const/16 v11, 0xff

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 744
    const/16 v11, 0xfe

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 745
    const/16 v11, 0xfd

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 746
    const/16 v11, 0xfc

    const/16 v12, 0x2e

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 756
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lt v3, v11, :cond_6

    .line 765
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Peer sent DISCONNECT message (reason code "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 766
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 765
    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 758
    :cond_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 760
    .restart local v0       #c:C
    const/16 v11, 0x20

    if-lt v0, v11, :cond_7

    const/16 v11, 0x7e

    if-gt v0, v11, :cond_7

    .line 756
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 762
    :cond_7
    const v11, 0xfffd

    invoke-virtual {v7, v3, v11}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_4

    .line 773
    .end local v0           #c:C
    .end local v3           #i:I
    .end local v7           #reasonBuffer:Ljava/lang/StringBuffer;
    .end local v8           #reason_code:I
    .end local v9           #tr:Lcom/trilead/ssh2/packets/TypesReader;
    :cond_8
    const/16 v11, 0x14

    if-eq v10, v11, :cond_9

    const/16 v11, 0x15

    if-eq v10, v11, :cond_9

    .line 774
    const/16 v11, 0x1e

    if-lt v10, v11, :cond_a

    const/16 v11, 0x31

    if-gt v10, v11, :cond_a

    .line 776
    :cond_9
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    invoke-virtual {v11, v5, v6}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V

    goto/16 :goto_0

    .line 780
    :cond_a
    const/16 v11, 0x34

    if-ne v10, v11, :cond_b

    .line 781
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v11}, Lcom/trilead/ssh2/transport/TransportConnection;->startCompression()V

    .line 784
    :cond_b
    const/4 v4, 0x0

    .line 786
    .local v4, mh:Lcom/trilead/ssh2/transport/MessageHandler;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    if-lt v3, v11, :cond_c

    .line 796
    :goto_6
    if-nez v4, :cond_e

    .line 797
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

    .line 788
    :cond_c
    iget-object v11, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 789
    .local v2, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iget v11, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-gt v11, v10, :cond_d

    iget v11, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-gt v10, v11, :cond_d

    .line 791
    iget-object v4, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 792
    goto :goto_6

    .line 786
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 799
    .end local v2           #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :cond_e
    invoke-interface {v4, v5, v6}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V

    goto/16 :goto_0
.end method

.method public registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 3
    .parameter "mh"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 516
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 517
    .local v0, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iput-object p1, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 518
    iput p2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 519
    iput p3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 521
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v2

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 521
    monitor-exit v2

    .line 525
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 4
    .parameter "mh"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 529
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    monitor-enter v3

    .line 531
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 529
    :goto_1
    monitor-exit v3

    .line 541
    return-void

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 534
    .local v0, he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    iget-object v2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    if-ne v2, p1, :cond_1

    iget v2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    if-ne v2, p2, :cond_1

    iget v2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    if-ne v2, p3, :cond_1

    .line 536
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    .line 529
    .end local v0           #he:Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 531
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
    .line 613
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    .line 624
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error: the peer is not consuming our asynchronous replies."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 628
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 630
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 631
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 632
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
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
    .line 545
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-eqz v1, :cond_0

    .line 549
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 552
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 545
    :try_start_3
    monitor-exit v2

    .line 564
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 561
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
    .line 649
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    .line 650
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Assertion error: sendMessage may never be invoked by the receiver thread!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    monitor-enter v2

    .line 656
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionClosed:Z

    if-eqz v1, :cond_1

    .line 658
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Sorry, this connection is closed."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 658
    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 652
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 662
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 676
    :try_start_2
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 652
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    return-void

    .line 667
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v1

    goto :goto_0

    .line 678
    :catch_1
    move-exception v0

    .line 680
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 681
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 1
    .parameter "monitors"

    .prologue
    .line 641
    monitor-enter p0

    .line 643
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 641
    monitor-exit p0

    .line 645
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 221
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 222
    return-void
.end method
