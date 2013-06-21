.class public Lorg/appcelerator/titanium/io/TiResourceFile;
.super Lorg/appcelerator/titanium/io/TiBaseFile;
.source "TiResourceFile.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiResourceFile"

.field private static final LOAD_FROM_SD_CARD:Ljava/lang/String; = "ti.android.loadfromsdcard"


# instance fields
.field private loadFromSDCard:Z

.field private final path:Ljava/lang/String;

.field private sdCardPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/io/TiResourceFile;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)V
    .locals 3
    .parameter "tiContext"
    .parameter "path"

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;-><init>(Lorg/appcelerator/titanium/TiContext;I)V

    .line 48
    iput-object p2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getSystemProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v0

    const-string v1, "ti.android.loadfromsdcard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->loadFromSDCard:Z

    .line 51
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->loadFromSDCard:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "TiResourceFile"

    const-string v1, "Loading data from sdcard"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method private getSDCardPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sdcard/Ti.debug"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v2

    invoke-interface {v2}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public exists()Z
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, result:Z
    const/4 v0, 0x0

    .line 177
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 182
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    :cond_0
    :goto_1
    return v1

    .line 178
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 182
    if-eqz v0, :cond_0

    .line 184
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v2

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 184
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    :cond_2
    :goto_2
    throw v2

    .line 185
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public extension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "/"

    .line 259
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v3, listing:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Resources"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, lpath:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    const/4 v6, 0x0

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 265
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiContext;->getAndroidContext()Landroid/content/ContextWrapper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, names:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 267
    array-length v2, v5

    .line 268
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 269
    aget-object v6, v5, v1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v4           #lpath:Ljava/lang/String;
    .end local v5           #names:[Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 273
    .local v0, e:Ljava/io/IOException;
    const-string v6, "TiResourceFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while getting a directory listing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    return-object v3
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, in:Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getAndroidContext()Landroid/content/ContextWrapper;

    move-result-object v0

    .line 73
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 74
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Resources"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, p:Ljava/lang/String;
    iget-boolean v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->loadFromSDCard:Z

    if-eqz v3, :cond_1

    .line 76
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/appcelerator/titanium/io/TiResourceFile;->getSDCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 81
    .end local v2           #p:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 78
    .restart local v2       #p:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public getNativeFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, idx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(IZ)V
    .locals 4
    .parameter "mode"
    .parameter "binary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p1, :cond_2

    .line 103
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 104
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 105
    if-eqz p2, :cond_0

    .line 106
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->instream:Ljava/io/InputStream;

    .line 110
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    .line 117
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 112
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0           #in:Ljava/io/InputStream;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Resource file may not be written."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 126
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 128
    const/16 v5, 0x1000

    new-array v2, v5, [B

    .line 131
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 132
    .local v3, count:I
    if-gez v3, :cond_1

    .line 141
    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    return-object v5

    .line 136
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 141
    .end local v2           #buffer:[B
    .end local v3           #count:I
    :catchall_0
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5

    .line 141
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, result:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Must open before calling readLine"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->binary:Z

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File opened in binary mode, readLine not available."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 165
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TiResourceFile"

    const-string v3, "Error reading a line from the file: "

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 0

    .prologue
    .line 64
    return-object p0
.end method

.method public size()D
    .locals 7

    .prologue
    .line 236
    const-wide/16 v2, 0x0

    .line 237
    .local v2, length:J
    const/4 v1, 0x0

    .line 239
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 240
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 244
    if-eqz v1, :cond_0

    .line 246
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 252
    :cond_0
    :goto_0
    long-to-double v4, v2

    return-wide v4

    .line 241
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 242
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "TiResourceFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while trying to determine file size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    if-eqz v1, :cond_0

    .line 246
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 247
    :catch_1
    move-exception v4

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 246
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 249
    :cond_1
    :goto_1
    throw v4

    .line 247
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 224
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->loadFromSDCard:Z

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/io/TiResourceFile;->getSDCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 2
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
