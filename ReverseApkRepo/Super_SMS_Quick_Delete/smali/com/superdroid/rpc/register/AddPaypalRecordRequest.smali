.class public Lcom/superdroid/rpc/register/AddPaypalRecordRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "AddPaypalRecordRequest.java"


# static fields
.field public static final RPC_REGISTER_SERVICES_NAME:Ljava/lang/String; = "addpaypalclientrecord"

.field private static final serialVersionUID:J = -0x5534c0f63183e620L


# instance fields
.field public _appId:Ljava/lang/String;

.field public _code:Ljava/lang/String;

.field public _imei:Ljava/lang/String;

.field public _payerID:Ljava/lang/String;

.field public _paymentGross:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "addpaypalclientrecord"

    iput-object v0, p0, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static addPaypalRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 2
    .parameter "appid"
    .parameter "imei"
    .parameter "code"
    .parameter "payerid"
    .parameter "paymentGross"

    .prologue
    .line 53
    :try_start_0
    new-instance v0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;

    invoke-direct {v0}, Lcom/superdroid/rpc/config/AppEngineRpcConfig;-><init>()V

    .line 54
    .local v0, config:Lcom/superdroid/rpc/config/Config;
    new-instance v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;

    invoke-direct {v1}, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;-><init>()V

    .line 55
    .local v1, request:Lcom/superdroid/rpc/register/AddPaypalRecordRequest;
    iput-object p0, v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_appId:Ljava/lang/String;

    .line 56
    iput-object p1, v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_imei:Ljava/lang/String;

    .line 57
    iput-object p2, v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_code:Ljava/lang/String;

    .line 58
    iput-object p3, v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_payerID:Ljava/lang/String;

    .line 59
    iput p4, v1, Lcom/superdroid/rpc/register/AddPaypalRecordRequest;->_paymentGross:F

    .line 61
    new-instance p0, Lcom/superdroid/rpc/http/RpcHttpChannel;

    .end local p0
    invoke-direct {p0, v0}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 62
    .local p0, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {p0, v1}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object p0

    .line 64
    .local p0, response:Lcom/superdroid/rpc/RpcResponse;
    sget-object p1, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    .end local p1
    const-class p2, Lcom/superdroid/rpc/register/RegisterRpcRequest;

    .end local p2
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 p4, 0x0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #config:Lcom/superdroid/rpc/config/Config;
    .end local p4
    const-string v1, "[Add Paypal APP RET CODE]:"

    .end local v1           #request:Lcom/superdroid/rpc/register/AddPaypalRecordRequest;
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    .line 64
    invoke-interface {p1, p2, p3}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .end local p0           #response:Lcom/superdroid/rpc/RpcResponse;
    if-nez p0, :cond_0

    .line 68
    const/4 p0, 0x1

    .line 75
    :goto_0
    return p0

    .line 70
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    .local p0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 p0, 0x0

    goto :goto_0
.end method
