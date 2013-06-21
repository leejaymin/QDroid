.class public Lkr/co/medinbiz/widget/ultra/util/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;,
        Lkr/co/medinbiz/widget/ultra/util/ImageCache$ImageCallback;
    }
.end annotation


# static fields
.field private static final CACHE_TIMEOUT:J = 0x7530L

.field private static _instance:Lkr/co/medinbiz/widget/ultra/util/ImageCache;


# instance fields
.field private _cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _lock:Ljava/lang/Object;

.field private bd:Landroid/graphics/drawable/BitmapDrawable;

.field private bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

.field private buffer:[B

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkr/co/medinbiz/widget/ultra/util/ImageCache$ImageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;

.field private downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

.field private f:Ljava/io/File;

.field private fo:Ljava/io/FileOutputStream;

.field private httpRequest:Lorg/apache/http/client/methods/HttpGet;

.field private is:Ljava/io/InputStream;

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/apache/http/HttpResponse;

.field private size:I

.field private statusCode:I

.field private task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_instance:Lkr/co/medinbiz/widget/ultra/util/ImageCache;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Android"

    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->client:Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;

    .line 33
    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->httpRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 35
    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->response:Lorg/apache/http/HttpResponse;

    .line 36
    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    .line 39
    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    .line 47
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->buffer:[B

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_lock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_callbacks:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method private bmdFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "url"

    .prologue
    .line 93
    const-string v3, "check"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cache size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, hash:Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, bmd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_lock:Ljava/lang/Object;

    monitor-enter v4

    .line 97
    :try_start_0
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    iput-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->ref:Ljava/lang/ref/WeakReference;

    .line 99
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 101
    if-nez v1, :cond_0

    .line 102
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    monitor-exit v4

    .line 106
    return-object v1

    .line 96
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getBitmapDrawableDownloaderTask(Landroid/widget/ImageView;)Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    .locals 3
    .parameter "imageView"

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 238
    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

    .line 239
    .local v0, downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;->getBitmapDownloaderTask()Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    move-result-object v2

    .line 242
    .end local v0           #downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;
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
    .line 74
    const/4 v3, 0x1

    .line 75
    .local v3, wantImgFile:Z
    if-eqz v3, :cond_0

    .line 76
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, lTmpUrl:[Ljava/lang/String;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object p1, v2, v4

    .line 86
    .end local v2           #lTmpUrl:[Ljava/lang/String;
    .end local p1
    :goto_0
    return-object p1

    .line 80
    .restart local p1
    :cond_0
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 81
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 82
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

    .line 83
    .end local v0           #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 86
    .local v1, ex:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lkr/co/medinbiz/widget/ultra/util/ImageCache;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lkr/co/medinbiz/widget/ultra/util/ImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_instance:Lkr/co/medinbiz/widget/ultra/util/ImageCache;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;

    invoke-direct {v0}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;-><init>()V

    sput-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_instance:Lkr/co/medinbiz/widget/ultra/util/ImageCache;

    .line 60
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_instance:Lkr/co/medinbiz/widget/ultra/util/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized loadSync(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .parameter "url"
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, hash:Ljava/lang/String;
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bmdFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bd:Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    .line 115
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 116
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 115
    const/4 v3, 0x1

    .line 118
    .local v3, timeout:Z
    :cond_0
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bd:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_6

    .line 119
    :cond_1
    if-eqz v3, :cond_2

    .line 120
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 122
    :cond_2
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->httpRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 124
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->client:Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->httpRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4, v5}, Lkr/co/medinbiz/widget/ultra/util/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->response:Lorg/apache/http/HttpResponse;

    .line 125
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->statusCode:I

    .line 126
    iget v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->statusCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    .line 127
    const-string v4, "ImageDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 128
    const-string v6, " while retrieving bitmap from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :try_start_1
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 156
    :try_start_2
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :cond_3
    :goto_0
    const/4 v4, 0x0

    .line 162
    .end local v2           #hash:Ljava/lang/String;
    .end local v3           #timeout:Z
    :goto_1
    monitor-exit p0

    return-object v4

    .line 157
    .restart local v2       #hash:Ljava/lang/String;
    .restart local v3       #timeout:Z
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hash:Ljava/lang/String;
    .end local v3           #timeout:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 132
    .restart local v2       #hash:Ljava/lang/String;
    .restart local v3       #timeout:Z
    :cond_4
    :try_start_4
    new-instance v4, Lorg/apache/http/entity/BufferedHttpEntity;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    .line 133
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-virtual {v4}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    .line 135
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->fo:Ljava/io/FileOutputStream;

    .line 137
    :goto_2
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->size:I

    if-gtz v4, :cond_8

    .line 140
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 141
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->fo:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 144
    :cond_5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->f:Ljava/io/File;

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bd:Landroid/graphics/drawable/BitmapDrawable;

    .line 146
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_lock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 147
    :try_start_5
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    :cond_6
    :try_start_6
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_7

    .line 156
    :try_start_7
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 162
    .end local v2           #hash:Ljava/lang/String;
    .end local v3           #timeout:Z
    :cond_7
    :goto_3
    :try_start_8
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->bd:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 138
    .restart local v2       #hash:Ljava/lang/String;
    .restart local v3       #timeout:Z
    :cond_8
    :try_start_9
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->fo:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->buffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->size:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 150
    .end local v2           #hash:Ljava/lang/String;
    .end local v3           #timeout:Z
    :catch_1
    move-exception v1

    .line 151
    .local v1, ex:Ljava/lang/Exception;
    :try_start_a
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->httpRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 154
    :try_start_b
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_7

    .line 156
    :try_start_c
    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_3

    .line 157
    :catch_2
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #hash:Ljava/lang/String;
    .restart local v3       #timeout:Z
    :catchall_1
    move-exception v4

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 153
    .end local v2           #hash:Ljava/lang/String;
    .end local v3           #timeout:Z
    :catchall_2
    move-exception v4

    .line 154
    :try_start_10
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v5, :cond_9

    .line 156
    :try_start_11
    iget-object v5, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->is:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 161
    :cond_9
    :goto_4
    :try_start_12
    throw v4

    .line 157
    :catch_3
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 157
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #hash:Ljava/lang/String;
    .restart local v3       #timeout:Z
    :catch_4
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .parameter "url"
    .parameter "bd"

    .prologue
    .line 166
    if-eqz p2, :cond_0

    .line 167
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v1

    .line 171
    :cond_0
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmapDdrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "url"

    .prologue
    .line 174
    const-string v0, "check"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getBitmapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "url"
    .parameter "ctx"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->loadSync(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->getBitmapDdrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 180
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public loadAsync(Ljava/lang/String;Lkr/co/medinbiz/widget/ultra/util/ImageCache$ImageCallback;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "url"
    .parameter "callback"
    .parameter "imageView"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, hash:Ljava/lang/String;
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_callbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    .line 204
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    monitor-exit v2

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    .line 211
    if-eqz p2, :cond_2

    .line 212
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->_callbacks:Ljava/util/HashMap;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->callbacks:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    new-instance v1, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    invoke-direct {v1, p3, p0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;-><init>(Landroid/widget/ImageView;Lkr/co/medinbiz/widget/ultra/util/ImageCache;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    .line 217
    new-instance v1, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;-><init>(Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

    .line 218
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->downloadedDrawable:Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const/16 v1, 0x9c

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 220
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache;->task:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
