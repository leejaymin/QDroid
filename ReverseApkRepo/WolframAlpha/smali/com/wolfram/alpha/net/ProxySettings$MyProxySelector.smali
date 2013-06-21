.class Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;
.super Ljava/net/ProxySelector;
.source "ProxySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/alpha/net/ProxySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyProxySelector"
.end annotation


# static fields
.field static instance:Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;


# instance fields
.field private final NO_PROXY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field origSelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    sput-object v0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->instance:Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->origSelector:Ljava/net/ProxySelector;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    .line 194
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->origSelector:Ljava/net/ProxySelector;

    .line 195
    iget-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method static declared-synchronized getInstance()Ljava/net/ProxySelector;
    .locals 2

    .prologue
    .line 199
    const-class v0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->instance:Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;

    invoke-direct {v1}, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;-><init>()V

    sput-object v1, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->instance:Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;

    .line 201
    :cond_0
    sget-object v1, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->instance:Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1
    .parameter "uri"
    .parameter "sa"
    .parameter "ioe"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->origSelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 225
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 206
    invoke-static {}, Lcom/wolfram/alpha/net/ProxySettings;->getInstance()Lcom/wolfram/alpha/net/ProxySettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/alpha/net/ProxySettings;->getUseProxy()I

    move-result v2

    .line 207
    .local v2, useProxy:I
    if-ne v2, v5, :cond_0

    .line 208
    iget-object v3, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->origSelector:Ljava/net/ProxySelector;

    invoke-virtual {v3, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    .line 219
    :goto_0
    return-object v3

    .line 209
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 210
    invoke-static {}, Lcom/wolfram/alpha/net/ProxySettings;->getInstance()Lcom/wolfram/alpha/net/ProxySettings;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyForJavaNet(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 211
    .local v0, p:Ljava/net/Proxy;
    if-eqz v0, :cond_1

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v1, proxies:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    .line 214
    goto :goto_0

    .line 216
    .end local v1           #proxies:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_1
    iget-object v3, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    goto :goto_0

    .line 219
    .end local v0           #p:Ljava/net/Proxy;
    :cond_2
    iget-object v3, p0, Lcom/wolfram/alpha/net/ProxySettings$MyProxySelector;->NO_PROXY_LIST:Ljava/util/List;

    goto :goto_0
.end method
