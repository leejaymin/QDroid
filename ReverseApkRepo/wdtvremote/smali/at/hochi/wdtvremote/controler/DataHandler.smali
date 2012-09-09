.class public Lat/hochi/wdtvremote/controler/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "command"

    .prologue
    .line 29
    const-string v2, ""

    .line 30
    .local v2, result:Ljava/lang/String;
    const-string v3, "http://192.168.1.120/addons/remote/"

    .line 32
    .local v3, url:Ljava/lang/String;
    const-string p0, "wdlxtv"

    .line 33
    .local p0, user:Ljava/lang/String;
    const-string p0, "wdlxtv"

    .line 36
    .local p0, pass:Ljava/lang/String;
    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0           #pass:Ljava/lang/String;
    const-string v0, "DATAHANDLER: 1"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, myFileUrl:Ljava/net/URL;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, httpMethod:Lorg/apache/http/client/methods/HttpPost;
    new-instance p0, Lat/hochi/wdtvremote/controler/DataHandler$1;

    invoke-direct {p0}, Lat/hochi/wdtvremote/controler/DataHandler$1;-><init>()V

    invoke-static {p0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 48
    const-string p0, "Accept"

    const-string v3, "text/html"

    .end local v3           #url:Ljava/lang/String;
    invoke-virtual {v0, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string p0, "Content-Type"

    const-string v3, "application/xml"

    invoke-virtual {v0, p0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 53
    .local p0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 54
    .local p0, a:Lorg/apache/http/HttpResponse;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v0           #httpMethod:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .end local p0           #a:Lorg/apache/http/HttpResponse;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DATAHANDLER: 2"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 59
    .local p0, conn:Ljava/net/HttpURLConnection;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DATAHANDLER: 2.1"

    .end local v1           #myFileUrl:Ljava/net/URL;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 63
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 70
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v1, out:Ljava/io/DataOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "button="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "u"

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, content:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\nsending form to HTTP server ..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local v0           #content:Ljava/lang/String;
    const-string v3, "DATAHANDLER: 2.2"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DATAHANDLER: 2.3"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DATAHANDLER: 2.4"

    .end local v1           #out:Ljava/io/DataOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 86
    .local p0, is:Ljava/io/InputStream;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DATAHANDLER: 2.5"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v0, isr:Ljava/io/InputStreamReader;
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0           #is:Ljava/io/InputStream;
    const-string v1, "DATAHANDLER: 2.6"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v1, rd:Ljava/io/BufferedReader;
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "DATAHANDLER: 3"

    .end local v0           #isr:Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 94
    .end local v2           #result:Ljava/lang/String;
    .local v0, result:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .local p0, line:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 98
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .end local p0           #line:Ljava/lang/String;
    const-string v2, "DATAHANDLER: 4"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 101
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DATAHANDLER: 5"

    .end local v1           #rd:Ljava/io/BufferedReader;
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v0

    .line 107
    .end local v0           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    return-object p0

    .line 95
    .restart local v0       #result:Ljava/lang/String;
    .restart local v1       #rd:Ljava/io/BufferedReader;
    .local p0, line:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #line:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p0

    .end local v0           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    move-object v0, p0

    .end local p0           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v0           #result:Ljava/lang/String;
    .end local v1           #rd:Ljava/io/BufferedReader;
    .restart local v2       #result:Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object v0, v2

    .line 105
    .end local v2           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    .local p0, e:Ljava/io/IOException;
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, v0

    .end local v0           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_1

    .line 103
    .end local p0           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :catch_1
    move-exception p0

    goto :goto_2
.end method
