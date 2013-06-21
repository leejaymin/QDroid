.class public Lcom/superdroid/rpc/security/security/SecurityTransport;
.super Ljava/lang/Object;
.source "SecurityTransport.java"


# static fields
.field public static INSTANCE:Lcom/superdroid/rpc/security/security/SecurityTransport;


# instance fields
.field protected _config:Lcom/superdroid/rpc/config/SuperSecurityConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/superdroid/rpc/security/security/SecurityTransport;

    .line 25
    new-instance v1, Lcom/superdroid/rpc/config/SuperSecurityConfig;

    invoke-direct {v1}, Lcom/superdroid/rpc/config/SuperSecurityConfig;-><init>()V

    .line 24
    invoke-direct {v0, v1}, Lcom/superdroid/rpc/security/security/SecurityTransport;-><init>(Lcom/superdroid/rpc/config/SuperSecurityConfig;)V

    sput-object v0, Lcom/superdroid/rpc/security/security/SecurityTransport;->INSTANCE:Lcom/superdroid/rpc/security/security/SecurityTransport;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/superdroid/rpc/config/SuperSecurityConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/superdroid/rpc/security/security/SecurityTransport;->_config:Lcom/superdroid/rpc/config/SuperSecurityConfig;

    .line 29
    return-void
.end method


# virtual methods
.method public getVirusItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/security/model/VirusItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/security/exception/SecurityException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v2, Lcom/superdroid/rpc/security/calls/GetVirusItemsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/security/calls/GetVirusItemsRequest;-><init>()V

    .line 40
    .local v2, request:Lcom/superdroid/rpc/security/calls/GetVirusItemsRequest;
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/security/security/SecurityTransport;->_config:Lcom/superdroid/rpc/config/SuperSecurityConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 42
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 41
    check-cast v3, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;

    .line 43
    .local v3, response:Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;->getReturnCode()I

    move-result v7

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    .end local v3           #response:Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 51
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 52
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 49
    .end local v5           #urie:Ljava/net/URISyntaxException;
    .restart local v3       #response:Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    :try_start_1
    iget-object v6, v3, Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;->virusList:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 53
    .end local v3           #response:Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 54
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 55
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 56
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 57
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setConfig(Lcom/superdroid/rpc/config/SuperSecurityConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/superdroid/rpc/security/security/SecurityTransport;->_config:Lcom/superdroid/rpc/config/SuperSecurityConfig;

    .line 33
    return-void
.end method

.method public submitSuspectItem(Lcom/superdroid/rpc/security/model/SuspectItem;)V
    .locals 10
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/security/exception/SecurityException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;-><init>()V

    .line 64
    .local v2, request:Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;->suspectItem:Lcom/superdroid/rpc/security/model/SuspectItem;

    .line 67
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/security/security/SecurityTransport;->_config:Lcom/superdroid/rpc/config/SuperSecurityConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 69
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 70
    .local v3, response:Lcom/superdroid/rpc/RpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v7

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 74
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .end local v3           #response:Lcom/superdroid/rpc/RpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 77
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 78
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 79
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 80
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 81
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 82
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 83
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    new-instance v6, Lcom/superdroid/rpc/security/exception/SecurityException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/security/exception/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 86
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/RpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method
