.class public Lcom/wolfram/alpha/net/HttpProviderFactory;
.super Ljava/lang/Object;
.source "HttpProviderFactory.java"


# static fields
.field private static provider:Lcom/wolfram/alpha/net/HttpProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultHttpProvider()Lcom/wolfram/alpha/net/HttpProvider;
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/wolfram/alpha/net/HttpProviderFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/wolfram/alpha/net/HttpProviderFactory;->provider:Lcom/wolfram/alpha/net/HttpProvider;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;

    invoke-direct {v1}, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;-><init>()V

    sput-object v1, Lcom/wolfram/alpha/net/HttpProviderFactory;->provider:Lcom/wolfram/alpha/net/HttpProvider;

    .line 19
    :cond_0
    sget-object v1, Lcom/wolfram/alpha/net/HttpProviderFactory;->provider:Lcom/wolfram/alpha/net/HttpProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
