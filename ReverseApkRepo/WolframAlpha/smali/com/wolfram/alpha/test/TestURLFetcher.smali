.class public Lcom/wolfram/alpha/test/TestURLFetcher;
.super Ljava/lang/Object;
.source "TestURLFetcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 18
    new-instance v1, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;

    invoke-direct {v1}, Lcom/wolfram/alpha/net/apache/ApacheHttpProvider;-><init>()V

    .line 21
    .local v1, provider:Lcom/wolfram/alpha/net/HttpProvider;
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://api.wolframalpha.com/v1/query?input=pi&appid=wri123"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    .local v2, url:Ljava/net/URL;
    new-instance v0, Lcom/wolfram/alpha/net/URLFetcher;

    const-string v3, "c:\\users\\tgayley\\foo.txt"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 24
    .local v0, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 26
    new-instance v1, Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;

    .end local v1           #provider:Lcom/wolfram/alpha/net/HttpProvider;
    invoke-direct {v1}, Lcom/wolfram/alpha/net/j2se/J2SEHttpProvider;-><init>()V

    .line 29
    .restart local v1       #provider:Lcom/wolfram/alpha/net/HttpProvider;
    new-instance v0, Lcom/wolfram/alpha/net/URLFetcher;

    .end local v0           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    const-string v3, "c:\\users\\tgayley\\foo2.txt"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 30
    .restart local v0       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 32
    return-void
.end method
