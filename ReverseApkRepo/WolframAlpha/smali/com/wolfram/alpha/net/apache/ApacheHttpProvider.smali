.class public Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;
.super Ljava/lang/Object;
.source "ApacheHttpProvider.java"

# interfaces
.implements Lcom/wolfram/alpha/net/HttpProvider;


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x1f40

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Wolfram|Alpha Java Binding 1.1"

.field private static final MAX_CONNECTIONS_PER_ROUTE:I = 0x8

.field private static final MAX_RETRY_COUNT:I = 0x1

.field private static final SOCKET_TIMEOUT_MILLIS:I = 0x4e20

.field private static httpClient:Lorg/apache/http/client/HttpClient;

.field private static params:Lorg/apache/http/params/HttpParams;

.field private static proxySettings:Lcom/wolfram/alpha/net/ProxySettings;


# instance fields
.field private socketTimeoutMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 53
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 54
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 55
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 56
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    .line 57
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    new-instance v3, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider$1;

    invoke-direct {v3}, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider$1;-><init>()V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 60
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 61
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    const-string v3, "Wolfram|Alpha Java Binding 1.1"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x1f40

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 68
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->socketTimeoutMillis:I

    return-void
.end method


# virtual methods
.method public createHttpTransaction(Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;)Lcom/wolfram/alpha/net/impl/HttpTransaction;
    .locals 6
    .parameter "url"
    .parameter "proxySettings"

    .prologue
    .line 82
    new-instance v0, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;

    sget-object v1, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    const/4 v4, 0x1

    iget v5, p0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->socketTimeoutMillis:I

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/wolfram/alpha/net/apache/ApacheHttpTransaction;-><init>(Lorg/apache/http/client/HttpClient;Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;II)V

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getProxyHostAndPort(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 107
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    invoke-virtual {v0, p1}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyHostAndPort(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProxyCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 101
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    invoke-virtual {v0, p1}, Lcom/wolfram/alpha/net/ProxySettings;->setProxyUsername(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    invoke-virtual {v0, p2}, Lcom/wolfram/alpha/net/ProxySettings;->setProxyPassword(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setProxyInfo(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "useProxy"
    .parameter "httpProxyHost"
    .parameter "httpProxyPort"
    .parameter "socksProxyHost"
    .parameter "socksProxyPort"

    .prologue
    .line 97
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/wolfram/alpha/net/ProxySettings;->setProxyInfo(ILjava/lang/String;I)V

    .line 98
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "agent"

    .prologue
    .line 78
    sget-object v0, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 79
    return-void
.end method
