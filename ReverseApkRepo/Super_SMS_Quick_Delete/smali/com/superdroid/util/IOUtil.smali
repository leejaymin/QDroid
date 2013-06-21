.class public Lcom/superdroid/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final MAX_SPACE:J = 0x800000L

.field private static final NULL_LENGTH:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static varargs concatPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "paths"

    .prologue
    const/4 v3, 0x1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v0, concatenatedPath:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 32
    array-length v2, p0

    sub-int/2addr v2, v3

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 27
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/superdroid/util/IOUtil;->endsWithSeparator(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .parameter "srcFile"
    .parameter "destFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/ResourceNotExistException;,
            Lcom/superdroid/SuperIOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 55
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 57
    .local v7, success:Z
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #fis:Ljava/io/FileInputStream;
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 64
    .local v5, parentFile:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 65
    invoke-static {v5}, Lcom/superdroid/util/IOUtil;->makeDirs(Ljava/io/File;)V

    .line 68
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 71
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, readCount:I
    if-gtz v6, :cond_2

    .line 74
    invoke-static {v2}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 75
    invoke-static {v4}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    const/4 v7, 0x1

    .line 80
    invoke-static {v2}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v4}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 82
    if-nez v7, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 86
    :cond_1
    return-void

    .line 58
    .end local v0           #buffer:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #parentFile:Ljava/io/File;
    .end local v6           #readCount:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 59
    .local v1, e:Ljava/io/FileNotFoundException;
    new-instance v8, Lcom/superdroid/ResourceNotExistException;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/superdroid/ResourceNotExistException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #parentFile:Ljava/io/File;
    .restart local v6       #readCount:I
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 77
    .end local v0           #buffer:[B
    .end local v6           #readCount:I
    :catch_1
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .line 78
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #parentFile:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/superdroid/SuperIOException;->newIOException(Ljava/lang/Throwable;)Lcom/superdroid/SuperIOException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 80
    :goto_2
    invoke-static {v2}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 81
    invoke-static {v3}, Lcom/superdroid/util/IOUtil;->closeStream(Ljava/io/Closeable;)V

    .line 82
    if-nez v7, :cond_3

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 85
    :cond_3
    throw v8

    .line 79
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #parentFile:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 77
    .end local v5           #parentFile:Ljava/io/File;
    :catch_2
    move-exception v8

    move-object v1, v8

    goto :goto_1
.end method

.method public static createFile(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, dir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 116
    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 133
    .local v1, files:[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 137
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 138
    return-void

    .line 133
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v3

    .line 134
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->delete(Ljava/io/File;)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->delete(Ljava/io/File;)V

    .line 128
    return-void
.end method

.method public static deleteFilesInDir(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 152
    :cond_0
    return-void

    .line 149
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v0, v1, v3

    .line 150
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->delete(Ljava/io/File;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->deleteFilesInDir(Ljava/io/File;)V

    .line 142
    return-void
.end method

.method private static endsWithSeparator(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 37
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ensureDirExists(Ljava/io/File;)V
    .locals 2
    .parameter "localFile"

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, parentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_0
    return-void
.end method

.method public static getCanonicalPath(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .parameter "file"

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 119
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, lastDotIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTmpDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    const-string v0, "/sdcard/.servotmp"

    .line 210
    .local v0, defaultTmpDir:Ljava/lang/String;
    invoke-static {}, Lcom/superdroid/util/IOUtil;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 214
    :goto_0
    return-object v2

    .line 213
    :cond_0
    const-string v2, "java.io.tmpdir"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, tmpDir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/superdroid/util/IOUtil;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getUsedSpace(Ljava/io/File;)J
    .locals 8
    .parameter "dir"

    .prologue
    .line 222
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    :cond_0
    const-wide/16 v3, 0x0

    .line 234
    :goto_0
    return-wide v3

    .line 226
    :cond_1
    const-wide/16 v1, 0x0

    .line 227
    .local v1, length:J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_2

    :goto_2
    move-wide v3, v1

    .line 234
    goto :goto_0

    .line 228
    :cond_2
    aget-object v0, v3, v5

    .line 229
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->getUsedSpace(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v0           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_2
.end method

.method public static isAndroid()Z
    .locals 2

    .prologue
    .line 218
    const-string v0, "Dalvik"

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExceedLimitation(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"

    .prologue
    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/superdroid/util/IOUtil;->getUsedSpace(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeDirs(Ljava/io/File;)V
    .locals 4
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/SuperIOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 103
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 104
    new-instance v1, Lcom/superdroid/SuperIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create folder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-direct {v1, v2}, Lcom/superdroid/SuperIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readBytes(Ljava/io/ByteArrayInputStream;)[B
    .locals 4
    .parameter "bais"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/superdroid/util/IOUtil;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 180
    .local v1, length:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 185
    :goto_0
    return-object v2

    .line 183
    :cond_0
    new-array v0, v1, [B

    .line 184
    .local v0, bytes:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-object v2, v0

    .line 185
    goto :goto_0
.end method

.method public static readInt(Ljava/io/ByteArrayInputStream;)I
    .locals 6
    .parameter "bais"

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 163
    .local v0, b1:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 164
    .local v1, b2:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 165
    .local v2, b3:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 166
    .local v3, b4:I
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public static readString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 5
    .parameter "bais"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/superdroid/util/IOUtil;->readInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 195
    .local v1, length:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 201
    :goto_0
    return-object v3

    .line 198
    :cond_0
    new-array v0, v1, [B

    .line 199
    .local v0, bytes:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 200
    invoke-static {v0}, Lcom/superdroid/util/StringUtil;->newString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, str:Ljava/lang/String;
    move-object v3, v2

    .line 201
    goto :goto_0
.end method

.method public static writeBytes(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 2
    .parameter "baos"
    .parameter "bytes"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    invoke-static {p0}, Lcom/superdroid/util/IOUtil;->writeNull(Ljava/io/ByteArrayOutputStream;)V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/superdroid/util/IOUtil;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 174
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .parameter "baos"
    .parameter "value"

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    return-void
.end method

.method public static writeNull(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter "baos"

    .prologue
    .line 205
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/superdroid/util/IOUtil;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 206
    return-void
.end method

.method public static writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "baos"
    .parameter "str"

    .prologue
    .line 189
    if-nez p1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 190
    .local v0, bytes:[B
    :goto_0
    invoke-static {p0, v0}, Lcom/superdroid/util/IOUtil;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    .line 191
    return-void

    .line 189
    .end local v0           #bytes:[B
    :cond_0
    invoke-static {p1}, Lcom/superdroid/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
