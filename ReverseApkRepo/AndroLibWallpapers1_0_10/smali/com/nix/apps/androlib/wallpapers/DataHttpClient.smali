.class public Lcom/nix/apps/androlib/wallpapers/DataHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "DataHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public GetHTML(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 29
    .local v5, uri:Ljava/net/URI;
    if-eqz p2, :cond_0

    .line 30
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 32
    .local v3, methodpost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "ISO-8859-1"

    invoke-direct {v6, p2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 39
    .end local v3           #methodpost:Lorg/apache/http/client/methods/HttpPost;
    .local v4, res:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 40
    .local v0, data:Ljava/io/InputStream;
    if-nez p3, :cond_1

    .line 41
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .end local v0           #data:Ljava/io/InputStream;
    .end local v4           #res:Lorg/apache/http/HttpResponse;
    .end local v5           #uri:Ljava/net/URI;
    :goto_1
    return-object v6

    .line 35
    .restart local v5       #uri:Ljava/net/URI;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 37
    .local v2, methodget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .restart local v4       #res:Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 43
    .end local v2           #methodget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v0       #data:Ljava/io/InputStream;
    :cond_1
    invoke-static {v0, p3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    goto :goto_1

    .line 45
    .end local v0           #data:Ljava/io/InputStream;
    .end local v4           #res:Lorg/apache/http/HttpResponse;
    .end local v5           #uri:Ljava/net/URI;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 46
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 54
    .end local v1           #e:Ljava/net/URISyntaxException;
    :goto_2
    const-string v6, ""

    goto :goto_1

    .line 47
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 48
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 49
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 50
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 51
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 52
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public GetXMLGzip(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter
    .parameter "charset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v6, "no-cache"

    const-string v6, "Keep-Alive"

    const-string v6, "Content-Encoding"

    const-string v6, "Connection"

    const-string v8, ""

    .line 64
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 65
    .local v5, uri:Ljava/net/URI;
    if-eqz p2, :cond_0

    .line 66
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 67
    .local v3, methodpost:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "pragma"

    const-string v7, "no-cache"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 87
    .end local v3           #methodpost:Lorg/apache/http/client/methods/HttpPost;
    .local v4, res:Lorg/apache/http/HttpResponse;
    :goto_0
    if-nez v4, :cond_1

    .line 89
    const-string v6, ""

    move-object v6, v8

    .line 118
    .end local v4           #res:Lorg/apache/http/HttpResponse;
    .end local v5           #uri:Ljava/net/URI;
    :goto_1
    return-object v6

    .line 72
    .restart local v5       #uri:Ljava/net/URI;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 73
    .local v2, methodget:Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "pragma"

    const-string v7, "no-cache"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 78
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .restart local v4       #res:Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 79
    .end local v4           #res:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v4, 0x0

    .restart local v4       #res:Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 92
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #methodget:Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    const-string v6, "Content-Encoding"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_3

    .line 94
    const-string v6, "Content-Encoding"

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v0, data:Ljava/io/InputStream;
    :goto_2
    const/4 v4, 0x0

    .line 104
    if-nez p3, :cond_4

    .line 105
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->generateString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 98
    .end local v0           #data:Ljava/io/InputStream;
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #data:Ljava/io/InputStream;
    goto :goto_2

    .line 101
    .end local v0           #data:Ljava/io/InputStream;
    :cond_3
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #data:Ljava/io/InputStream;
    goto :goto_2

    .line 107
    :cond_4
    invoke-static {v0, p3}, Lcom/nix/apps/androlib/wallpapers/modCommon;->generateString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    goto :goto_1

    .line 109
    .end local v0           #data:Ljava/io/InputStream;
    .end local v4           #res:Lorg/apache/http/HttpResponse;
    .end local v5           #uri:Ljava/net/URI;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 110
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 118
    .end local v1           #e:Ljava/net/URISyntaxException;
    :goto_3
    const-string v6, ""

    move-object v6, v8

    goto :goto_1

    .line 111
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 112
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 114
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 116
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
