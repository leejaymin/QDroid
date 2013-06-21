.class public Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;
.super Ljava/lang/Object;
.source "WifiGWsocket.java"

# interfaces
.implements Lcom/feelingk/lguiab/manager/net/wifimgr/IWifiGWsocket;


# static fields
.field public static isRunIP:Ljava/lang/String;

.field public static isRunPort:I

.field public static printByte:Z


# instance fields
.field private final KEy_RE:I

.field private keyReChking:I

.field private packageName:Ljava/lang/String;

.field private resultMsgByte:[B

.field private socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

.field public socketType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    .line 37
    iput v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->packageName:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->keyReChking:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->KEy_RE:I

    .line 42
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;-><init>()V

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    .line 43
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->packageName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V
    .locals 1
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onErrorThrowException(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "etcMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onErrorThrowException(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private onErrorThrowException(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;Ljava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "etcMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, ""

    .line 257
    .local v0, strMsg:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WIFI G/W SOCKET Exception:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setKeyFinal([B)V
    .locals 4
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p1

    .line 218
    .local v0, data:[B
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->keyFinalValidity([B)I

    move-result v1

    .line 219
    .local v1, ret:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WIFI G/W][RESPONSE]keyFinalValidity ret : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 221
    if-gez v1, :cond_0

    .line 223
    const-string v2, "[WIFI G/W][RESPONSE]keyFinalValidity fale(re Requse)"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v2

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->init(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWRequest()V

    .line 227
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWResponse()V

    .line 229
    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->keyReChking:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->keyReChking:I

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v2, "[WIFI G/W][RESPONSE]keyFinalValidity success"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public GWClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "[WIFI G/W][CLOSE][START]"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketColse()I

    .line 240
    const-string v0, "[WIFI G/W][CLOSE]is Socket Close result(true/false) : true"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public GWConnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    const-string v1, "[WIFI G/W][CONNECT][START]"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    .line 107
    sget-object v2, Lcom/feelingk/lguiab/manager/net/wifimgr/common/SocketCommond;->WIFIGW_SOCKET_IP:Ljava/lang/String;

    .line 108
    const/16 v3, 0x1e6c

    .line 109
    const/16 v4, 0x1388

    .line 106
    invoke-virtual {v1, v2, v3, v4}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketConnect(Ljava/lang/String;II)Z

    move-result v0

    .line 111
    .local v0, resultBl:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WIFI G/W][CONNECT]is Socket Connect result(true/false) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 113
    if-nez v0, :cond_0

    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 114
    :cond_0
    return-void
.end method

.method public GWRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const-string v1, "[WIFI G/W][REQUEST][START]"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketRequest()Z

    move-result v0

    .line 120
    .local v0, resultBl:Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WIFI G/W][REQUEST]is Socket Request&write result(true/false) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 122
    if-nez v0, :cond_0

    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 123
    :cond_0
    return-void
.end method

.method public GWResponse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    const-string v5, "[WIFI G/W][RESPONSE][START]"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 131
    const/4 v2, 0x1

    .line 133
    .local v2, resultBl:Z
    const/4 v3, 0x0

    .line 135
    .local v3, resultByte:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;
    const-string v1, ""

    .line 138
    .local v1, etcErrorMsg:Ljava/lang/String;
    iget v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    packed-switch v5, :pswitch_data_0

    .line 149
    :goto_0
    iget v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    packed-switch v5, :pswitch_data_1

    .line 195
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void

    .line 141
    :pswitch_0
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketResponseIsHeader()Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;

    move-result-object v3

    .line 142
    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->socketResponseNotHeader()Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;

    move-result-object v3

    goto :goto_0

    .line 152
    :pswitch_2
    iget v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->keyReChking:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 153
    const-string v5, "[WIFI G/W][RESPONSE]keyFinalValidity fale(re Requse)"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v5

    sget-object v6, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEUINAL_RE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v5, v6}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 155
    if-nez v2, :cond_2

    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->onError(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 161
    :cond_2
    :goto_2
    iget-object v5, v3, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    invoke-direct {p0, v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->setKeyFinal([B)V

    goto :goto_1

    .line 157
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][RESPONSE]keyFinalValidity start [keyReChking CODE="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->keyReChking:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :pswitch_3
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getResultCode()Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    move-result-object v5

    sget-object v6, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_ERROR_CODE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    if-ne v5, v6, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 169
    iget-object v5, v3, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    iput-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    .line 171
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->getResultMsgSring()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, resultMsg:Ljava/lang/String;
    invoke-static {v4}, Lcom/feelingk/lguiab/util/StringUtil;->StringReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 173
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, errorCode:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][RESPONSE]CODE:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/feelingk/lguiab/common/Defines;->get_GATEWAY_ERROR_CODE(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    .end local v0           #errorCode:Ljava/lang/String;
    .end local v4           #resultMsg:Ljava/lang/String;
    :pswitch_4
    iget-object v5, v3, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun$SocketResponseByte;->body:[B

    iput-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    .line 182
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    array-length v5, v5

    if-nez v5, :cond_4

    .line 183
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v5

    sget-object v6, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v5, v6}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 184
    const/4 v2, 0x0

    .line 185
    goto/16 :goto_1

    .line 188
    :cond_4
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 189
    .restart local v4       #resultMsg:Ljava/lang/String;
    const-string v5, "\uacb0\uacfc"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 190
    invoke-static {v4}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getResultMsgByte()[B
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    return-object v0
.end method

.method public getResultMsgSring()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->resultMsgByte:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const-string v1, ""

    goto :goto_0
.end method

.method public wifiGWrun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    const-string v1, " ******** start *********"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->AE_INIT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    .line 54
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->setSocketType(I)V

    .line 55
    const-string v1, "[WIFI G/W][INIT]socket type : =================================|||SESSION_TYPE|||=="

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->init(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWConnect()V

    .line 64
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWRequest()V

    .line 67
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWResponse()V

    .line 69
    const/4 v1, 0x2

    iput v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    .line 70
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->setSocketType(I)V

    .line 71
    const-string v1, "[WIFI G/W][INIT]socket type : =================================|||TUNNELING_INIT_TYPE|||=="

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWRequest()V

    .line 77
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWResponse()V

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    .line 80
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketRun:Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;

    iget v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->socketType:I

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/SocketRun;->setSocketType(I)V

    .line 81
    const-string v1, "[WIFI G/W][INIT]socket type : =================================|||TUNNELING_SENDDATA_TYPE|||=="

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWRequest()V

    .line 87
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWResponse()V

    .line 90
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->GWClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const-string v1, " ******** end *********"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 100
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 97
    const-string v2, " ******** end *********"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 98
    throw v1
.end method
