.class public Lcom/ui/LapseIt/connection/ConnSample;
.super Ljava/lang/Object;
.source "ConnSample.java"


# instance fields
.field boundary:Ljava/lang/String;

.field buffer:[B

.field bufferSize:I

.field bytesAvailable:I

.field bytesRead:I

.field connection:Ljava/net/HttpURLConnection;

.field inputStream:Ljava/io/DataInputStream;

.field lineEnd:Ljava/lang/String;

.field maxBufferSize:I

.field outputStream:Ljava/io/DataOutputStream;

.field requestURL:Ljava/net/URL;

.field twoHyphens:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/ConnSample;->lineEnd:Ljava/lang/String;

    .line 24
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/ConnSample;->twoHyphens:Ljava/lang/String;

    .line 25
    const-string v0, "*****"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/ConnSample;->boundary:Ljava/lang/String;

    .line 29
    const/high16 v0, 0x10

    iput v0, p0, Lcom/ui/LapseIt/connection/ConnSample;->maxBufferSize:I

    .line 33
    iput-object p1, p0, Lcom/ui/LapseIt/connection/ConnSample;->requestURL:Ljava/net/URL;

    .line 34
    const-string v0, "trace"

    const-string v1, "Criado "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public upload(Ljava/io/File;)V
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 40
    new-instance v4, Lui/utils/URLVariables;

    const-string v6, "UTF-8"

    invoke-direct {v4, v6}, Lui/utils/URLVariables;-><init>(Ljava/lang/String;)V

    .line 41
    .local v4, urlVars:Lui/utils/URLVariables;
    const-string v6, "message"

    const-string v7, "Hello cath !!"

    invoke-virtual {v4, v6, v7}, Lui/utils/URLVariables;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v6, "greet"

    const-string v7, "Oil\u00e1aa"

    invoke-virtual {v4, v6, v7}, Lui/utils/URLVariables;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->requestURL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    iput-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    .line 46
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 47
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 48
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 50
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v5, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v4}, Lui/utils/URLVariables;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 80
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v1, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 88
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 90
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 91
    .local v2, serverResponseCode:I
    iget-object v6, p0, Lcom/ui/LapseIt/connection/ConnSample;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, serverResponseMessage:Ljava/lang/String;
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Test result is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 84
    .end local v2           #serverResponseCode:I
    .end local v3           #serverResponseMessage:Ljava/lang/String;
    :cond_0
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Linha: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
