.class public abstract Lorg/appcelerator/titanium/io/TiBaseFile;
.super Ljava/lang/Object;
.source "TiBaseFile.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TiBaseFile"

.field public static final MODE_APPEND:I = 0x2

.field public static final MODE_READ:I = 0x0

.field public static final MODE_WRITE:I = 0x1

.field protected static final TYPE_BLOB:I = 0x3

.field protected static final TYPE_FILE:I = 0x1

.field protected static final TYPE_RESOURCE:I = 0x2


# instance fields
.field protected binary:Z

.field protected flagHidden:Z

.field protected flagSymbolicLink:Z

.field protected inreader:Ljava/io/BufferedReader;

.field protected instream:Ljava/io/InputStream;

.field protected modeExecutable:Z

.field protected modeRead:Z

.field protected modeWrite:Z

.field protected opened:Z

.field protected outstream:Ljava/io/OutputStream;

.field protected outwriter:Ljava/io/BufferedWriter;

.field protected stream:Z

.field protected type:I

.field protected typeDir:Z

.field protected typeFile:Z

.field protected weakTiContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;I)V
    .locals 4
    .parameter "tiContext"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->weakTiContext:Ljava/lang/ref/WeakReference;

    .line 62
    iput p2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->type:I

    .line 63
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    .line 64
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    .line 65
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    .line 66
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    .line 67
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    .line 68
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    .line 69
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    .line 71
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 72
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 73
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 74
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 75
    iput-object v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 76
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->stream:Z

    .line 77
    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 78
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 346
    :goto_0
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->instream:Ljava/io/InputStream;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 351
    :try_start_1
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 355
    :goto_1
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->inreader:Ljava/io/BufferedReader;

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 359
    :try_start_2
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    :goto_2
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outstream:Ljava/io/OutputStream;

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_3

    .line 368
    :try_start_3
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 372
    :goto_3
    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->outwriter:Ljava/io/BufferedWriter;

    .line 375
    :cond_3
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    .line 378
    :cond_4
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->binary:Z

    .line 379
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_3

    .line 360
    :catch_1
    move-exception v0

    goto :goto_2

    .line 352
    :catch_2
    move-exception v0

    goto :goto_1

    .line 343
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public copy(Ljava/lang/String;)Z
    .locals 13
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 116
    .local v7, os:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 118
    .local v2, copied:Z
    if-eqz p1, :cond_5

    .line 119
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    .line 120
    .local v10, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v10, :cond_5

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v9, v11

    .line 125
    .local v9, parts:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 126
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 128
    if-eqz v7, :cond_3

    .line 129
    const/16 v11, 0x1fa0

    new-array v1, v11, [B

    .line 130
    .local v1, buf:[B
    const/4 v3, 0x0

    .line 131
    .local v3, count:I
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 132
    .end local v5           #is:Ljava/io/InputStream;
    .local v6, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 134
    .end local v7           #os:Ljava/io/OutputStream;
    .local v8, os:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v11, -0x1

    if-eq v3, v11, :cond_2

    .line 135
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v11

    move-object v4, v11

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    move-object v5, v6

    .line 143
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v9           #parts:[Ljava/lang/String;
    .local v4, e:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v11, "TiBaseFile"

    const-string v12, "Error while copying file: "

    invoke-static {v11, v12, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v5, :cond_0

    .line 148
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 149
    const/4 v5, 0x0

    .line 155
    :cond_0
    :goto_3
    if-eqz v7, :cond_1

    .line 157
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 158
    const/4 v7, 0x0

    .line 161
    :cond_1
    :goto_4
    throw v11

    .line 138
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    move-object v5, v6

    .line 146
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v9           #parts:[Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    :cond_3
    if-eqz v5, :cond_4

    .line 148
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 149
    const/4 v5, 0x0

    .line 155
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 157
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 158
    const/4 v7, 0x0

    .line 167
    .end local v10           #tiContext:Lorg/appcelerator/titanium/TiContext;
    :cond_5
    :goto_6
    return v2

    .line 150
    .restart local v10       #tiContext:Lorg/appcelerator/titanium/TiContext;
    :catch_1
    move-exception v11

    goto :goto_5

    .line 159
    :catch_2
    move-exception v11

    goto :goto_6

    .line 150
    :catch_3
    move-exception v12

    goto :goto_3

    .line 159
    :catch_4
    move-exception v12

    goto :goto_4

    .line 146
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2

    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 142
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #buf:[B
    .end local v3           #count:I
    .end local v9           #parts:[Ljava/lang/String;
    :catch_5
    move-exception v11

    move-object v4, v11

    goto :goto_1

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v1       #buf:[B
    .restart local v3       #count:I
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v9       #parts:[Ljava/lang/String;
    :catch_6
    move-exception v11

    move-object v4, v11

    move-object v5, v6

    .end local v6           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method protected copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    const/16 v2, 0x1fa0

    new-array v0, v2, [B

    .line 399
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 400
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 401
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method protected copyStream(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .parameter "r"
    .parameter "w"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 406
    const/16 v2, 0x1fa0

    new-array v0, v2, [C

    .line 407
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 408
    .local v1, count:I
    :goto_0
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 409
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method public createDirectory(Z)Z
    .locals 1
    .parameter "recursive"

    .prologue
    .line 171
    const-string v0, "createDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public createShortcut()Z
    .locals 1

    .prologue
    .line 176
    const-string v0, "createShortcut"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 181
    const-string v0, "createTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 182
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deleteDirectory(Z)Z
    .locals 1
    .parameter "recursive"

    .prologue
    .line 186
    const-string v0, "deleteDirectory"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 191
    const-string v0, "deleteFile"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 196
    const-string v0, "exists"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "extensionsion"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 1
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
    .line 206
    const-string v0, "getDirectoryListing"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNativeFile()Ljava/io/File;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getParent()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 211
    const-string v0, "getParent"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTiContext()Lorg/appcelerator/titanium/TiContext;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->weakTiContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiContext;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeDir:Z

    return v0
.end method

.method public isExecutable()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeExecutable:Z

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->typeFile:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagHidden:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->opened:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeRead:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->flagSymbolicLink:Z

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiBaseFile;->modeWrite:Z

    return v0
.end method

.method protected logNotSupported(Ljava/lang/String;)V
    .locals 3
    .parameter "method"

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 394
    :cond_0
    const-string v0, "TiBaseFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 216
    const-string v0, "modificationTimestamp"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 217
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 9
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 222
    const/4 v3, 0x0

    .line 224
    .local v3, moved:Z
    if-eqz p1, :cond_3

    .line 225
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    .line 226
    .local v5, tiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v5, :cond_3

    .line 227
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 228
    .local v4, parts:[Ljava/lang/String;
    invoke-static {v5, v4, v7}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 229
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Destination already exists."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 235
    .local v2, fsrc:Ljava/io/File;
    if-nez v2, :cond_1

    .line 236
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "Source is not a true file."

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    :cond_1
    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 239
    .local v1, fdest:Ljava/io/File;
    if-nez v1, :cond_2

    .line 240
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "Destination is not a valid location for writing"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->copy(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 244
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteFile()Z

    move-result v3

    .line 252
    .end local v0           #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v1           #fdest:Ljava/io/File;
    .end local v2           #fsrc:Ljava/io/File;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #tiContext:Lorg/appcelerator/titanium/TiContext;
    :cond_3
    return v3

    .line 247
    .restart local v0       #bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v4       #parts:[Ljava/lang/String;
    .restart local v5       #tiContext:Lorg/appcelerator/titanium/TiContext;
    :cond_4
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destination not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "nativePath"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(IZ)V
    .locals 1
    .parameter "mode"
    .parameter "binary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    const-string v0, "open"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const-string v0, "read"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const-string v0, "readLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 4
    .parameter "destination"

    .prologue
    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, renamed:Z
    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v1

    .line 279
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 285
    .end local v0           #dest:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return v2
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 289
    const-string v0, "resolve"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public setExecutable()Z
    .locals 1

    .prologue
    .line 294
    const-string v0, "setExecutable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public setReadonly()Z
    .locals 1

    .prologue
    .line 299
    const-string v0, "setReadonly"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public setWriteable()Z
    .locals 1

    .prologue
    .line 304
    const-string v0, "setWriteable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public size()D
    .locals 2

    .prologue
    .line 309
    const-string v0, "size"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 310
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 314
    const-string v0, "spaceAvailable"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 315
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public unzip(Ljava/lang/String;)V
    .locals 1
    .parameter "destination"

    .prologue
    .line 319
    const-string v0, "unzip"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 1
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v0, "write"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public write(Lorg/appcelerator/titanium/TiBlob;Z)V
    .locals 0
    .parameter "blob"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    return-void
.end method

.method public writeFromUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const-string v0, "writeFromUrl"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v0, "writeLine"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->logNotSupported(Ljava/lang/String;)V

    .line 336
    return-void
.end method
