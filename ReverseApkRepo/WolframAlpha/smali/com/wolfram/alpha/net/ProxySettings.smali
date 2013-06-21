.class public Lcom/wolfram/alpha/net/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;
    }
.end annotation


# static fields
.field public static final PROXY_AUTOMATIC:I = 0x1

.field public static final PROXY_MANUAL:I = 0x2

.field public static final PROXY_NONE:I

.field private static instance:Lcom/wolfram/alpha/net/ProxySettings;


# instance fields
.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private proxyPassword:Ljava/lang/String;

.field private proxyUsername:Ljava/lang/String;

.field private useProxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/wolfram/alpha/net/ProxySettings;->instance:Lcom/wolfram/alpha/net/ProxySettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "java.net.useSystemProxies"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->getInstance()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/wolfram/alpha/net/ProxySettings;
    .locals 2

    .prologue
    .line 59
    const-class v0, Lcom/wolfram/alpha/net/ProxySettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wolfram/alpha/net/ProxySettings;->instance:Lcom/wolfram/alpha/net/ProxySettings;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/wolfram/alpha/net/ProxySettings;

    invoke-direct {v1}, Lcom/wolfram/alpha/net/ProxySettings;-><init>()V

    sput-object v1, Lcom/wolfram/alpha/net/ProxySettings;->instance:Lcom/wolfram/alpha/net/ProxySettings;

    .line 61
    :cond_0
    sget-object v1, Lcom/wolfram/alpha/net/ProxySettings;->instance:Lcom/wolfram/alpha/net/ProxySettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getProxyForHttpClient(Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 5
    .parameter "url"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyHostAndPort(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, hostAndPort:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 153
    .local v0, host:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, port:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 156
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v3, v0, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 151
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #hostAndPort:[Ljava/lang/String;
    .end local v2           #port:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getProxyForJavaNet(Ljava/lang/String;)Ljava/net/Proxy;
    .locals 6
    .parameter "url"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyHostAndPort(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, hostAndPort:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 167
    .local v0, host:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, port:I
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 171
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 165
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #hostAndPort:[Ljava/lang/String;
    .end local v2           #port:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getProxyHostAndPort(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "url"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 108
    monitor-enter p0

    const/4 v6, 0x0

    .line 109
    .local v6, port:I
    const/4 v2, 0x0

    .line 111
    .local v2, host:Ljava/lang/String;
    :try_start_0
    iget v11, p0, Lcom/wolfram/alpha/net/ProxySettings;->useProxy:I

    if-ne v11, v12, :cond_2

    .line 112
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 114
    .local v9, ps:Ljava/net/ProxySelector;
    :try_start_1
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    .local v10, uri:Ljava/net/URI;
    invoke-virtual {v9, v10}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    .line 116
    .local v8, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 117
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 118
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/Proxy;

    .line 119
    .local v5, p:Ljava/net/Proxy;
    invoke-virtual {v5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 120
    .local v0, addr:Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 145
    .end local v0           #addr:Ljava/net/InetSocketAddress;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #p:Ljava/net/Proxy;
    .end local v8           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v9           #ps:Ljava/net/ProxySelector;
    .end local v10           #uri:Ljava/net/URI;
    :cond_0
    :goto_1
    const/4 v11, 0x2

    :try_start_2
    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v11

    .line 117
    .restart local v0       #addr:Ljava/net/InetSocketAddress;
    .restart local v3       #i:I
    .restart local v4       #len:I
    .restart local v5       #p:Ljava/net/Proxy;
    .restart local v8       #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v9       #ps:Ljava/net/ProxySelector;
    .restart local v10       #uri:Ljava/net/URI;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    .end local v0           #addr:Ljava/net/InetSocketAddress;
    .end local v3           #i:I
    .end local v4           #len:I
    .end local v5           #p:Ljava/net/Proxy;
    .end local v8           #proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v9           #ps:Ljava/net/ProxySelector;
    .end local v10           #uri:Ljava/net/URI;
    :cond_2
    :try_start_3
    iget v11, p0, Lcom/wolfram/alpha/net/ProxySettings;->useProxy:I

    if-ne v11, v13, :cond_0

    .line 131
    const/16 v11, 0x3a

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 132
    .local v1, colonPos:I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_3

    .line 133
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, protocol:Ljava/lang/String;
    :goto_2
    const-string v11, "http"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 139
    iget-object v2, p0, Lcom/wolfram/alpha/net/ProxySettings;->httpProxyHost:Ljava/lang/String;

    .line 140
    iget v6, p0, Lcom/wolfram/alpha/net/ProxySettings;->httpProxyPort:I

    goto :goto_1

    .line 136
    .end local v7           #protocol:Ljava/lang/String;
    :cond_3
    const-string v7, "http"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v7       #protocol:Ljava/lang/String;
    goto :goto_2

    .line 108
    .end local v1           #colonPos:I
    .end local v7           #protocol:Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 126
    .restart local v9       #ps:Ljava/net/ProxySelector;
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method declared-synchronized getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings;->proxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings;->proxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getUseProxy()I
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/wolfram/alpha/net/ProxySettings;->useProxy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyInfo(ILjava/lang/String;I)V
    .locals 1
    .parameter "useProxy"
    .parameter "httpProxyHost"
    .parameter "httpProxyPort"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/wolfram/alpha/net/ProxySettings;->useProxy:I

    .line 68
    iput-object p2, p0, Lcom/wolfram/alpha/net/ProxySettings;->httpProxyHost:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/wolfram/alpha/net/ProxySettings;->httpProxyPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/net/ProxySettings;->proxyPassword:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/net/ProxySettings;->proxyUsername:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
