.class public Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;,
        Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_PURGE:I = -0x65813800

.field private static final HARD_CACHE_CAPACITY:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImageDownloader"

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_MONTH:J = 0x90321000L

.field private static final ONE_WEEK:J = 0x240c8400L

.field private static instance:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

.field static instanceCount:I

.field private static instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

.field private static final sContextMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHardBitmapDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private bd:Landroid/graphics/drawable/BitmapDrawable;

.field private bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

.field client:Lorg/apache/http/client/HttpClient;

.field private downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

.field private fo:Ljava/io/FileOutputStream;

.field getRequest:Lorg/apache/http/client/methods/HttpGet;

.field private inputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field public mode:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

.field params:Lorg/apache/http/params/HttpParams;

.field private final purgeHandler:Landroid/os/Handler;

.field private final purger:Ljava/lang/Runnable;

.field private final sHardFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private statusCode:I

.field private task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    const/16 v1, 0xd

    new-array v1, v1, [Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 84
    sput v4, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    .line 85
    const/4 v1, 0x0

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instance:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 420
    new-instance v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$1;

    .line 421
    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    .line 420
    invoke-direct {v1, v4, v2, v3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$1;-><init>(IFZ)V

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    .line 440
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    return-void

    .line 81
    :cond_0
    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    new-instance v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    invoke-direct {v2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;-><init>()V

    aput-object v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    .line 71
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->CORRECT:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mode:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    .line 225
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->params:Lorg/apache/http/params/HttpParams;

    .line 227
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 228
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->client:Lorg/apache/http/client/HttpClient;

    .line 443
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$2;

    .line 444
    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$2;-><init>(Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;IFZ)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    .line 464
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    .line 466
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$3;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$3;-><init>(Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purger:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 192
    invoke-static {p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapDrawableDownloaderTask(Landroid/widget/ImageView;)Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    move-result-object v0

    .line 194
    .local v0, bitmapDrawableDownloaderTask:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, bitmapUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    :cond_0
    invoke-virtual {v0, v2}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->cancel(Z)Z

    .line 203
    .end local v1           #bitmapUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 200
    .restart local v1       #bitmapUrl:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private downloadImage(Ljava/lang/String;)Ljava/io/File;
    .locals 14
    .parameter "urlAddress"

    .prologue
    .line 233
    :try_start_0
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    const/4 v5, 0x0

    .line 239
    .local v5, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 241
    .local v2, cacheDir:Ljava/io/File;
    sget-object v10, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 242
    sget-object v10, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #f:Ljava/io/File;
    check-cast v5, Ljava/io/File;

    .line 243
    .restart local v5       #f:Ljava/io/File;
    if-nez v5, :cond_0

    .line 244
    sget-object v10, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    if-nez v2, :cond_1

    .line 248
    new-instance v2, Ljava/io/File;

    .end local v2           #cacheDir:Ljava/io/File;
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mPath:Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2       #cacheDir:Ljava/io/File;
    :cond_1
    if-nez v5, :cond_2

    .line 253
    new-instance v5, Ljava/io/File;

    .end local v5           #f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .restart local v5       #f:Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide v12, 0x90321000L

    add-long/2addr v10, v12

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_5

    const/4 v9, 0x1

    .line 257
    .local v9, timeout:Z
    :goto_1
    const/4 v1, 0x0

    check-cast v1, [B

    .line 259
    .local v1, buffer:[B
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v9, :cond_3

    .line 260
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 261
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_e

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 265
    :cond_4
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->client:Lorg/apache/http/client/HttpClient;

    iget-object v11, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 266
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    iput v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->statusCode:I

    .line 267
    iget v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->statusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_6

    .line 321
    const/4 v5, 0x0

    .line 268
    const/4 v10, 0x0

    .line 323
    .end local v5           #f:Ljava/io/File;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v10

    .line 234
    .end local v1           #buffer:[B
    .end local v2           #cacheDir:Ljava/io/File;
    .end local v9           #timeout:Z
    :catch_0
    move-exception v4

    .line 236
    .local v4, e1:Ljava/net/URISyntaxException;
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    .end local v4           #e1:Ljava/net/URISyntaxException;
    .restart local v2       #cacheDir:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 271
    .restart local v1       #buffer:[B
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #timeout:Z
    :cond_6
    :try_start_2
    new-instance v10, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    .line 272
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-virtual {v10}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    iput-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    .line 273
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cache Dir : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 275
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    .line 277
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 280
    :goto_3
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, len:I
    if-gtz v7, :cond_b

    .line 283
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    .end local v7           #len:I
    :cond_7
    :try_start_3
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_8

    .line 288
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_8
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    if-eqz v10, :cond_9

    .line 291
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 293
    :cond_9
    const/4 v10, 0x0

    move-object v0, v10

    check-cast v0, [B

    move-object v1, v0

    .line 294
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-virtual {v10}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V

    .line 302
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :goto_4
    sget-object v10, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 303
    sget-object v10, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, p1, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 321
    :cond_a
    const/4 v6, 0x0

    .end local v5           #f:Ljava/io/File;
    .local v6, f:Ljava/io/File;
    move-object v10, v5

    move-object v5, v6

    .line 304
    .local v5, f:Ljava/lang/Object;
    goto/16 :goto_2

    .line 281
    .end local v6           #f:Ljava/io/File;
    .local v5, f:Ljava/io/File;
    .restart local v7       #len:I
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_b
    :try_start_4
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 286
    .end local v7           #len:I
    :catchall_0
    move-exception v10

    move-object v11, v10

    .line 287
    :try_start_5
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_c

    .line 288
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 290
    :cond_c
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    if-eqz v10, :cond_d

    .line 291
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 293
    :cond_d
    const/4 v10, 0x0

    move-object v0, v10

    check-cast v0, [B

    move-object v1, v0

    .line 294
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-virtual {v10}, Lorg/apache/http/entity/BufferedHttpEntity;->consumeContent()V

    .line 295
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 306
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 307
    .local v3, e:Ljava/io/IOException;
    :try_start_6
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 308
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    const-string v10, "ImageDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "I/O error while retrieving bitmap from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 309
    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 321
    const/4 v5, 0x0

    .line 323
    .end local v3           #e:Ljava/io/IOException;
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 298
    :cond_e
    :try_start_7
    const-string v10, "test"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Image file already exits , urlAddress : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 298
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 311
    :catch_2
    move-exception v3

    .line 313
    .local v3, e:Ljava/lang/IllegalStateException;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 314
    const-string v10, "ImageDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Incorrect URL: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v5, 0x0

    goto :goto_5

    .line 315
    .end local v3           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    .line 316
    .local v3, e:Ljava/lang/Exception;
    iget-object v10, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 317
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const-string v10, "ImageDownloader"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error while retrieving bitmap from "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 321
    const/4 v5, 0x0

    goto :goto_5

    .line 320
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    .line 321
    const/4 v5, 0x0

    .line 322
    throw v10
.end method

.method private forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 172
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    invoke-direct {v0, p2, p0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;-><init>(Landroid/widget/ImageView;Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    .line 181
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;-><init>(Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

    .line 182
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getBitmapDrawableDownloaderTask(Landroid/widget/ImageView;)Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 217
    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;

    .line 219
    .local v0, downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;->getBitmapDownloaderTask()Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    move-result-object v2

    .line 222
    .end local v0           #downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 99
    const/4 v3, 0x1

    .line 100
    .local v3, wantImgFile:Z
    if-eqz v3, :cond_0

    .line 101
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, lTmpUrl:[Ljava/lang/String;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object p1, v2, v4

    .line 111
    .end local v2           #lTmpUrl:[Ljava/lang/String;
    .end local p1
    :goto_0
    return-object p1

    .line 105
    .restart local p1
    :cond_0
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 106
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 108
    .end local v0           #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 111
    .local v1, ex:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "url"

    .prologue
    .line 481
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 482
    :try_start_0
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 483
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 484
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    monitor-exit v3

    move-object v2, v0

    .line 501
    :goto_0
    return-object v2

    .line 481
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 491
    .local v1, fileReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/io/File;>;"
    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #f:Ljava/io/File;
    check-cast v0, Ljava/io/File;

    .line 493
    .restart local v0       #f:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 495
    goto :goto_0

    .line 481
    .end local v0           #f:Ljava/io/File;
    .end local v1           #fileReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/io/File;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 497
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #fileReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/io/File;>;"
    :cond_1
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftFileCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    sget v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instance:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 91
    sget v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    .line 92
    sget v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 93
    const/4 v0, 0x0

    sput v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceCount:I

    .line 95
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instance:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    return-object v0
.end method

.method private resetPurgeTimer()V
    .locals 4

    .prologue
    .line 602
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 604
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->purger:Ljava/lang/Runnable;

    const-wide v2, 0x90321000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    return-void
.end method


# virtual methods
.method public SaveFileFromChash(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 7
    .parameter "hash"
    .parameter "bd"

    .prologue
    .line 556
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    .local v0, bit:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v1, copyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 559
    const/4 v3, 0x0

    .line 563
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 564
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    if-eqz v5, :cond_0

    .line 573
    :cond_0
    if-eqz v4, :cond_1

    .line 574
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 579
    :cond_1
    :goto_0
    sget-object v5, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v5, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v4           #out:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    return-void

    .line 569
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 570
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    if-eqz v3, :cond_3

    .line 574
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 579
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_3
    sget-object v5, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v5, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 575
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 576
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 571
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 573
    :goto_4
    if-eqz v3, :cond_4

    .line 574
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 579
    :cond_4
    :goto_5
    sget-object v6, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v6, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    throw v5

    .line 575
    :catch_2
    move-exception v2

    .line 576
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 575
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 576
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 571
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 569
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "url"
    .parameter "bd"

    .prologue
    .line 511
    if-eqz p2, :cond_0

    .line 512
    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 513
    :try_start_0
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    monitor-exit v1

    .line 516
    :cond_0
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addImageFileToCache(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "url"
    .parameter "file"

    .prologue
    .line 473
    if-eqz p2, :cond_0

    .line 474
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    monitor-exit v1

    .line 478
    :cond_0
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callDownloadImage(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 328
    .local v0, f:Ljava/io/File;
    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->downloadImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 330
    invoke-virtual {p0, p1, v0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->addImageFileToCache(Ljava/lang/String;Ljava/io/File;)V

    .line 332
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 587
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 589
    return-void
.end method

.method public download(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "imageView"
    .parameter "aPath"

    .prologue
    .line 128
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->resetPurgeTimer()V

    .line 129
    iput-object p3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mPath:Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    .line 133
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p1, p2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 137
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 141
    :cond_1
    sget v0, Lkr/co/medinbiz/R$drawable;->default_photo:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "thumbUrl"
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 146
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->resetPurgeTimer()V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getThumbDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    :cond_0
    if-eqz p2, :cond_2

    .line 152
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "thumb is null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p2, p3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "thumb is cached"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p2, p3}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 165
    :cond_2
    sget v0, Lkr/co/medinbiz/R$drawable;->default_photo:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method declared-synchronized getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .parameter "url"

    .prologue
    .line 355
    monitor-enter p0

    const/4 v5, 0x0

    .line 356
    .local v5, ret:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 357
    .local v2, f:Ljava/io/File;
    if-nez v2, :cond_3

    .line 358
    const-string v7, "check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " need to make cache file."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->downloadImage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 362
    invoke-virtual {p0, p1, v2}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->addImageFileToCache(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :goto_0
    if-eqz v2, :cond_1

    .line 368
    const/4 v3, 0x0

    .line 370
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 372
    :try_start_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v5           #ret:Landroid/graphics/drawable/BitmapDrawable;
    .local v6, ret:Landroid/graphics/drawable/BitmapDrawable;
    move-object v5, v6

    .line 378
    .end local v6           #ret:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #ret:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz v4, :cond_1

    .line 379
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 388
    .end local v4           #is:Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 389
    const/4 v2, 0x0

    .line 391
    :cond_2
    monitor-exit p0

    return-object v5

    .line 364
    :cond_3
    :try_start_4
    const-string v7, "check"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " is cached ? _ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 355
    .end local v2           #f:Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 374
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    if-eqz v3, :cond_1

    .line 379
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 381
    :catch_1
    move-exception v1

    .line 382
    .local v1, e2:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 376
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 378
    :goto_3
    if-eqz v3, :cond_4

    .line 379
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 384
    :cond_4
    :goto_4
    :try_start_9
    throw v7

    .line 381
    :catch_2
    move-exception v1

    .line 382
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 381
    .end local v1           #e2:Ljava/lang/Exception;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 382
    .restart local v1       #e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 376
    .end local v1           #e2:Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 374
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "hash"

    .prologue
    .line 526
    sget-object v3, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 527
    :try_start_0
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 528
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 531
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardBitmapDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    monitor-exit v3

    move-object v2, v0

    .line 552
    :goto_0
    return-object v2

    .line 526
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 539
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 540
    .local v1, bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v1, :cond_2

    .line 541
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 542
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0, p1, v0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->SaveFileFromChash(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    move-object v2, v0

    .line 545
    goto :goto_0

    .line 526
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 548
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_1
    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sSoftBitmapDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getThumbDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "url"

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, ret:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 337
    .local v0, f:Ljava/io/File;
    if-nez v0, :cond_2

    .line 338
    const-string v2, "check"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " need to make cache file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    if-eqz v0, :cond_0

    .line 345
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 346
    .end local v1           #ret:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    .restart local v1       #ret:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x0

    .line 351
    :cond_1
    return-object v1

    .line 341
    :cond_2
    const-string v2, "check"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is cached ? _ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getImageFileFromCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetHash()V
    .locals 3

    .prologue
    .line 592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 595
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "resetHash clear!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 596
    return-void

    .line 593
    :cond_0
    sget-object v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->instanceList:[Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    aget-object v1, v1, v0

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->sHardFileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMode(Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 410
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mode:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    .line 411
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->clearCache()V

    .line 412
    return-void
.end method
