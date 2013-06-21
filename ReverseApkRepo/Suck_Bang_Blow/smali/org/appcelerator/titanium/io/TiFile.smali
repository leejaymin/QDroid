.class public Lorg/appcelerator/titanium/io/TiFile;
.super Lorg/appcelerator/titanium/io/TiBaseFile;
.source "TiFile.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiFile"


# instance fields
.field private final file:Ljava/io/File;

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/io/TiFile;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .parameter "tiContext"
    .parameter "file"
    .parameter "path"
    .parameter "stream"

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;-><init>(Lorg/appcelerator/titanium/TiContext;I)V

    .line 45
    iput-object p2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    .line 46
    iput-object p3, p0, Lorg/appcelerator/titanium/io/TiFile;->path:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lorg/appcelerator/titanium/io/TiFile;->stream:Z

    .line 48
    return-void
.end method

.method private deleteTree(Ljava/io/File;)Z
    .locals 7
    .parameter "d"

    .prologue
    .line 93
    const/4 v1, 0x1

    .line 95
    .local v1, deleted:Z
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 97
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 98
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 100
    if-nez v1, :cond_2

    .line 112
    .end local v2           #f:Ljava/io/File;
    :cond_0
    return v1

    .line 104
    .restart local v2       #f:Ljava/io/File;
    :cond_1
    invoke-direct {p0, v2}, Lorg/appcelerator/titanium/io/TiFile;->deleteTree(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 97
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createDirectory(Z)Z
    .locals 1
    .parameter "recursive"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public deleteDirectory(Z)Z
    .locals 2
    .parameter "recursive"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, deleted:Z
    if-eqz p1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/io/TiFile;->deleteTree(Ljava/io/File;)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, name:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, idx:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 167
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 6
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
    .line 237
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 238
    .local v0, dir:Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, listing:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, names:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 242
    array-length v2, v4

    .line 243
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 244
    aget-object v5, v4, v1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    return-object v3
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

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
    .line 219
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getNativeFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiFile;->getOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 6

    .prologue
    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, parentFile:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 261
    .local v1, p:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    .line 266
    .end local v1           #p:Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteable()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, p:Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    return-object v0
.end method

.method public open(IZ)V
    .locals 5
    .parameter "mode"
    .parameter "binary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iput-boolean p2, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    .line 274
    if-nez p1, :cond_2

    .line 275
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    if-eqz p2, :cond_1

    .line 279
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->instream:Ljava/io/InputStream;

    .line 293
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    .line 294
    return-void

    .line 281
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->inreader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/io/TiFile;->getOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 285
    .local v0, os:Ljava/io/OutputStream;
    if-eqz p2, :cond_3

    .line 286
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    goto :goto_0

    .line 288
    :cond_3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    goto :goto_0
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 307
    .local v1, result:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Must open before calling readLine"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_0
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    if-eqz v2, :cond_1

    .line 311
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File opened in binary mode, readLine not available."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TiFile"

    const-string v3, "Error reading a line from the file: "

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReadonly()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    .line 204
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->isReadonly()Z

    move-result v0

    return v0
.end method

.method public size()D
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public spaceAvailable()D
    .locals 5

    .prologue
    .line 196
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 3
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    sget-boolean v0, Lorg/appcelerator/titanium/io/TiFile;->DBG:Z

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "TiFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write called for file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->stream:Z

    if-nez v0, :cond_2

    .line 416
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/io/TiFile;->open(IZ)V

    .line 417
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    .line 432
    :goto_1
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    throw v0

    .line 422
    :cond_2
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    if-nez v0, :cond_3

    .line 423
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Must open before calling write"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_3
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public write(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 4
    .parameter "blob"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 325
    sget-boolean v0, Lorg/appcelerator/titanium/io/TiFile;->DBG:Z

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "TiFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write called for file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    if-eqz p1, :cond_1

    .line 330
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->stream:Z

    if-nez v0, :cond_3

    .line 332
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/io/TiFile;->open(IZ)V

    .line 333
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    .line 350
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 332
    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    throw v0

    .line 339
    :cond_3
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    if-nez v0, :cond_4

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Must open before calling write"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_4
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 346
    :cond_5
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeFromUrl(Ljava/lang/String;Z)V
    .locals 10
    .parameter "url"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 354
    sget-boolean v6, Lorg/appcelerator/titanium/io/TiFile;->DBG:Z

    if-eqz v6, :cond_0

    .line 355
    const-string v6, "TiFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write called for file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/appcelerator/titanium/io/TiFile;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    .line 358
    .local v5, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v5, :cond_2

    .line 359
    new-array v4, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 361
    .local v4, parts:[Ljava/lang/String;
    invoke-static {v5, v4, p2}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 363
    .local v0, f:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_2

    .line 364
    iget-boolean v6, p0, Lorg/appcelerator/titanium/io/TiFile;->stream:Z

    if-nez v6, :cond_5

    .line 365
    const/4 v3, 0x0

    .line 367
    .local v3, is:Ljava/io/InputStream;
    if-eqz p2, :cond_3

    const/4 v6, 0x2

    :goto_0
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, v6, v7}, Lorg/appcelerator/titanium/io/TiFile;->open(IZ)V

    .line 368
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 369
    iget-object v6, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, v6}, Lorg/appcelerator/titanium/io/TiFile;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-eqz v3, :cond_1

    .line 372
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 374
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    .line 406
    .end local v0           #f:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #parts:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .restart local v0       #f:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #parts:[Ljava/lang/String;
    :cond_3
    move v6, v9

    .line 367
    goto :goto_0

    .line 371
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 372
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 374
    :cond_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiFile;->close()V

    throw v6

    .line 378
    .end local v3           #is:Ljava/io/InputStream;
    :cond_5
    iget-boolean v6, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    if-nez v6, :cond_6

    .line 379
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Must open before calling write"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 382
    :cond_6
    iget-boolean v6, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    if-eqz v6, :cond_8

    .line 383
    const/4 v3, 0x0

    .line 385
    .restart local v3       #is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 386
    iget-object v6, p0, Lorg/appcelerator/titanium/io/TiFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, v6}, Lorg/appcelerator/titanium/io/TiFile;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 388
    if-eqz v3, :cond_2

    .line 389
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 388
    :catchall_1
    move-exception v6

    if-eqz v3, :cond_7

    .line 389
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v6

    .line 393
    .end local v3           #is:Ljava/io/InputStream;
    :cond_8
    const/4 v1, 0x0

    .line 395
    .local v1, ir:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 396
    .end local v1           #ir:Ljava/io/BufferedReader;
    .local v2, ir:Ljava/io/BufferedReader;
    :try_start_3
    iget-object v6, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0, v2, v6}, Lorg/appcelerator/titanium/io/TiFile;->copyStream(Ljava/io/Reader;Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 398
    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 398
    .end local v2           #ir:Ljava/io/BufferedReader;
    .restart local v1       #ir:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v6

    :goto_2
    if-eqz v1, :cond_9

    .line 399
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    throw v6

    .line 398
    .end local v1           #ir:Ljava/io/BufferedReader;
    .restart local v2       #ir:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2           #ir:Ljava/io/BufferedReader;
    .restart local v1       #ir:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->opened:Z

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Must open before calling readLine"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiFile;->binary:Z

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File opened in binary mode, writeLine not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiFile;->outwriter:Ljava/io/BufferedWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 446
    return-void
.end method
