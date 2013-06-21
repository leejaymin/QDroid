.class public Lcom/ui/LapseIt/connection/FileUploaderService;
.super Landroid/app/IntentService;
.source "FileUploaderService.java"


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

.field params:Lui/utils/URLVariables;

.field requestURL:Ljava/net/URL;

.field twoHyphens:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v0, "\n"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    .line 30
    const-string v0, "*****************"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    .line 31
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    .line 34
    const/high16 v0, 0x10

    iput v0, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->maxBufferSize:I

    .line 39
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "requestURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    iput-object v1, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->requestURL:Ljava/net/URL;

    .line 45
    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui/utils/URLVariables;

    iput-object v1, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->params:Lui/utils/URLVariables;

    .line 46
    const-string v1, "bufferSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    .line 47
    return-void
.end method

.method public uploadFiles(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->requestURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    iput-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    .line 53
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 54
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 56
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    const-string v11, "Content-Type"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "multipart/form-data;boundary="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v10, Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    .line 62
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 93
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->params:Lui/utils/URLVariables;

    if-eqz v10, :cond_0

    .line 94
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->params:Lui/utils/URLVariables;

    invoke-virtual {v10}, Lui/utils/URLVariables;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 96
    .local v4, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_3

    .line 112
    .end local v4           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 113
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 115
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 116
    .local v7, serverResponseCode:I
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, serverResponseMessage:Ljava/lang/String;
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_5

    .line 119
    const-string v10, "trace"

    const-string v11, "Upload was successful"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v6, reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 130
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :goto_3
    return-void

    .line 63
    .end local v7           #serverResponseCode:I
    .end local v8           #serverResponseMessage:Ljava/lang/String;
    :cond_1
    const-string v11, "trace"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "Uploading file "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 67
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "Content-Disposition: form-data;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 68
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "name=\"Filedata"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 69
    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "filename=\""

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 70
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 71
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "ContentType:application/octetstream;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesAvailable:I

    .line 75
    iget v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesAvailable:I

    iget v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->maxBufferSize:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    .line 76
    iget v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    new-array v0, v10, [B

    .line 78
    .local v0, buffer:[B
    const/4 v10, 0x0

    iget v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    invoke-virtual {v1, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesRead:I

    .line 79
    :goto_4
    iget v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesRead:I

    if-gtz v10, :cond_2

    .line 86
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 87
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 80
    :cond_2
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    const/4 v11, 0x0

    iget v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    invoke-virtual {v10, v0, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 81
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesAvailable:I

    .line 82
    iget v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesAvailable:I

    iget v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->maxBufferSize:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    .line 83
    const/4 v10, 0x0

    iget v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bufferSize:I

    invoke-virtual {v1, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    iput v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->bytesRead:I

    goto :goto_4

    .line 97
    .end local v0           #buffer:[B
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v4       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->params:Lui/utils/URLVariables;

    invoke-virtual {v10, v3}, Lui/utils/URLVariables;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 100
    .local v9, val:Ljava/lang/String;
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 101
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "Content-Disposition: form-data;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 102
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "name=\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 103
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    const-string v11, "ContentType:application/octetstream;"

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 104
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 106
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 107
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->boundary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    iget-object v10, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->outputStream:Ljava/io/DataOutputStream;

    iget-object v11, p0, Lcom/ui/LapseIt/connection/FileUploaderService;->lineEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9           #val:Ljava/lang/String;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .restart local v7       #serverResponseCode:I
    .restart local v8       #serverResponseMessage:Ljava/lang/String;
    :cond_4
    const-string v10, "trace"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_5
    const-string v10, "trace"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Upload error "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
