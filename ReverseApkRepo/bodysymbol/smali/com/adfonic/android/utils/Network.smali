.class public Lcom/adfonic/android/utils/Network;
.super Ljava/lang/Object;
.source "Network.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 33
    .local v1, urlConnection:Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 34
    return-object v1
.end method

.method public static requestDestinationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "urlString"

    .prologue
    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/adfonic/android/utils/Network;->getUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 22
    .local v1, urlConnection:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 23
    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    .end local v1           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Error getting ad destination URL"

    invoke-static {v2, v0}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    const-string v2, ""

    goto :goto_0
.end method
