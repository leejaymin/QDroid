.class public Lcom/scoreloop/client/android/ui/util/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_HARD_CACHE_CAPACITY:I = 0x64


# instance fields
.field private _hardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/scoreloop/client/android/ui/util/Cache",
            "<TK;TV;>.CacheEntry;>;"
        }
    .end annotation
.end field

.field private _hardCacheCapacity:I

.field private _minPurgeInterval:J

.field private _purgeHandler:Landroid/os/Handler;

.field private final _purger:Ljava/lang/Runnable;

.field private _softCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/scoreloop/client/android/ui/util/Cache",
            "<TK;TV;>.CacheEntry;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/ui/util/Cache;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "hardCacheCapacity"

    .prologue
    .line 64
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/scoreloop/client/android/ui/util/Cache$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/ui/util/Cache$1;-><init>(Lcom/scoreloop/client/android/ui/util/Cache;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purger:Ljava/lang/Runnable;

    .line 65
    iput p1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCacheCapacity:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purgeHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/Cache;->initHardCache()V

    .line 69
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/util/Cache;->initSoftCache()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/util/Cache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCacheCapacity:I

    return v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/util/Cache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private initHardCache()V
    .locals 4

    .prologue
    .line 73
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    new-instance v0, Lcom/scoreloop/client/android/ui/util/Cache$2;

    iget v1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCacheCapacity:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/util/Cache$2;-><init>(Lcom/scoreloop/client/android/ui/util/Cache;IFZ)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method private initSoftCache()V
    .locals 2

    .prologue
    .line 89
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCacheCapacity:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    return-void
.end method

.method private resetPurgeTimer(J)V
    .locals 4
    .parameter "purgeInterval"

    .prologue
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 109
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 110
    iget-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 111
    iput-wide p1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    iget-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_purger:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-wide v0, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    iput-wide p1, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/util/Cache;->getCacheEntry(Ljava/lang/Object;)Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    move-result-object v0

    .line 132
    .local v0, cacheEntry:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCacheEntry(Ljava/lang/Object;)Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/scoreloop/client/android/ui/util/Cache",
            "<TK;TV;>.CacheEntry;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, now:J
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 139
    :try_start_0
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    .line 140
    .local v0, e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->setLastAccess(J)V

    .line 143
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v5

    move-object v4, v0

    .line 164
    :goto_0
    return-object v4

    .line 147
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 151
    .local v1, eReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;>;"
    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    check-cast v0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    .line 153
    .restart local v0       #e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    if-eqz v0, :cond_1

    .line 154
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 155
    :try_start_1
    invoke-virtual {v0, v2, v3}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->setLastAccess(J)V

    .line 156
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 159
    goto :goto_0

    .line 147
    .end local v0           #e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    .end local v1           #eReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 157
    .restart local v0       #e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    .restart local v1       #eReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public purgeCache()V
    .locals 10

    .prologue
    .line 93
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 94
    .local v4, now:J
    new-instance v1, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 95
    .local v1, hardKeys:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 96
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, k:Ljava/lang/Object;,"TK;"
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    .line 98
    .local v0, e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->getTimeToLive()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->getLastAccess()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;->getTimeToLive()J

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 99
    iget-object v7, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 100
    :try_start_0
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_softCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 105
    .end local v0           #e:Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>.CacheEntry;"
    .end local v3           #k:Ljava/lang/Object;,"TK;"
    :cond_1
    iget-wide v6, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_minPurgeInterval:J

    invoke-direct {p0, v6, v7}, Lcom/scoreloop/client/android/ui/util/Cache;->resetPurgeTimer(J)V

    .line 106
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 9
    .parameter
    .parameter
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/scoreloop/client/android/ui/util/Cache;,"Lcom/scoreloop/client/android/ui/util/Cache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 124
    .local v3, now:J
    iget-object v7, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 125
    :try_start_0
    iget-object v8, p0, Lcom/scoreloop/client/android/ui/util/Cache;->_hardCache:Ljava/util/HashMap;

    new-instance v0, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;

    move-object v1, p0

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/scoreloop/client/android/ui/util/Cache$CacheEntry;-><init>(Lcom/scoreloop/client/android/ui/util/Cache;Ljava/lang/Object;JJ)V

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-direct {p0, p3, p4}, Lcom/scoreloop/client/android/ui/util/Cache;->resetPurgeTimer(J)V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
