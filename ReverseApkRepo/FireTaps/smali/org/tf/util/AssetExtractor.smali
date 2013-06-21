.class public Lorg/tf/util/AssetExtractor;
.super Ljava/lang/Object;
.source "AssetExtractor.java"


# instance fields
.field private m_assetPath:Ljava/io/File;

.field private m_buffer:[B

.field private m_context:Landroid/content/Context;

.field private m_extractPath:Ljava/io/File;

.field private m_extractedLength:J

.field private m_finishError:Ljava/lang/Exception;

.field private m_finished:Z

.field private m_lock:Ljava/lang/Object;

.field private m_pauseEvent:Ljava/lang/Object;

.field private m_paused:Z

.field private volatile m_running:Z

.field private m_thread:Ljava/lang/Thread;

.field private m_totalLength:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "context"
    .parameter "assetPath"
    .parameter "extractPath"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/tf/util/AssetExtractor;->m_context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lorg/tf/util/AssetExtractor;->m_assetPath:Ljava/io/File;

    .line 34
    iput-object p3, p0, Lorg/tf/util/AssetExtractor;->m_extractPath:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lorg/tf/util/AssetExtractor;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/tf/util/AssetExtractor;->threadRun()V

    return-void
.end method

.method private checkPause()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/util/AssetExtractor;->m_paused:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    invoke-static {v1}, Lskiba/util/Simply;->waitNoLock(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    monitor-exit v0

    .line 211
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private extractFile(Ljava/io/File;)V
    .locals 12
    .parameter "assetFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v7, p0, Lorg/tf/util/AssetExtractor;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 179
    .local v0, assets:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 180
    .local v3, input:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 182
    .local v4, output:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lorg/tf/util/AssetExtractor;->m_extractPath:Ljava/io/File;

    invoke-static {p1, v7}, Lorg/tf/util/AssetExtractor;->getExtractPath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, extractPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 184
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 185
    .end local v4           #output:Ljava/io/OutputStream;
    .local v5, output:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p1}, Lorg/tf/util/AssetExtractor;->getOriginalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 186
    invoke-direct {p0}, Lorg/tf/util/AssetExtractor;->getBuffer()[B

    move-result-object v1

    .line 187
    .local v1, buffer:[B
    :goto_0
    iget-boolean v7, p0, Lorg/tf/util/AssetExtractor;->m_running:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_0

    .line 200
    invoke-static {v3}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v5}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 203
    :goto_1
    return-void

    .line 188
    :cond_0
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 189
    .local v6, read:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 200
    invoke-static {v3}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v5}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 192
    :cond_1
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-object v7, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :try_start_4
    iget-wide v8, p0, Lorg/tf/util/AssetExtractor;->m_extractedLength:J

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/tf/util/AssetExtractor;->m_extractedLength:J

    .line 193
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :try_start_5
    invoke-direct {p0}, Lorg/tf/util/AssetExtractor;->checkPause()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 199
    .end local v1           #buffer:[B
    .end local v6           #read:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .line 200
    .end local v2           #extractPath:Ljava/io/File;
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v4       #output:Ljava/io/OutputStream;
    :goto_2
    invoke-static {v3}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 201
    invoke-static {v4}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 202
    throw v7

    .line 193
    .end local v4           #output:Ljava/io/OutputStream;
    .restart local v1       #buffer:[B
    .restart local v2       #extractPath:Ljava/io/File;
    .restart local v5       #output:Ljava/io/OutputStream;
    .restart local v6       #read:I
    :catchall_1
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    .end local v1           #buffer:[B
    .end local v2           #extractPath:Ljava/io/File;
    .end local v5           #output:Ljava/io/OutputStream;
    .end local v6           #read:I
    .restart local v4       #output:Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    goto :goto_2
.end method

.method private getBuffer()[B
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_buffer:[B

    if-nez v0, :cond_0

    .line 215
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_buffer:[B

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_buffer:[B

    return-object v0
.end method

.method private static getExtractPath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2
    .parameter "assetPath"
    .parameter "extractPath"

    .prologue
    .line 245
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getOriginalFileLength(Landroid/content/Context;Ljava/io/File;)J
    .locals 3
    .parameter "context"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, input:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lorg/tf/util/AssetExtractor;->getOriginalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    int-to-long v1, v1

    .line 240
    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 237
    return-wide v1

    .line 239
    :catchall_0
    move-exception v1

    .line 240
    invoke-static {v0}, Lskiba/util/Simply;->close(Ljava/io/Closeable;)V

    .line 241
    throw v1
.end method

.method private static getOriginalPath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExtracted(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "context"
    .parameter "assetPath"
    .parameter "extractPath"

    .prologue
    const/4 v10, 0x0

    .line 123
    :try_start_0
    invoke-static {p0, p1}, Lorg/tf/util/AssetExtractor;->listAssetFiles(Landroid/content/Context;Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    .line 124
    .local v4, files:[Ljava/io/File;
    array-length v6, v4

    move v7, v10

    :goto_0
    if-lt v7, v6, :cond_0

    .line 131
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 124
    :cond_0
    aget-object v1, v4, v7

    .line 125
    .local v1, file:Ljava/io/File;
    invoke-static {p0, v1}, Lorg/tf/util/AssetExtractor;->getOriginalFileLength(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v2

    .line 126
    .local v2, fileLength:J
    invoke-static {v1, p2}, Lorg/tf/util/AssetExtractor;->getExtractPath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 127
    .local v5, path:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v8, v8, v2

    if-eqz v8, :cond_2

    :cond_1
    move v6, v10

    .line 128
    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 133
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileLength:J
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #path:Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 134
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static listAssetFiles(Landroid/content/Context;Ljava/io/File;)[Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "assetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, fileNames:[Ljava/lang/String;
    array-length v3, v0

    new-array v1, v3, [Ljava/io/File;

    .line 223
    .local v1, files:[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 226
    return-object v1

    .line 224
    :cond_0
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private threadRun()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, error:Ljava/lang/Exception;
    const/4 v3, 0x0

    check-cast v3, [Ljava/io/File;

    .line 144
    .local v3, files:[Ljava/io/File;
    :try_start_0
    iget-object v6, p0, Lorg/tf/util/AssetExtractor;->m_context:Landroid/content/Context;

    iget-object v7, p0, Lorg/tf/util/AssetExtractor;->m_assetPath:Ljava/io/File;

    invoke-static {v6, v7}, Lorg/tf/util/AssetExtractor;->listAssetFiles(Landroid/content/Context;Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    .line 145
    const-wide/16 v4, 0x0

    .line 146
    .local v4, totalLength:J
    array-length v6, v3

    move v7, v10

    :goto_0
    if-lt v7, v6, :cond_3

    .line 149
    iget-object v6, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    iput-wide v4, p0, Lorg/tf/util/AssetExtractor;->m_totalLength:J

    .line 151
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lorg/tf/util/AssetExtractor;->m_extractedLength:J

    .line 149
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    iget-object v6, p0, Lorg/tf/util/AssetExtractor;->m_extractPath:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 154
    array-length v6, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v7, v10

    :goto_1
    if-lt v7, v6, :cond_4

    .line 164
    .end local v4           #totalLength:J
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    iget-boolean v6, p0, Lorg/tf/util/AssetExtractor;->m_running:Z

    if-nez v6, :cond_2

    .line 165
    :cond_1
    if-eqz v3, :cond_2

    .line 166
    array-length v6, v3

    move v7, v10

    :goto_3
    if-lt v7, v6, :cond_5

    .line 171
    :cond_2
    iget-object v6, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v6

    .line 172
    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Lorg/tf/util/AssetExtractor;->m_finished:Z

    .line 173
    iput-object v1, p0, Lorg/tf/util/AssetExtractor;->m_finishError:Ljava/lang/Exception;

    .line 171
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    return-void

    .line 146
    .restart local v4       #totalLength:J
    :cond_3
    :try_start_4
    aget-object v2, v3, v7

    .line 147
    .local v2, file:Ljava/io/File;
    iget-object v8, p0, Lorg/tf/util/AssetExtractor;->m_context:Landroid/content/Context;

    invoke-static {v8, v2}, Lorg/tf/util/AssetExtractor;->getOriginalFileLength(Landroid/content/Context;Ljava/io/File;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-wide v8

    add-long/2addr v4, v8

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 149
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7

    .line 161
    .end local v4           #totalLength:J
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 162
    .local v0, e:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_2

    .line 154
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #totalLength:J
    :cond_4
    aget-object v2, v3, v7

    .line 155
    .restart local v2       #file:Ljava/io/File;
    invoke-direct {p0, v2}, Lorg/tf/util/AssetExtractor;->extractFile(Ljava/io/File;)V

    .line 156
    iget-boolean v8, p0, Lorg/tf/util/AssetExtractor;->m_running:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v8, :cond_0

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v2           #file:Ljava/io/File;
    .end local v4           #totalLength:J
    :cond_5
    aget-object v2, v3, v7

    .line 167
    .restart local v2       #file:Ljava/io/File;
    iget-object v8, p0, Lorg/tf/util/AssetExtractor;->m_extractPath:Ljava/io/File;

    invoke-static {v2, v8}, Lorg/tf/util/AssetExtractor;->getExtractPath(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 166
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 171
    .end local v2           #file:Ljava/io/File;
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7
.end method


# virtual methods
.method public getAssetPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_assetPath:Ljava/io/File;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public getExtractPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_extractPath:Ljava/io/File;

    return-object v0
.end method

.method public getFinishError()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/tf/util/AssetExtractor;->m_finishError:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProgress()I
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-wide v1, p0, Lorg/tf/util/AssetExtractor;->m_totalLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 103
    monitor-exit v0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    const-wide/16 v1, 0x64

    iget-wide v3, p0, Lorg/tf/util/AssetExtractor;->m_extractedLength:J

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lorg/tf/util/AssetExtractor;->m_totalLength:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/util/AssetExtractor;->m_finished:Z

    monitor-exit v0

    return v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lorg/tf/util/AssetExtractor;->m_paused:Z

    monitor-exit v0

    return v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/tf/util/AssetExtractor;->m_running:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/util/AssetExtractor;->m_paused:Z

    .line 82
    monitor-exit v0

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/tf/util/AssetExtractor;->m_paused:Z

    .line 90
    iget-object v1, p0, Lorg/tf/util/AssetExtractor;->m_pauseEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit v0

    .line 92
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lorg/tf/util/AssetExtractor;->stop()V

    .line 54
    new-instance v0, Lorg/tf/util/AssetExtractor$1;

    invoke-direct {v0, p0}, Lorg/tf/util/AssetExtractor$1;-><init>(Lorg/tf/util/AssetExtractor;)V

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_thread:Ljava/lang/Thread;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/util/AssetExtractor;->m_finished:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_finishError:Ljava/lang/Exception;

    .line 61
    iput-wide v1, p0, Lorg/tf/util/AssetExtractor;->m_totalLength:J

    .line 62
    iput-wide v1, p0, Lorg/tf/util/AssetExtractor;->m_extractedLength:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tf/util/AssetExtractor;->m_running:Z

    .line 64
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tf/util/AssetExtractor;->m_running:Z

    .line 72
    invoke-virtual {p0}, Lorg/tf/util/AssetExtractor;->resume()V

    .line 73
    iget-object v0, p0, Lorg/tf/util/AssetExtractor;->m_thread:Ljava/lang/Thread;

    invoke-static {v0}, Lskiba/util/Simply;->join(Ljava/lang/Thread;)Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/util/AssetExtractor;->m_thread:Ljava/lang/Thread;

    goto :goto_0
.end method
