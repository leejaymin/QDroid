.class public Lcom/superdroid/rpc/http/RpcHttpChannel;
.super Ljava/lang/Object;
.source "RpcHttpChannel.java"

# interfaces
.implements Lcom/superdroid/rpc/RpcChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;
    }
.end annotation


# instance fields
.field protected _baseServices:Ljava/lang/String;

.field protected _client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field protected _config:Lcom/superdroid/rpc/config/Config;


# direct methods
.method public constructor <init>(Lcom/superdroid/rpc/config/Config;)V
    .locals 7
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    .line 37
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 38
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 39
    iget-object v1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v1}, Lcom/superdroid/rpc/config/Config;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/superdroid/rpc/config/Config;->getConnectionTimeOut()I

    move-result v1

    .line 40
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 44
    invoke-virtual {p1}, Lcom/superdroid/rpc/config/Config;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_baseServices:Ljava/lang/String;

    .line 45
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 46
    iget-object v1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/NoConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/NoConnectionReuseStrategy;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    .line 47
    sget-object v1, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v2, Lcom/superdroid/rpc/http/RpcHttpChannel;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "create rpc http channel instance,base url:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_baseServices:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 47
    invoke-interface {v1, v2, v3}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;
    .locals 14
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v7, Ljava/net/URI;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_baseServices:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/superdroid/rpc/RpcRequest;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 72
    .local v7, uri:Ljava/net/URI;
    sget-object v8, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v9, Lcom/superdroid/rpc/http/RpcHttpChannel;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 73
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "invoke rpc call to url:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 72
    invoke-interface {v8, v9, v10}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 75
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v8}, Lcom/superdroid/rpc/config/Config;->getVerionCode()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/superdroid/rpc/RpcRequest;->setVersion(I)V

    .line 76
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v8}, Lcom/superdroid/rpc/config/Config;->getUserID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/superdroid/rpc/RpcRequest;->setUserID(Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v8}, Lcom/superdroid/rpc/config/Config;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/superdroid/rpc/RpcRequest;->setPassWord(Ljava/lang/String;)V

    .line 79
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 80
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/entity/EntityTemplate;

    .line 81
    new-instance v8, Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;

    invoke-direct {v8, p1}, Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;-><init>(Lcom/superdroid/rpc/RpcRequest;)V

    .line 80
    invoke-direct {v0, v8}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 82
    .local v0, entity:Lorg/apache/http/entity/EntityTemplate;
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v8}, Lcom/superdroid/rpc/config/Config;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 83
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_config:Lcom/superdroid/rpc/config/Config;

    invoke-virtual {v8}, Lcom/superdroid/rpc/config/Config;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/http/entity/EntityTemplate;->setContentEncoding(Ljava/lang/String;)V

    .line 84
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/apache/http/entity/EntityTemplate;->setChunked(Z)V

    .line 85
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 86
    iget-object v8, p0, Lcom/superdroid/rpc/http/RpcHttpChannel;->_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 87
    .local v1, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 88
    .local v5, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_0

    .line 89
    sget-object v8, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v9, Lcom/superdroid/rpc/http/RpcHttpChannel;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 90
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "invoke rpc response failed code and reason:["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 92
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 90
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 89
    invoke-interface {v8, v9, v10}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 93
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "HTTP Response code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 95
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 97
    :cond_0
    const/4 v6, 0x0

    .line 100
    .local v6, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 101
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .local v2, input:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/superdroid/rpc/RpcResponse;

    .line 103
    .local v4, response:Lcom/superdroid/rpc/RpcResponse;
    sget-object v8, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v9, Lcom/superdroid/rpc/http/RpcHttpChannel;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 104
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "invoke rpc call success response return code:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4}, Lcom/superdroid/rpc/RpcResponse;->getReturnCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 104
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 103
    invoke-interface {v8, v9, v10}, Lcom/superdroid/logger/Logger;->info(Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v6, :cond_1

    .line 110
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :cond_1
    :goto_0
    return-object v4

    .line 107
    .end local v2           #input:Ljava/io/ObjectInputStream;
    .end local v4           #response:Lcom/superdroid/rpc/RpcResponse;
    :catchall_0
    move-exception v8

    .line 109
    if-eqz v6, :cond_2

    .line 110
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    :cond_2
    :goto_1
    throw v8

    .line 112
    .restart local v2       #input:Ljava/io/ObjectInputStream;
    .restart local v4       #response:Lcom/superdroid/rpc/RpcResponse;
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v2           #input:Ljava/io/ObjectInputStream;
    .end local v4           #response:Lcom/superdroid/rpc/RpcResponse;
    :catch_1
    move-exception v9

    goto :goto_1
.end method
