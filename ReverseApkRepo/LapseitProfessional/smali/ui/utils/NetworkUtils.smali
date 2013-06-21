.class public Lui/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static stat:Landroid/os/StatFs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToObject([B)Ljava/lang/Object;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v3, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 52
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    .end local v1           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v1

    .line 50
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBytes(Ljava/lang/Object;)[B
    .locals 3
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .local v2, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 35
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 38
    .local v1, data:[B
    return-object v1
.end method

.method public static getFreeSpace(Z)J
    .locals 8
    .parameter "showInBytes"

    .prologue
    .line 75
    sget-object v4, Lui/utils/NetworkUtils;->stat:Landroid/os/StatFs;

    if-nez v4, :cond_0

    .line 76
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sput-object v4, Lui/utils/NetworkUtils;->stat:Landroid/os/StatFs;

    .line 79
    :cond_0
    sget-object v4, Lui/utils/NetworkUtils;->stat:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lui/utils/NetworkUtils;->stat:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 80
    .local v0, bytesAvailable:J
    const-wide/32 v4, 0x100000

    div-long v2, v0, v4

    .line 82
    .local v2, megAvailable:J
    if-eqz p0, :cond_1

    .line 85
    .end local v0           #bytesAvailable:J
    :goto_0
    return-wide v0

    .restart local v0       #bytesAvailable:J
    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 58
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 59
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 61
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 66
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 67
    .local v2, ex:Ljava/net/SocketException;
    const-string v5, "trace"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "postURL"
    .parameter "model"
    .parameter "version"
    .parameter "error"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lui/utils/NetworkUtils$1;

    invoke-direct {v1, p1, p2, p3, p0}, Lui/utils/NetworkUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public static zipDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "dir"
    .parameter "zipfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, d:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 93
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Not a directory:  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, entries:[Ljava/lang/String;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 100
    .local v0, buffer:[B
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v8, out:Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v9, v3

    if-lt v6, v9, :cond_1

    .line 114
    invoke-virtual {v8}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 117
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v9

    .line 103
    :cond_1
    new-instance v5, Ljava/io/File;

    aget-object v9, v3, v6

    invoke-direct {v5, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v5, f:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    .line 105
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 106
    .local v7, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 109
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    .line 111
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 102
    .end local v1           #bytesRead:I
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #in:Ljava/io/FileInputStream;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 110
    .restart local v1       #bytesRead:I
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #in:Ljava/io/FileInputStream;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1
.end method
