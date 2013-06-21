.class public Lcom/wolfram/alpha/WAEngine;
.super Lcom/wolfram/alpha/impl/WAQueryParametersImpl;
.source "WAEngine.java"


# static fields
.field private static final serialVersionUID:J = -0x48ae8ddf983ffcf0L


# instance fields
.field private appid:Ljava/lang/String;

.field downloadDir:Ljava/io/File;

.field http:Lcom/wolfram/alpha/net/HttpProvider;

.field private path:Ljava/lang/String;

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/wolfram/alpha/net/HttpProviderFactory;->getDefaultHttpProvider()Lcom/wolfram/alpha/net/HttpProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wolfram/alpha/WAEngine;-><init>(Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQueryParameters;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 1
    .parameter "params"
    .parameter "http"
    .parameter "downloadDir"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;-><init>(Lcom/wolfram/alpha/WAQueryParameters;)V

    .line 26
    const-string v0, "api.wolframalpha.com"

    iput-object v0, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    .line 27
    const-string v0, "/v2/query"

    iput-object v0, p0, Lcom/wolfram/alpha/WAEngine;->path:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 2
    .parameter "http"
    .parameter "downloadDir"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;-><init>()V

    .line 26
    const-string v1, "api.wolframalpha.com"

    iput-object v1, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    .line 27
    const-string v1, "/v2/query"

    iput-object v1, p0, Lcom/wolfram/alpha/WAEngine;->path:Ljava/lang/String;

    .line 43
    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 44
    if-eqz p2, :cond_2

    .line 45
    iput-object p2, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    .line 51
    :cond_0
    :goto_1
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lcom/wolfram/alpha/net/HttpProviderFactory;->getDefaultHttpProvider()Lcom/wolfram/alpha/net/HttpProvider;

    move-result-object v1

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "java.io.tempdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, tempDir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 0
    .parameter "appid"
    .parameter "http"
    .parameter "downloadDir"

    .prologue
    .line 54
    invoke-direct {p0, p2, p3}, Lcom/wolfram/alpha/WAEngine;-><init>(Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    .line 55
    iput-object p1, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "appid"
    .parameter "server"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/wolfram/alpha/WAEngine;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;)V
    .locals 1
    .parameter "appid"
    .parameter "server"
    .parameter "http"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/wolfram/alpha/WAEngine;-><init>(Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    .line 66
    iput-object p2, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 0
    .parameter "appid"
    .parameter "server"
    .parameter "path"
    .parameter "http"
    .parameter "downloadDir"

    .prologue
    .line 72
    invoke-direct {p0, p1, p4, p5}, Lcom/wolfram/alpha/WAEngine;-><init>(Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    .line 73
    iput-object p2, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/wolfram/alpha/WAEngine;->path:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public createQuery()Lcom/wolfram/alpha/WAQuery;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/wolfram/alpha/impl/WAQueryImpl;

    invoke-direct {v0, p0}, Lcom/wolfram/alpha/impl/WAQueryImpl;-><init>(Lcom/wolfram/alpha/WAQueryParameters;)V

    return-object v0
.end method

.method public createQuery(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;
    .locals 1
    .parameter "input"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/wolfram/alpha/WAEngine;->createQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 101
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQuery;->setInput(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public createQueryFromURL(Ljava/lang/String;)Lcom/wolfram/alpha/WAQuery;
    .locals 1
    .parameter "url"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/wolfram/alpha/WAEngine;->createQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v0

    .line 108
    .local v0, query:Lcom/wolfram/alpha/WAQuery;
    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQuery;->fillFromURL(Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    return-object v0
.end method

.method public getHttpProvider()Lcom/wolfram/alpha/net/HttpProvider;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    return-object v0
.end method

.method public performGeneralization(Ljava/lang/String;)Lcom/wolfram/alpha/WAQueryResult;
    .locals 8
    .parameter "genURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 158
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&&appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&&format=plaintext,image,imagemap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v2, url:Ljava/net/URL;
    new-instance v1, Lcom/wolfram/alpha/net/URLFetcher;

    iget-object v3, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    invoke-direct {v1, v2, v7, v3, v7}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 165
    .local v1, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 166
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    new-instance v3, Lcom/wolfram/alpha/WAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download of url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    .end local v1           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 161
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-direct {v3, v0}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 168
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .restart local v2       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 170
    :cond_1
    new-instance v3, Lcom/wolfram/alpha/impl/WAQueryResultImpl;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    iget-object v6, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;-><init>(Lcom/wolfram/alpha/WAQuery;[BLcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    return-object v3
.end method

.method public performQuery(Lcom/wolfram/alpha/WAQuery;)Lcom/wolfram/alpha/WAQueryResult;
    .locals 7
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 117
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/wolfram/alpha/WAEngine;->toURL(Lcom/wolfram/alpha/WAQuery;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v2, url:Ljava/net/URL;
    new-instance v1, Lcom/wolfram/alpha/net/URLFetcher;

    iget-object v3, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 124
    .local v1, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 125
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    new-instance v3, Lcom/wolfram/alpha/WAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download of url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    .end local v1           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 120
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-direct {v3, v0}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .restart local v2       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 129
    :cond_1
    new-instance v3, Lcom/wolfram/alpha/impl/WAQueryResultImpl;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    iget-object v6, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;-><init>(Lcom/wolfram/alpha/WAQuery;[BLcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    return-object v3
.end method

.method public performRecalculate(Ljava/lang/String;)Lcom/wolfram/alpha/WAQueryResult;
    .locals 8
    .parameter "recalcURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 137
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v2, url:Ljava/net/URL;
    new-instance v1, Lcom/wolfram/alpha/net/URLFetcher;

    iget-object v3, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    invoke-direct {v1, v2, v7, v3, v7}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 144
    .local v1, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 145
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    new-instance v3, Lcom/wolfram/alpha/WAException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download of url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was cancelled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    .end local v1           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 140
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-direct {v3, v0}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 147
    .end local v0           #e:Ljava/net/MalformedURLException;
    .restart local v1       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .restart local v2       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    new-instance v3, Lcom/wolfram/alpha/WAException;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 149
    :cond_1
    new-instance v3, Lcom/wolfram/alpha/impl/WAQueryResultImpl;

    invoke-virtual {v1}, Lcom/wolfram/alpha/net/URLFetcher;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/wolfram/alpha/WAEngine;->http:Lcom/wolfram/alpha/net/HttpProvider;

    iget-object v6, p0, Lcom/wolfram/alpha/WAEngine;->downloadDir:Ljava/io/File;

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;-><init>(Lcom/wolfram/alpha/WAQuery;[BLcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    return-object v3
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "appid"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toURL(Lcom/wolfram/alpha/WAQuery;)Ljava/lang/String;
    .locals 2
    .parameter "query"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/alpha/WAEngine;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/alpha/WAEngine;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/alpha/WAEngine;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
