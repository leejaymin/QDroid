.class public Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "FeedbackRpcRequest.java"


# static fields
.field public static final RPC_FEEDBACK_SERVICES_NAME:Ljava/lang/String; = "feedback"

.field private static final serialVersionUID:J = -0x62fb69399b26b378L


# instance fields
.field public _appId:Ljava/lang/String;

.field public _content:Ljava/lang/String;

.field public _fromEamil:Ljava/lang/String;

.field public _suportEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "feedback"

    iput-object v0, p0, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static postFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "appid"
    .parameter "supportemail"
    .parameter "fromemail"
    .parameter "content"

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;

    invoke-direct {v0}, Lcom/superdroid/rpc/config/AppEngineRpcConfig;-><init>()V

    .line 46
    .local v0, config:Lcom/superdroid/rpc/config/Config;
    new-instance v1, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;

    invoke-direct {v1}, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;-><init>()V

    .line 47
    .local v1, request:Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;
    iput-object p0, v1, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;->_appId:Ljava/lang/String;

    .line 48
    iput-object p3, v1, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;->_content:Ljava/lang/String;

    .line 49
    iput-object p1, v1, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;->_suportEmail:Ljava/lang/String;

    .line 50
    iput-object p2, v1, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;->_fromEamil:Ljava/lang/String;

    .line 52
    new-instance p0, Lcom/superdroid/rpc/http/RpcHttpChannel;

    .end local p0
    invoke-direct {p0, v0}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 53
    .local p0, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {p0, v1}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object p0

    .line 55
    .local p0, response:Lcom/superdroid/rpc/RpcResponse;
    sget-object p1, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    .end local p1
    const-class p2, Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;

    .end local p2
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local v1           #request:Lcom/superdroid/rpc/feedback/FeedbackRpcRequest;
    const-string v2, "[POST FEEDBACK RET CODE]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    .line 55
    invoke-interface {p1, p2, p3}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .end local p0           #response:Lcom/superdroid/rpc/RpcResponse;
    if-nez p0, :cond_0

    .line 59
    const/4 p0, 0x1

    .line 66
    :goto_0
    return p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 p0, 0x0

    goto :goto_0
.end method
