.class public Lcom/scoreloop/client/android/ui/util/LocalImageStorage;
.super Ljava/lang/Object;
.source "LocalImageStorage.java"


# static fields
.field private static final ONE_DAY:I = 0x5265c00

.field private static instance:Lcom/scoreloop/client/android/ui/util/LocalImageStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static get()Lcom/scoreloop/client/android/ui/util/LocalImageStorage;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->instance:Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->instance:Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    .line 23
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->instance:Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    return-object v0
.end method

.method private getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, cacheDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 37
    .local v1, storageDir:Ljava/io/File;
    if-eqz v1, :cond_2

    .line 38
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cache/scoreloop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v2, tmp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    :cond_1
    move-object v0, v2

    .line 43
    .end local v2           #tmp:Ljava/io/File;
    :cond_2
    return-object v0
.end method

.method private getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, cacheFile:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/scoreloop/client/android/ui/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1           #cacheFile:Ljava/io/File;
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .end local v2           #fileName:Ljava/lang/String;
    .restart local v1       #cacheFile:Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method private isStorageReadable()Z
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStorageWritable()Z
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValid(JLjava/io/File;)Z
    .locals 6
    .parameter "timeToLive"
    .parameter "cacheFile"

    .prologue
    .line 113
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 114
    .local v0, lastModified:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 115
    .local v2, lived:J
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    cmp-long v4, v2, p1

    if-gtz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;Ljava/lang/String;J)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "timeToLive"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, cacheFile:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-direct {p0, p3, p4, v0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isValid(JLjava/io/File;)Z

    move-result v1

    .line 98
    .local v1, valid:Z
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 100
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->createNotFound()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v2

    .line 109
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #valid:Z
    :goto_0
    return-object v2

    .line 102
    .restart local v0       #cacheFile:Ljava/io/File;
    .restart local v1       #valid:Z
    :cond_0
    new-instance v2, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->deleteQuietly(Ljava/io/File;)V

    .line 109
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #valid:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public purge(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "timeToLive"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isStorageWritable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 49
    .local v1, cacheDir:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 51
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 52
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p2, p3, v2}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isValid(JLjava/io/File;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->deleteQuietly(Ljava/io/File;)V

    .line 51
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #cacheDir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method public putBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 119
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    invoke-direct {v0, p3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->putBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;)Z

    move-result v0

    return v0
.end method

.method public putBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;)Z
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "bitmapResult"

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isStorageWritable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 126
    .local v0, cacheFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {p3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->isNotFound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 139
    .end local v0           #cacheFile:Ljava/io/File;
    :goto_0
    return v2

    .line 130
    .restart local v0       #cacheFile:Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 131
    .local v1, os:Ljava/io/FileOutputStream;
    invoke-virtual {p3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 139
    .end local v0           #cacheFile:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 8
    .parameter "context"
    .parameter "url"
    .parameter "in"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->isStorageWritable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 146
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 148
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 151
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    const/16 v1, 0x400

    .line 152
    .local v1, bufferSize:I
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 155
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 156
    .local v3, len:I
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 157
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 160
    .end local v0           #buffer:[B
    .end local v3           #len:I
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 164
    .end local v1           #bufferSize:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 165
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v2           #file:Ljava/io/File;
    .end local v4           #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    const/4 v2, 0x0

    :cond_1
    :goto_3
    return-object v2

    .line 164
    .restart local v0       #buffer:[B
    .restart local v1       #bufferSize:I
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #len:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v5, :cond_1

    .line 165
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 167
    :catch_1
    move-exception v6

    goto :goto_3

    .line 163
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v3           #len:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 164
    :goto_4
    if-eqz v4, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 168
    :cond_3
    :goto_5
    throw v6

    .line 167
    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_5

    .line 163
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v1       #bufferSize:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 160
    .end local v1           #bufferSize:I
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public tryPurge(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 66
    const-string v4, "localStorage"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 67
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v2, "lastPurge"

    .line 68
    .local v2, lastPurgeKey:Ljava/lang/String;
    const-string v4, "lastPurge"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 69
    .local v0, lastPurge:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 70
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "lastPurge"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const-wide/32 v4, 0x240c8400

    invoke-virtual {p0, p1, v4, v5}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->purge(Landroid/content/Context;J)V

    .line 73
    :cond_0
    return-void
.end method
