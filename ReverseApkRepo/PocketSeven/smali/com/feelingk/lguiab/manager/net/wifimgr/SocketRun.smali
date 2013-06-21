.class public Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;
.super Ljava/lang/Object;
.source "SocketRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    }
.end annotation


# static fields
.field private static wifiGWsocket:Ljava/net/Socket;


# instance fields
.field private socketType:I

.field private wifiGWinputStream:Ljava/io/InputStream;

.field private wifiGWoutputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    .line 21
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketType:I

    .line 26
    return-void
.end method


# virtual methods
.method public setSocketType(I)V
    .locals 0
    .parameter "_socketType"

    .prologue
    .line 29
    iput p1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketType:I

    .line 30
    return-void
.end method

.method public socketColse()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 244
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    .line 245
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    .line 246
    sput-object v2, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    .line 248
    const/4 v1, 0x0

    return v1

    .line 236
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public socketConnect(Ljava/lang/String;II)Z
    .locals 3
    .parameter "socketIp"
    .parameter "socketPort"
    .parameter "socketTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    .line 37
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 40
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WIFI G/W][CONNECT]ERROR: is connect result(true/false) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_ARREDY_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 43
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    .line 46
    :cond_0
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    .line 47
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    .line 49
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWsocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 52
    throw v0
.end method

.method public socketRequest()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 59
    const/4 v1, 0x0

    check-cast v1, [B

    .line 62
    .local v1, sendBuf:[B
    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketType:I

    if-ne v2, v5, :cond_1

    .line 63
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte;->sessionMakePacket()[B

    move-result-object v1

    .line 76
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWoutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v5

    .line 66
    :cond_1
    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 67
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte;->tunnelingMakePacket()[B

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_2
    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 71
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte;->etcPacket()[B

    move-result-object v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v2

    sget-object v3, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SEND_WRITE_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v2, v3}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 80
    throw v0
.end method

.method public socketResponseIsHeader()Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v7, 0x0

    check-cast v7, [B

    .line 95
    .local v7, header:[B
    const/4 v1, 0x0

    check-cast v1, [B

    .line 96
    .local v1, body:[B
    const/4 v11, 0x0

    check-cast v11, [B

    .line 97
    .local v11, returnData:[B
    const/4 v9, 0x0

    .line 98
    .local v9, receivedBytes:I
    const/4 v8, 0x0

    .line 99
    .local v8, reads:I
    const/4 v5, 0x0

    .line 101
    .local v5, dataLen:I
    const/16 v0, 0x18

    .line 102
    .local v0, PACKET_HEADER_SIZE:I
    new-array v7, v0, [B

    .line 105
    const-string v12, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[HEADER] START"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 106
    :goto_0
    if-lt v9, v0, :cond_2

    .line 120
    const-string v12, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[HEADER] END"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 122
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[WIFI G/W][RESPONSE]Response *Header* Print(header.length) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 123
    sget-boolean v12, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    if-eqz v12, :cond_0

    array-length v12, v7

    invoke-static {v7, v12}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 127
    :cond_0
    const/4 v12, 0x1

    aget-byte v12, v7, v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 130
    const-string v12, "[WIFI G/W][RESPONSE]Header == 0x02 [ERROR]"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v12

    sget-object v13, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_ERROR_CODE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v12, v13}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 136
    :cond_1
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 137
    .local v2, bodySize:[B
    const/16 v12, 0x14

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v7, v12, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    move-object v3, v2

    .line 141
    .local v3, buf:[B
    const/4 v12, 0x4

    :try_start_0
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 142
    .local v4, buff:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 143
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 147
    if-nez v5, :cond_4

    .line 148
    const-string v12, "[WIFI G/W][RESPONSE]While Read BODY_LENGTH [ERROR]:[dataLen == 0]"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 155
    array-length v12, v7

    new-array v11, v12, [B

    .line 156
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    new-instance v10, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;

    invoke-direct {v10, p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;-><init>(Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;)V

    .line 160
    .local v10, responseByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    iput-object v7, v10, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->header:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v2           #bodySize:[B
    .end local v3           #buf:[B
    .end local v4           #buff:Ljava/nio/ByteBuffer;
    .end local v10           #responseByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    :goto_1
    return-object v10

    .line 107
    :cond_2
    iget-object v12, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    array-length v13, v7

    sub-int/2addr v13, v9

    invoke-virtual {v12, v7, v9, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 108
    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 111
    add-int/2addr v9, v8

    goto :goto_0

    .line 115
    :cond_3
    const-string v12, "[WIFI G/W][RESPONSE]While Read HEADER [ERROR]"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v12

    sget-object v13, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v12, v13}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 117
    const/4 v10, 0x0

    goto :goto_1

    .line 163
    .restart local v2       #bodySize:[B
    .restart local v3       #buf:[B
    .restart local v4       #buff:Ljava/nio/ByteBuffer;
    :cond_4
    if-gez v5, :cond_5

    .line 164
    :try_start_1
    const-string v12, "[WIFI G/W][RESPONSE]While Read BODY_LENGTH [ERROR]:[dataLen < 0]"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v12

    sget-object v13, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v12, v13}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    const/4 v10, 0x0

    goto :goto_1

    .line 169
    .end local v4           #buff:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    .line 170
    .local v6, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[WIFI G/W][RESPONSE]While Read BODY_LENGTH [ERROR]:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v12

    sget-object v13, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v12, v13}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 172
    const/4 v10, 0x0

    goto :goto_1

    .line 176
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #buff:Ljava/nio/ByteBuffer;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[WIFI G/W][RESPONSE]Response Data Length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 177
    new-array v1, v5, [B

    .line 180
    const-string v12, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[BODY] START"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 181
    const/4 v9, 0x0

    .line 182
    :goto_2
    if-lt v9, v5, :cond_7

    .line 196
    :goto_3
    const-string v12, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[BODY] END"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 199
    array-length v12, v7

    array-length v13, v1

    add-int/2addr v12, v13

    new-array v11, v12, [B

    .line 200
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    const/4 v12, 0x0

    array-length v13, v7

    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v1, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[WIFI G/W][RESPONSE]Response Print(Header/Body) byte length : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[WIFI G/W][RESPONSE]Response *Body* Print(body.length) : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 206
    sget-boolean v12, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    if-eqz v12, :cond_6

    array-length v12, v1

    invoke-static {v1, v12}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 211
    :cond_6
    new-instance v10, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;

    invoke-direct {v10, p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;-><init>(Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;)V

    .line 212
    .restart local v10       #responseByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    iput-object v7, v10, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->header:[B

    .line 213
    iput-object v1, v10, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    goto/16 :goto_1

    .line 183
    .end local v10           #responseByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    :cond_7
    iget-object v12, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    array-length v13, v1

    sub-int/2addr v13, v9

    invoke-virtual {v12, v1, v9, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 184
    const/4 v12, -0x1

    if-eq v8, v12, :cond_8

    .line 187
    add-int/2addr v9, v8

    goto :goto_2

    .line 191
    :cond_8
    const-string v12, "[WIFI G/W][RESPONSE]While Read BODY [ERROR]"

    invoke-static {v12}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v12

    sget-object v13, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v12, v13}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    goto/16 :goto_3
.end method

.method public socketResponseNotHeader()Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->wifiGWinputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/feelingk/lguiab/util/PacketUtil;->readDataBuffer(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 225
    .local v0, buf:[B
    new-instance v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;

    invoke-direct {v1, p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;-><init>(Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;)V

    .line 226
    .local v1, responseByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    iput-object v0, v1, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    .line 227
    return-object v1
.end method
