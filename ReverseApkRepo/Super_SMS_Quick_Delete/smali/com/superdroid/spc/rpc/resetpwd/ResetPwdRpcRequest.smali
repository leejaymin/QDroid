.class public Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "ResetPwdRpcRequest.java"


# static fields
.field public static final RPC_SPC_RESET_PASSWORD_SERVICES_NAME:Ljava/lang/String; = "spcresetpwd"

.field private static final serialVersionUID:J = 0xf09ab3686e138f4L


# instance fields
.field public _userEmail:Ljava/lang/String;

.field public _userPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 24
    const-string v0, "spcresetpwd"

    iput-object v0, p0, Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;->_serviceName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "useremail"
    .parameter "password"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 29
    :try_start_0
    new-instance v0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;

    invoke-direct {v0}, Lcom/superdroid/rpc/config/AppEngineRpcConfig;-><init>()V

    .line 30
    .local v0, config:Lcom/superdroid/rpc/config/Config;
    new-instance v2, Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;

    invoke-direct {v2}, Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;-><init>()V

    .line 31
    .local v2, request:Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;
    iput-object p0, v2, Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;->_userEmail:Ljava/lang/String;

    .line 32
    iput-object p1, v2, Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;->_userPwd:Ljava/lang/String;

    .line 34
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    invoke-direct {v4, v0}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 35
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 37
    .local v3, response:Lcom/superdroid/rpc/RpcResponse;
    sget-object v5, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v6, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[RESET PASSWORD RET CODE]:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 37
    invoke-interface {v5, v6, v7}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v3}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    move v5, v12

    .line 48
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;
    .end local v3           #response:Lcom/superdroid/rpc/RpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :goto_0
    return v5

    .restart local v0       #config:Lcom/superdroid/rpc/config/Config;
    .restart local v2       #request:Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;
    .restart local v3       #response:Lcom/superdroid/rpc/RpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    move v5, v11

    .line 43
    goto :goto_0

    .line 46
    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v2           #request:Lcom/superdroid/spc/rpc/resetpwd/ResetPwdRpcRequest;
    .end local v3           #response:Lcom/superdroid/rpc/RpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 47
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v11

    .line 48
    goto :goto_0
.end method
