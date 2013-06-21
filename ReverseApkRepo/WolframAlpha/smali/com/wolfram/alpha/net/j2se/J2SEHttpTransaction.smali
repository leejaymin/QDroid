.class public Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;
.super Ljava/lang/Object;
.source "J2SEHttpTransaction.java"

# interfaces
.implements Lcom/wolfram/alpha/net/impl/HttpTransaction;


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field private proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

.field private url:Ljava/net/URL;

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "proxySettings"
    .parameter "userAgent"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->url:Ljava/net/URL;

    .line 30
    iput-object p3, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->userAgent:Ljava/lang/String;

    .line 31
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    .line 32
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/wolfram/alpha/net/ProxySettings;->getInstance()Lcom/wolfram/alpha/net/ProxySettings;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/net/WAHttpException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    iget-object v5, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wolfram/alpha/net/ProxySettings;->getProxyForJavaNet(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v2

    .line 46
    .local v2, proxy:Ljava/net/Proxy;
    if-eqz v2, :cond_0

    .line 47
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->url:Ljava/net/URL;

    invoke-virtual {v4, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    const/16 v5, 0x3a98

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 57
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 58
    .local v3, statusCode:I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, ignoredButMustRead:Ljava/lang/String;
    new-instance v4, Lcom/wolfram/alpha/net/WAHttpException;

    invoke-direct {v4, v3}, Lcom/wolfram/alpha/net/WAHttpException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1           #ignoredButMustRead:Ljava/lang/String;
    .end local v2           #proxy:Ljava/net/Proxy;
    .end local v3           #statusCode:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 64
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/wolfram/alpha/net/WAHttpException;

    invoke-direct {v4, v0}, Lcom/wolfram/alpha/net/WAHttpException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 49
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #proxy:Ljava/net/Proxy;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    .restart local v3       #statusCode:I
    :cond_1
    return-void
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v2, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, contentType:Ljava/lang/String;
    const-string v0, "ISO-8859-1"

    .line 79
    .local v0, charset:Ljava/lang/String;
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getResponseHeaders()[[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 p0, 0x0

    check-cast p0, [[Ljava/lang/String;

    .end local p0
    return-object p0
.end method

.method public getResponseStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 97
    iget-object v6, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 98
    .local v5, strm:Ljava/io/InputStream;
    if-nez v5, :cond_0

    move-object v6, v9

    .line 115
    :goto_0
    return-object v6

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    .line 104
    .local v1, contentLength:I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 105
    .local v4, outStrm:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 107
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_1

    .line 108
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 113
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Ljava/io/UnsupportedEncodingException;
    move-object v6, v9

    .line 115
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/wolfram/alpha/net/j2se/J2SEHttpTransaction;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 124
    .local v0, strm:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #strm:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setNoRetry()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
