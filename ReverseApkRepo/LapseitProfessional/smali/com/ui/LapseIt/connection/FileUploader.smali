.class public Lcom/ui/LapseIt/connection/FileUploader;
.super Ljava/lang/Object;
.source "FileUploader.java"


# instance fields
.field boundary:Ljava/lang/String;

.field buffer:[B

.field bufferSize:I

.field bytesAvailable:I

.field bytesRead:I

.field bytesTotal:I

.field connection:Ljava/net/HttpURLConnection;

.field inputStream:Ljava/io/DataInputStream;

.field lineEnd:Ljava/lang/String;

.field maxBufferSize:I

.field outputStream:Ljava/io/DataOutputStream;

.field parameters:Lui/utils/URLVariables;

.field requestURL:Ljava/net/URL;

.field twoHyphens:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "\n"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    .line 27
    const-string v0, "*****************"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    .line 28
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    .line 31
    const v0, 0xc800

    iput v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->maxBufferSize:I

    .line 35
    iput-object p1, p0, Lcom/ui/LapseIt/connection/FileUploader;->requestURL:Ljava/net/URL;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lui/utils/URLVariables;)V
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "\n"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    .line 27
    const-string v0, "*****************"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    .line 28
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    .line 31
    const v0, 0xc800

    iput v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->maxBufferSize:I

    .line 39
    iput-object p1, p0, Lcom/ui/LapseIt/connection/FileUploader;->requestURL:Ljava/net/URL;

    .line 40
    iput-object p2, p0, Lcom/ui/LapseIt/connection/FileUploader;->parameters:Lui/utils/URLVariables;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lui/utils/URLVariables;I)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "pieceSize"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "\n"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    .line 27
    const-string v0, "*****************"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    .line 28
    const-string v0, "--"

    iput-object v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    .line 31
    const v0, 0xc800

    iput v0, p0, Lcom/ui/LapseIt/connection/FileUploader;->maxBufferSize:I

    .line 44
    iput-object p1, p0, Lcom/ui/LapseIt/connection/FileUploader;->requestURL:Ljava/net/URL;

    .line 45
    iput-object p2, p0, Lcom/ui/LapseIt/connection/FileUploader;->parameters:Lui/utils/URLVariables;

    .line 46
    iput p3, p0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    .line 47
    return-void
.end method


# virtual methods
.method public uploadFiles(Ljava/util/ArrayList;)V
    .locals 16
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
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->requestURL:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    .line 53
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 54
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 56
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const-string v13, "POST"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    const-string v13, "Content-Type"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "multipart/form-data;boundary="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v12, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    .line 62
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->parameters:Lui/utils/URLVariables;

    if-eqz v12, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->parameters:Lui/utils/URLVariables;

    invoke-virtual {v12}, Lui/utils/URLVariables;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 100
    .local v5, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_3

    .line 116
    .end local v5           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 120
    .local v9, serverResponseCode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, serverResponseMessage:Ljava/lang/String;
    const/16 v12, 0xc8

    if-ne v9, v12, :cond_5

    .line 123
    const-string v12, "trace"

    const-string v13, "Upload was successful"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .local v8, reader:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 134
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    :goto_3
    return-void

    .line 63
    .end local v9           #serverResponseCode:I
    .end local v10           #serverResponseMessage:Ljava/lang/String;
    :cond_1
    const-string v13, "trace"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "Uploading file "

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    const-string v13, "Content-Disposition: form-data;"

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "name=\"Filedata"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v12, "filename=\""

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    const-string v13, "ContentType:application/octetstream;"

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesAvailable:I

    .line 75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesTotal:I

    .line 76
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesAvailable:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->maxBufferSize:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    .line 77
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    new-array v1, v12, [B

    .line 79
    .local v1, buffer:[B
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    invoke-virtual {v2, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesRead:I

    .line 80
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesRead:I

    if-gtz v12, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 81
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesTotal:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesAvailable:I

    sub-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesTotal:I

    div-int v7, v12, v13

    .line 83
    .local v7, perc:I
    const-string v12, "trace"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Writing buffer "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    invoke-virtual {v12, v1, v13, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 85
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesAvailable:I

    .line 86
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesAvailable:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->maxBufferSize:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    .line 87
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->bufferSize:I

    invoke-virtual {v2, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->bytesRead:I

    goto/16 :goto_4

    .line 101
    .end local v1           #buffer:[B
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .end local v7           #perc:I
    .restart local v5       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->parameters:Lui/utils/URLVariables;

    invoke-virtual {v12, v4}, Lui/utils/URLVariables;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 104
    .local v11, val:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    const-string v13, "Content-Disposition: form-data;"

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "name=\""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    const-string v13, "ContentType:application/octetstream;"

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v12, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->boundary:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/LapseIt/connection/FileUploader;->twoHyphens:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/LapseIt/connection/FileUploader;->outputStream:Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ui/LapseIt/connection/FileUploader;->lineEnd:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 129
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11           #val:Ljava/lang/String;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    .restart local v9       #serverResponseCode:I
    .restart local v10       #serverResponseMessage:Ljava/lang/String;
    :cond_4
    const-string v12, "trace"

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 132
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_5
    const-string v12, "trace"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Upload error "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
