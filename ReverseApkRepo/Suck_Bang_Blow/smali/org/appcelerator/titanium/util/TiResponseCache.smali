.class public Lorg/appcelerator/titanium/util/TiResponseCache;
.super Ljava/net/ResponseCache;
.source "TiResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheOutputStream;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;,
        Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;,
        Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BODY_SUFFIX:Ljava/lang/String; = ".bdy"

.field private static final CACHE_SIZE_KEY:Ljava/lang/String; = "ti.android.cache.size.max"

.field private static final CLEANUP_DELAY:I = 0xea60

.field private static final HEADER_SUFFIX:Ljava/lang/String; = ".hdr"

.field private static final INITIAL_DELAY:I = 0x2710

.field private static final LCAT:Ljava/lang/String; = "TiResponseCache"

.field private static final MAX_CACHE_SIZE:I = 0x1900000

.field private static final TAG:Ljava/lang/String; = "TiResponseCache"

.field private static cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static completeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/appcelerator/titanium/util/TiResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7
    .parameter "cachedir"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 223
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiResponseCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "cachedir MUST be a directory"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 224
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    .line 226
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 227
    new-instance v1, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    const-wide/32 v2, 0x1900000

    invoke-direct {v1, v0, v2, v3}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;-><init>(Ljava/io/File;J)V

    .line 228
    .local v1, command:Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheCleanup;
    sget-object v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cleanupExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 229
    return-void
.end method

.method static synthetic access$000(Ljava/net/URI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiResponseCache;->fireCacheCompleted(Ljava/net/URI;)V

    return-void
.end method

.method public static addCompleteListener(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;)V
    .locals 4
    .parameter "uri"
    .parameter "listener"

    .prologue
    .line 210
    sget-object v1, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, hash:Ljava/lang/String;
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    sget-object v2, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    .end local v0           #hash:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static final fireCacheCompleted(Ljava/net/URI;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 366
    sget-object v4, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 367
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, hash:Ljava/lang/String;
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;

    .line 370
    .local v2, listener:Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    invoke-interface {v2, p0}, Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;->cacheCompleted(Ljava/net/URI;)V

    goto :goto_0

    .line 374
    .end local v0           #hash:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lorg/appcelerator/titanium/util/TiResponseCache$CompleteListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 372
    .restart local v0       #hash:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v3, Lorg/appcelerator/titanium/util/TiResponseCache;->completeListeners:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    return-void
.end method

.method private makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, origHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 292
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static openCachedStream(Ljava/net/URI;)Ljava/io/InputStream;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 192
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 193
    .local v4, rc:Lorg/appcelerator/titanium/util/TiResponseCache;
    if-nez v4, :cond_0

    move-object v5, v8

    .line 204
    :goto_0
    return-object v5

    .line 194
    :cond_0
    iget-object v5, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v5, :cond_1

    move-object v5, v8

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, hash:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v5, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".hdr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    .local v2, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v5, v4, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bdy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v8

    goto :goto_0

    .line 201
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 203
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "TiResponseCache"

    const-string v6, "File not found"

    invoke-static {v5, v6, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v8

    .line 204
    goto :goto_0
.end method

.method public static peek(Ljava/net/URI;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-static {}, Lorg/appcelerator/titanium/util/TiResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/util/TiResponseCache;

    .line 180
    .local v3, rc:Lorg/appcelerator/titanium/util/TiResponseCache;
    if-nez v3, :cond_0

    move v4, v7

    .line 187
    :goto_0
    return v4

    .line 181
    :cond_0
    iget-object v4, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v4, :cond_1

    move v4, v7

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, hash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hdr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v1, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, v3, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".bdy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    goto :goto_0

    .line 187
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 12
    .parameter "uri"
    .parameter "rqstMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, rqstHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 235
    if-eqz p1, :cond_0

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    if-nez v7, :cond_1

    :cond_0
    move-object v7, v11

    .line 264
    .end local p0
    :goto_0
    return-object v7

    .line 238
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, hash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hdr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v1, hFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bdy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v0, bFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    move-object v7, v11

    .line 245
    goto :goto_0

    .line 249
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 251
    .local v6, rdr:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .end local p0
    .local v5, line:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_5

    .line 252
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, keyval:[Ljava/lang/String;
    aget-object v7, v4, v10

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 254
    aget-object v7, v4, v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4
    aget-object v7, v4, v10

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 258
    .end local v4           #keyval:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/io/File;->setLastModified(J)Z

    .line 264
    new-instance v7, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v3, v8}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheResponse;-><init>(Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method protected getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 270
    .local v0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    const/4 v1, 0x0

    .line 273
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method protected getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter "header"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p3

    .line 285
    :goto_0
    return v2

    .line 283
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p3

    .line 285
    goto :goto_0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 22
    .parameter "uri"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 360
    :goto_0
    return-object v4

    .line 305
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiResponseCache;->makeLowerCaseHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    .line 306
    .local v14, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v4, "cache-control"

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 307
    .local v10, cacheControl:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v4, "^.*(no-cache|no-store|must-revalidate).*"

    invoke-virtual {v10, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    const/4 v4, 0x0

    goto :goto_0

    .line 311
    :cond_1
    const/16 v19, 0x0

    .line 312
    .local v19, skipTransferEncodingHeader:Z
    const-string v4, "transfer-encoding"

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 313
    .local v20, tEncoding:Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chunked"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    const/16 v19, 0x1

    .line 318
    :cond_2
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, newl:Ljava/lang/String;
    const-string v4, "content-length"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiResponseCache;->getHeaderInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    int-to-long v8, v4

    .line 320
    .local v8, contentLength:J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v18, sb:Ljava/lang/StringBuilder;
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 322
    .local v13, hdr:Ljava/lang/String;
    if-eqz v19, :cond_4

    const-string v4, "transfer-encoding"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 323
    :cond_4
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 324
    .local v21, val:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v4, "="

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    .end local v13           #hdr:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #val:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v8

    const-wide/32 v6, 0x1900000

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 332
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 337
    :cond_6
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 341
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 344
    .local v12, hash:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hdr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v7, hFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiResponseCache;->cacheDir:Ljava/io/File;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".bdy"

    .end local v10           #cacheControl:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v6, bFile:Ljava/io/File;
    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 350
    .local v11, hWriter:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    .line 355
    monitor-enter p0

    .line 357
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_7

    .line 358
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 361
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 352
    :catchall_1
    move-exception v4

    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    throw v4

    .line 360
    :cond_7
    :try_start_3
    new-instance v4, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/util/TiResponseCache$TiCacheRequest;-><init>(Ljava/net/URI;Ljava/io/File;Ljava/io/File;J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 338
    .end local v6           #bFile:Ljava/io/File;
    .end local v7           #hFile:Ljava/io/File;
    .end local v11           #hWriter:Ljava/io/FileWriter;
    .end local v12           #hash:Ljava/lang/String;
    .restart local v10       #cacheControl:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method
