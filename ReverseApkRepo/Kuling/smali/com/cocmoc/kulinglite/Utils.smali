.class public Lcom/cocmoc/kulinglite/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;
    }
.end annotation


# static fields
.field private static final EXT_DIR:Ljava/io/File; = null

.field private static final INET:Ljava/lang/String; = "android.permission.INTERNET"

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field private static final OK:I = 0x0

.field private static final RO:Ljava/lang/String; = "mounted_ro"

.field private static final RW:Ljava/lang/String; = "mounted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/cocmoc/kulinglite/Utils;->EXT_DIR:Ljava/io/File;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadFileFromSD(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "s"

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/cocmoc/kulinglite/Utils;->EXT_DIR:Ljava/io/File;

    const-string v2, "\\\\|/"

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v0, target:Ljava/io/File;
    invoke-static {v0}, Lcom/cocmoc/kulinglite/Utils;->isReadReady(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ReadFromSD(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "file"

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/cocmoc/kulinglite/Utils;->ReadFileFromSD(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static WriteToSD(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .parameter "ctx"
    .parameter "is"
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    const-string v9, "Kuling"

    .line 66
    invoke-static {p0}, Lcom/cocmoc/kulinglite/Utils;->isWriteReady(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v8

    .line 91
    :goto_0
    return v5

    .line 67
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/cocmoc/kulinglite/Utils;->EXT_DIR:Ljava/io/File;

    const-string v6, "\\\\|/"

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v1, dest:Ljava/io/File;
    const/16 v5, 0x4000

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    .line 74
    .local v3, in:Ljava/nio/channels/ReadableByteChannel;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 75
    .local v4, out:Ljava/nio/channels/FileChannel;
    :goto_1
    invoke-interface {v3, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 83
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 91
    const/4 v5, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 84
    .end local v3           #in:Ljava/nio/channels/ReadableByteChannel;
    .end local v4           #out:Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 85
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v5, "Kuling"

    const-string v5, "Utils: WriteToSD() FileNotFoundException e"

    invoke-static {v9, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 86
    goto :goto_0

    .line 81
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #in:Ljava/nio/channels/ReadableByteChannel;
    .restart local v4       #out:Ljava/nio/channels/FileChannel;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 87
    .end local v3           #in:Ljava/nio/channels/ReadableByteChannel;
    .end local v4           #out:Ljava/nio/channels/FileChannel;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 88
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Kuling"

    const-string v5, "Utils: WriteToSD() IOException e"

    invoke-static {v9, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v8

    .line 89
    goto :goto_0
.end method

.method public static WriteToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "str"
    .parameter "path"

    .prologue
    .line 57
    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/cocmoc/kulinglite/Utils;->WriteToSD(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v1, "Kuling"

    const-string v2, "Utils: WriteToSD() MalformedURLException e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static WriteToSD(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)Z
    .locals 4
    .parameter "ctx"
    .parameter "url"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-static {p0}, Lcom/cocmoc/kulinglite/Utils;->isWriteReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/cocmoc/kulinglite/Utils;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;

    invoke-direct {v0, p0, p2}, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/net/URL;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Utils$BackgroundDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v3

    .line 52
    goto :goto_0
.end method

.method private static isGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "c"
    .parameter "p"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReadReady(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 106
    :goto_0
    return v1

    .line 104
    :cond_0
    sget-object v1, Lcom/cocmoc/kulinglite/Utils;->EXT_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 106
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isWriteReady(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 98
    :goto_0
    return v0

    .line 97
    :cond_0
    sget-object v0, Lcom/cocmoc/kulinglite/Utils;->EXT_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
