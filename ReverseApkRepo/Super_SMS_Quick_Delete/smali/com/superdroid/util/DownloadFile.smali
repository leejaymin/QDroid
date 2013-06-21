.class public Lcom/superdroid/util/DownloadFile;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# static fields
.field public static final BUFFER_LENGTH:I = 0x1400

.field public static final TIMEOUT_PER_KB:I = 0x1388


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "remoteURL"
    .parameter "localPath"
    .parameter "overwrite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    const-class v1, Lcom/superdroid/util/DownloadFile;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "download start"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, output:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 23
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 25
    .local v1, fileStream:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, fileurl:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .local p0, connection:Ljava/net/HttpURLConnection;
    const/16 v0, 0x1388

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    .line 31
    .end local v2           #fileurl:Ljava/net/URL;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .end local v1           #fileStream:Ljava/io/DataInputStream;
    .local v0, fileStream:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 38
    .local v2, remoteLength:I
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, localFile:Ljava/io/File;
    invoke-static {v1}, Lcom/superdroid/util/DownloadFile;->ensureDirExists(Ljava/io/File;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_7

    .line 42
    if-nez p2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide p1

    int-to-long v4, v2

    cmp-long p1, p1, v4

    if-nez p1, :cond_6

    .line 62
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 68
    :cond_1
    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object p0, v3

    .line 74
    .end local v1           #localFile:Ljava/io/File;
    .end local v2           #remoteLength:I
    .end local v3           #output:Ljava/io/OutputStream;
    .end local p2
    .local p0, output:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 32
    .end local v0           #fileStream:Ljava/io/DataInputStream;
    .local v1, fileStream:Ljava/io/DataInputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    .local p0, connection:Ljava/net/HttpURLConnection;
    .restart local p1
    .restart local p2
    :catch_0
    move-exception p1

    .line 33
    .local p1, e:Ljava/io/FileNotFoundException;
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    .end local p1           #e:Ljava/io/FileNotFoundException;
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 61
    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p2, v3

    .end local v3           #output:Ljava/io/OutputStream;
    .local p2, output:Ljava/io/OutputStream;
    move-object p1, v1

    .line 62
    .end local v1           #fileStream:Ljava/io/DataInputStream;
    .local p1, fileStream:Ljava/io/DataInputStream;
    :goto_1
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 65
    :cond_3
    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 68
    :cond_4
    if-eqz p0, :cond_5

    .line 69
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    :cond_5
    throw v0

    .line 46
    .end local p1           #fileStream:Ljava/io/DataInputStream;
    .restart local v0       #fileStream:Ljava/io/DataInputStream;
    .local v1, localFile:Ljava/io/File;
    .restart local v2       #remoteLength:I
    .restart local v3       #output:Ljava/io/OutputStream;
    .local p2, overwrite:Z
    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 49
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 50
    new-instance p2, Ljava/io/FileOutputStream;

    .end local p2           #overwrite:Z
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 52
    .end local v3           #output:Ljava/io/OutputStream;
    .local p2, output:Ljava/io/OutputStream;
    const/16 p1, 0x1400

    :try_start_6
    new-array p1, p1, [B

    .line 54
    .end local v1           #localFile:Ljava/io/File;
    .end local v2           #remoteLength:I
    .local p1, filebyte:[B
    :goto_2
    const/4 v1, 0x0

    const/16 v2, 0x1400

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 55
    .local v1, readCount:I
    if-gez v1, :cond_b

    .line 60
    sget-object p1, Lcom/superdroid/logger/LoggerFactory;->logger:Lcom/superdroid/logger/Logger;

    .end local p1           #filebyte:[B
    const-class v1, Lcom/superdroid/util/DownloadFile;

    .end local v1           #readCount:I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "download finish"

    aput-object v4, v2, v3

    invoke-interface {p1, v1, v2}, Lcom/superdroid/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 62
    if-eqz p2, :cond_8

    .line 63
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 65
    :cond_8
    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 68
    :cond_9
    if-eqz p0, :cond_a

    .line 69
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object p0, p2

    .line 74
    .end local p2           #output:Ljava/io/OutputStream;
    .local p0, output:Ljava/io/OutputStream;
    goto :goto_0

    .line 58
    .restart local v1       #readCount:I
    .local p0, connection:Ljava/net/HttpURLConnection;
    .restart local p1       #filebyte:[B
    .restart local p2       #output:Ljava/io/OutputStream;
    :cond_b
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p2, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 61
    .end local v1           #readCount:I
    .end local p1           #filebyte:[B
    :catchall_1
    move-exception p1

    move-object v6, p1

    move-object p1, v0

    .end local v0           #fileStream:Ljava/io/DataInputStream;
    .local p1, fileStream:Ljava/io/DataInputStream;
    move-object v0, v6

    goto :goto_1

    .end local p0           #connection:Ljava/net/HttpURLConnection;
    .local v0, connection:Ljava/net/HttpURLConnection;
    .local v1, fileStream:Ljava/io/DataInputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    .local p1, localPath:Ljava/lang/String;
    .local p2, overwrite:Z
    :catchall_2
    move-exception p0

    move-object p1, v1

    .end local v1           #fileStream:Ljava/io/DataInputStream;
    .local p1, fileStream:Ljava/io/DataInputStream;
    move-object p2, v3

    .end local v3           #output:Ljava/io/OutputStream;
    .local p2, output:Ljava/io/OutputStream;
    move-object v6, v0

    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .local v6, connection:Ljava/net/HttpURLConnection;
    move-object v0, p0

    move-object p0, v6

    .end local v6           #connection:Ljava/net/HttpURLConnection;
    .restart local p0       #connection:Ljava/net/HttpURLConnection;
    goto :goto_1

    .end local p1           #fileStream:Ljava/io/DataInputStream;
    .end local p2           #output:Ljava/io/OutputStream;
    .local v0, fileStream:Ljava/io/DataInputStream;
    .restart local v3       #output:Ljava/io/OutputStream;
    :catchall_3
    move-exception p1

    move-object p2, v3

    .end local v3           #output:Ljava/io/OutputStream;
    .restart local p2       #output:Ljava/io/OutputStream;
    move-object v6, v0

    .end local v0           #fileStream:Ljava/io/DataInputStream;
    .local v6, fileStream:Ljava/io/DataInputStream;
    move-object v0, p1

    move-object p1, v6

    .end local v6           #fileStream:Ljava/io/DataInputStream;
    .restart local p1       #fileStream:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private static ensureDirExists(Ljava/io/File;)V
    .locals 2
    .parameter "localFile"

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, parentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    :cond_0
    return-void
.end method
