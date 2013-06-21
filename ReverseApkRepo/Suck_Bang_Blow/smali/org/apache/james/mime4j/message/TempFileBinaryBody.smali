.class Lorg/apache/james/mime4j/message/TempFileBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# instance fields
.field private tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    .line 50
    invoke-static {}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getInstance()Lorg/apache/james/mime4j/message/storage/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/storage/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v1

    .line 51
    .local v1, tempPath:Lorg/apache/james/mime4j/message/storage/TempPath;
    const-string v2, "attachment"

    const-string v3, ".bin"

    invoke-interface {v1, v2, v3}, Lorg/apache/james/mime4j/message/storage/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    .line 53
    iget-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v2}, Lorg/apache/james/mime4j/message/storage/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 54
    .local v0, out:Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->delete()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    .line 83
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/message/storage/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/storage/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 70
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/decoder/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 71
    return-void
.end method
