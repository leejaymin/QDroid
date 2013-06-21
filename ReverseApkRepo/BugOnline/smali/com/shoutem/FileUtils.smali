.class public Lcom/shoutem/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 20
    .local v2, length:J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 25
    :cond_0
    long-to-int v6, v2

    new-array v0, v6, [B

    .line 28
    .local v0, bytes:[B
    const/4 v5, 0x0

    .line 29
    .local v5, offset:I
    const/4 v4, 0x0

    .line 31
    .local v4, numRead:I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    array-length v6, v0

    sub-int/2addr v6, v5

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 32
    add-int/2addr v5, v4

    goto :goto_0

    .line 36
    :cond_1
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 37
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not completely read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 42
    return-object v0
.end method
