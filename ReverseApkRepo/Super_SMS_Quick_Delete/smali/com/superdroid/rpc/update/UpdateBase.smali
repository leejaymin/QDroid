.class public Lcom/superdroid/rpc/update/UpdateBase;
.super Ljava/lang/Object;
.source "UpdateBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chechUpdate(Ljava/lang/String;I)Lcom/superdroid/rpc/update/CheckVersionData;
    .locals 12
    .parameter "appid"
    .parameter "versionCode"

    .prologue
    const/4 v11, -0x1

    .line 43
    :try_start_0
    new-instance v0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;

    invoke-direct {v0}, Lcom/superdroid/rpc/config/AppEngineRpcConfig;-><init>()V

    .line 44
    .local v0, config:Lcom/superdroid/rpc/config/Config;
    new-instance v2, Lcom/superdroid/rpc/update/UpdateRpcRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/update/UpdateRpcRequest;-><init>()V

    .line 45
    .local v2, request:Lcom/superdroid/rpc/update/UpdateRpcRequest;
    iput-object p0, v2, Lcom/superdroid/rpc/update/UpdateRpcRequest;->_appId:Ljava/lang/String;

    .line 46
    iput p1, v2, Lcom/superdroid/rpc/update/UpdateRpcRequest;->_versionCode:I

    .line 47
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    invoke-direct {v4, v0}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 49
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 48
    check-cast v3, Lcom/superdroid/rpc/update/UpdateRpcResponse;

    .line 51
    .local v3, response:Lcom/superdroid/rpc/update/UpdateRpcResponse;
    sget-object v5, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v6, Lcom/superdroid/rpc/update/UpdateBase;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[CHECK UDPATE RET CODE]:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/update/UpdateRpcResponse;->getReturnCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 51
    invoke-interface {v5, v6, v7}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v3}, Lcom/superdroid/rpc/update/UpdateRpcResponse;->getReturnCode()I

    move-result v5

    if-nez v5, :cond_1

    .line 55
    iget v5, v3, Lcom/superdroid/rpc/update/UpdateRpcResponse;->_latestVersionCode:I

    if-le v5, p1, :cond_0

    .line 56
    new-instance v5, Lcom/superdroid/rpc/update/CheckVersionData;

    .line 57
    const/4 v6, 0x1

    .line 58
    iget v7, v3, Lcom/superdroid/rpc/update/UpdateRpcResponse;->_latestVersionCode:I

    .line 59
    iget-object v8, v3, Lcom/superdroid/rpc/update/UpdateRpcResponse;->_apkDownloadLink:Ljava/lang/String;

    iget-object v9, v3, Lcom/superdroid/rpc/update/UpdateRpcResponse;->_changeLog:Ljava/lang/String;

    .line 56
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/superdroid/rpc/update/CheckVersionData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/rpc/update/UpdateRpcRequest;
    .end local v3           #response:Lcom/superdroid/rpc/update/UpdateRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :goto_0
    return-object v5

    .line 61
    .restart local v0       #config:Lcom/superdroid/rpc/config/Config;
    .restart local v2       #request:Lcom/superdroid/rpc/update/UpdateRpcRequest;
    .restart local v3       #response:Lcom/superdroid/rpc/update/UpdateRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    new-instance v5, Lcom/superdroid/rpc/update/CheckVersionData;

    .line 62
    const/4 v6, 0x2

    .line 61
    invoke-direct {v5, v6}, Lcom/superdroid/rpc/update/CheckVersionData;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/rpc/update/UpdateRpcRequest;
    .end local v3           #response:Lcom/superdroid/rpc/update/UpdateRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 70
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    new-instance v5, Lcom/superdroid/rpc/update/CheckVersionData;

    invoke-direct {v5, v11}, Lcom/superdroid/rpc/update/CheckVersionData;-><init>(I)V

    goto :goto_0

    .line 66
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #config:Lcom/superdroid/rpc/config/Config;
    .restart local v2       #request:Lcom/superdroid/rpc/update/UpdateRpcRequest;
    .restart local v3       #response:Lcom/superdroid/rpc/update/UpdateRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/superdroid/rpc/update/CheckVersionData;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/superdroid/rpc/update/CheckVersionData;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkIMEI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "appid"
    .parameter "imei"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 19
    :try_start_0
    new-instance v0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;

    invoke-direct {v0}, Lcom/superdroid/rpc/config/AppEngineRpcConfig;-><init>()V

    .line 20
    .local v0, config:Lcom/superdroid/rpc/config/Config;
    new-instance v2, Lcom/superdroid/rpc/update/CheckIMEIRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/update/CheckIMEIRequest;-><init>()V

    .line 21
    .local v2, request:Lcom/superdroid/rpc/update/CheckIMEIRequest;
    iput-object p0, v2, Lcom/superdroid/rpc/update/CheckIMEIRequest;->_appID:Ljava/lang/String;

    .line 22
    iput-object p1, v2, Lcom/superdroid/rpc/update/CheckIMEIRequest;->_imei:Ljava/lang/String;

    .line 23
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    invoke-direct {v4, v0}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 25
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 27
    .local v3, response:Lcom/superdroid/rpc/RpcResponse;
    sget-object v5, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v6, Lcom/superdroid/rpc/update/UpdateBase;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[CHECK IMEI RET CODE]:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 27
    invoke-interface {v5, v6, v7}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move v5, v11

    .line 37
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/rpc/update/CheckIMEIRequest;
    .end local v3           #response:Lcom/superdroid/rpc/RpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :goto_0
    return v5

    .restart local v0       #config:Lcom/superdroid/rpc/config/Config;
    .restart local v2       #request:Lcom/superdroid/rpc/update/CheckIMEIRequest;
    .restart local v3       #response:Lcom/superdroid/rpc/RpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    move v5, v12

    .line 33
    goto :goto_0

    .line 35
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/rpc/update/CheckIMEIRequest;
    .end local v3           #response:Lcom/superdroid/rpc/RpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 36
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v11

    .line 37
    goto :goto_0
.end method
