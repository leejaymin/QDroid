.class public Lcom/scoreloop/client/android/ui/util/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;,
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;,
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;,
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$FlushedInputStream;,
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;
    }
.end annotation


# static fields
.field private static final HARD_CACHE_CAPACITY:I = 0x96

.field private static final MIN_10:I = 0x927c0

.field private static _cache:Lcom/scoreloop/client/android/ui/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/ui/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static imageDownloader:Lcom/scoreloop/client/android/ui/util/ImageDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->imageDownloader:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    .line 52
    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->_cache:Lcom/scoreloop/client/android/ui/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/util/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    return-object v0
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 1
    .parameter "url"
    .parameter "bitmap"
    .parameter "timeToLive"

    .prologue
    .line 338
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->_cache:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/ui/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 339
    return-void
.end method

.method private static assertCache()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->_cache:Lcom/scoreloop/client/android/ui/util/Cache;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/scoreloop/client/android/ui/util/Cache;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/ui/util/Cache;-><init>(I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->_cache:Lcom/scoreloop/client/android/ui/util/Cache;

    .line 69
    :cond_0
    return-void
.end method

.method private static assertImageDownloader()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->imageDownloader:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->imageDownloader:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    .line 63
    :cond_0
    return-void
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .parameter "url"
    .parameter "imageView"

    .prologue
    const/4 v2, 0x1

    .line 141
    invoke-static {p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 143
    .local v0, bitmapDownloaderTask:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    if-eqz v0, :cond_1

    .line 144
    #getter for: Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->access$000(Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, bitmapUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    :cond_0
    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->cancel(Z)Z

    .line 152
    .end local v1           #bitmapUrl:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 149
    .restart local v1       #bitmapUrl:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "url"
    .parameter "loadingDrawable"
    .parameter "imageView"
    .parameter "errorDrawable"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;)V

    .line 84
    return-void
.end method

.method public static downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;)V
    .locals 10
    .parameter "url"
    .parameter "loadingDrawable"
    .parameter "imageView"
    .parameter "errorDrawable"
    .parameter "imageDownloaderCallback"

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->assertImageDownloader()V

    .line 103
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->assertCache()V

    .line 104
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->_cache:Lcom/scoreloop/client/android/ui/util/Cache;

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/ui/util/Cache;->getCacheEntry(Ljava/lang/Object;)Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    move-result-object v9

    .line 105
    .local v9, cacheEntry:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<Ljava/lang/String;Landroid/graphics/Bitmap;>.CacheEntry;"
    if-nez v9, :cond_1

    .line 106
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->imageDownloader:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    const-wide/32 v6, 0x927c0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->forceDownload(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;J)V

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {p0, p2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 109
    invoke-virtual {v9}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 110
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_2

    if-eqz p3, :cond_2

    .line 111
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private forceDownload(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;J)V
    .locals 8
    .parameter "url"
    .parameter "drawable"
    .parameter "imageView"
    .parameter "errorDrawable"
    .parameter "imageDownloaderCallback"
    .parameter "timeToLive"

    .prologue
    .line 124
    invoke-static {p1, p3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;-><init>(Lcom/scoreloop/client/android/ui/util/ImageDownloader;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;J)V

    .line 126
    .local v0, task:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    if-eqz p2, :cond_0

    .line 127
    new-instance v7, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;

    invoke-direct {v7, p2, v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;)V

    .line 128
    .local v7, downloadedDrawable:Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .end local v7           #downloadedDrawable:Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    .end local v0           #task:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    :cond_1
    return-void
.end method

.method private static getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 161
    if-eqz p0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 164
    check-cast v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;

    .line 165
    .local v0, downloadedDrawable:Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;->getBitmapDownloaderTask()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    move-result-object v2

    .line 168
    .end local v0           #downloadedDrawable:Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method downloadBitmap(Landroid/content/Context;Ljava/lang/String;J)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "timeToLive"

    .prologue
    .line 219
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->get()Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->getBitmap(Landroid/content/Context;Ljava/lang/String;J)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v0

    .line 220
    .local v0, bitmapResult:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadBitmapHttp(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->isCachable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->get()Lcom/scoreloop/client/android/ui/util/LocalImageStorage;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/scoreloop/client/android/ui/util/LocalImageStorage;->putBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;)Z

    .line 226
    :cond_0
    return-object v0
.end method

.method downloadBitmapHttp(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 9
    .parameter "url"

    .prologue
    .line 175
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 176
    .local v0, client:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, getRequest:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 180
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 182
    .local v6, statusCode:I
    const/16 v7, 0x194

    if-ne v6, v7, :cond_0

    .line 183
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->createNotFound()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v7

    .line 215
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :goto_0
    return-object v7

    .line 184
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :cond_0
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_1

    .line 185
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->createError()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v7

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 189
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_3

    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 195
    new-instance v7, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    new-instance v8, Lcom/scoreloop/client/android/ui/util/ImageDownloader$FlushedInputStream;

    invoke-direct {v8, v4}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    if-eqz v4, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 203
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->createError()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v7

    goto :goto_0

    .line 197
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #statusCode:I
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_4

    .line 198
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #statusCode:I
    :catch_1
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    .line 207
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1
.end method
