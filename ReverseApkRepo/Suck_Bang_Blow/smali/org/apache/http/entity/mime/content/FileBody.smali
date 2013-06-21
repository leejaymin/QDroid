.class public Lorg/apache/http/entity/mime/content/FileBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source "FileBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 56
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "mimeType"

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    .line 53
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/http/entity/mime/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v0, in:Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v2, v3, [B

    .line 71
    .local v2, tmp:[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, l:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 72
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    .end local v1           #l:I
    .end local v2           #tmp:[B
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 74
    .restart local v1       #l:I
    .restart local v2       #tmp:[B
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 78
    return-void
.end method
